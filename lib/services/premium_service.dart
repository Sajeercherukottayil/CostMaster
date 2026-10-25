import 'dart:async';
import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;
import 'package:razorpay_flutter/razorpay_flutter.dart';

/// The ways to buy Premium, each a one-time payment that unlocks every mock
/// test. Keep in step with PLANS in server/lib/payments.js, which is what is
/// charged.
enum PremiumPlan {
  pass15(id: 'pass15', rupees: 49, days: 15, title: '15-day pass'),
  lifetime(id: 'lifetime', rupees: 149, days: null, title: 'Lifetime');

  /// The plan id the payment server knows it by.
  final String id;
  final int rupees;

  /// How long it lasts, or null for lifetime.
  final int? days;
  final String title;

  const PremiumPlan({
    required this.id,
    required this.rupees,
    required this.days,
    required this.title,
  });
}

/// What entitlements/{uid} says about an account's Premium.
class PremiumStatus {
  final bool premium;

  /// When a 15-day pass ends; null for lifetime.
  final DateTime? expiresAt;

  const PremiumStatus({required this.premium, this.expiresAt});

  static const none = PremiumStatus(premium: false);

  bool get isLifetime => premium && expiresAt == null;

  bool activeAt(DateTime now) =>
      premium && (expiresAt == null || now.isBefore(expiresAt!));

  @override
  bool operator ==(Object other) =>
      other is PremiumStatus &&
      other.premium == premium &&
      other.expiresAt == expiresAt;

  @override
  int get hashCode => Object.hash(premium, expiresAt);
}

class PremiumException implements Exception {
  final String message;

  const PremiumException(this.message);

  @override
  String toString() => message;
}

/// Whether an account has CostMaster Premium, and buying it.
abstract class PremiumService {
  /// Emits the premium status of [uid], and again whenever it changes.
  Stream<PremiumStatus> watch(String uid);

  /// False where payments are not offered, e.g. the website for now.
  bool get canBuyHere;

  /// Takes the payment for [plan] and waits until the server has granted it.
  /// Throws [PremiumException] with a message for the student on failure.
  Future<void> buy({
    required PremiumPlan plan,
    required String email,
    required String name,
  });
}

/// Where the payment server (server/ in this repo, hosted on Vercel) runs.
const premiumApiBase = 'https://costmaster-pay.vercel.app/api';

/// Razorpay Checkout for the payment. The payment server creates the order
/// and verifies it, and records premium in Firestore at entitlements/{uid}.
class FirebasePremiumService implements PremiumService {
  @override
  bool get canBuyHere =>
      !kIsWeb && defaultTargetPlatform == TargetPlatform.android;

  @override
  Stream<PremiumStatus> watch(String uid) =>
      FirebaseFirestore.instance.doc('entitlements/$uid').snapshots().map((s) {
        final data = s.data();
        if (data == null) return PremiumStatus.none;
        return PremiumStatus(
          premium: data['premium'] == true,
          expiresAt: (data['expiresAt'] as Timestamp?)?.toDate(),
        );
      });

  @override
  Future<void> buy({
    required PremiumPlan plan,
    required String email,
    required String name,
  }) async {
    final order = await _post('create-order', {'plan': plan.id});
    final paid = await _checkout(order, plan, email: email, name: name);
    try {
      await _post('verify-payment', {
        'orderId': paid.orderId,
        'paymentId': paid.paymentId,
        'signature': paid.signature,
      });
    } on PremiumException catch (e) {
      // The webhook may still grant premium a little later.
      throw PremiumException(
        'Payment received, but we could not confirm it yet. If Premium does '
        'not unlock in a few minutes, contact us with payment id '
        '${paid.paymentId}. (${e.message})',
      );
    }
  }

  /// Calls the payment server as the signed-in student.
  Future<Map<String, dynamic>> _post(
    String path,
    Map<String, dynamic> body,
  ) async {
    final user = FirebaseAuth.instance.currentUser;
    if (user == null) {
      throw const PremiumException('Please log in again and retry.');
    }
    final http.Response response;
    try {
      final token = await user.getIdToken();
      response = await http
          .post(
            Uri.parse('$premiumApiBase/$path'),
            headers: {
              'Authorization': 'Bearer $token',
              'Content-Type': 'application/json',
            },
            body: jsonEncode(body),
          )
          .timeout(const Duration(seconds: 30));
    } on Exception {
      throw const PremiumException('No internet connection. Please try again.');
    }
    Map<String, dynamic> data;
    try {
      data = Map<String, dynamic>.from(jsonDecode(response.body) as Map);
    } on Object {
      data = const {};
    }
    if (response.statusCode != 200) {
      throw PremiumException(
        data['error'] as String? ??
            'Could not reach the payment server. Please try again later.',
      );
    }
    return data;
  }

  Future<PaymentSuccessResponse> _checkout(
    Map<String, dynamic> order,
    PremiumPlan plan, {
    required String email,
    required String name,
  }) {
    final done = Completer<PaymentSuccessResponse>();
    final razorpay = Razorpay();
    razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, (PaymentSuccessResponse r) {
      if (!done.isCompleted) done.complete(r);
    });
    razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, (PaymentFailureResponse r) {
      if (done.isCompleted) return;
      done.completeError(
        PremiumException(
          r.code == Razorpay.PAYMENT_CANCELLED
              ? 'Payment cancelled.'
              : r.code == Razorpay.NETWORK_ERROR
              ? 'No internet connection. Please try again.'
              : 'Payment failed. ${r.message ?? ''}'.trim(),
        ),
      );
    });
    razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, (ExternalWalletResponse r) {
      if (!done.isCompleted) {
        done.completeError(
          const PremiumException(
            'That wallet is not supported. Please pay by UPI or card.',
          ),
        );
      }
    });
    razorpay.open({
      'key': order['keyId'],
      'order_id': order['orderId'],
      'amount': order['amountPaise'],
      'currency': order['currency'],
      'name': 'CostMaster',
      'description': plan.days == null
          ? 'Premium – all mock tests, lifetime'
          : 'Premium – all mock tests, ${plan.days} days',
      'prefill': {'email': email, 'name': name},
      'theme': {'color': '#1E40AF'},
    });
    return done.future.whenComplete(razorpay.clear);
  }
}

/// The signed-in account's premium status, for the widgets.
class PremiumState extends ChangeNotifier {
  final PremiumService service;

  /// The current time; replaced in tests.
  final DateTime Function() _now;
  StreamSubscription<PremiumStatus>? _sub;
  Timer? _expiry;
  String? _uid;
  PremiumStatus _status = PremiumStatus.none;

  PremiumState(this.service, {DateTime Function()? now})
    : _now = now ?? DateTime.now;

  PremiumStatus get status => _status;

  /// Whether Premium is active now. A 15-day pass stops being active when
  /// it ends, even if the app stays open.
  bool get isActive => _status.activeAt(_now());

  /// Follows the premium status of [uid], or none when signed out.
  void bind(String? uid) {
    if (uid == _uid) return;
    _uid = uid;
    _sub?.cancel();
    _sub = null;
    _set(PremiumStatus.none);
    if (uid != null) {
      _sub = service
          .watch(uid)
          .listen(
            _set,
            onError: (Object e) {
              debugPrint('Premium status unavailable: $e');
            },
          );
    }
  }

  void _set(PremiumStatus value) {
    _expiry?.cancel();
    _expiry = null;
    final ends = value.expiresAt;
    if (value.premium && ends != null) {
      final left = ends.difference(_now());
      if (left > Duration.zero) _expiry = Timer(left, notifyListeners);
    }
    if (value == _status) return;
    _status = value;
    notifyListeners();
  }

  @override
  void dispose() {
    _sub?.cancel();
    _expiry?.cancel();
    super.dispose();
  }
}

class PremiumScope extends InheritedNotifier<PremiumState> {
  const PremiumScope({
    super.key,
    required PremiumState state,
    required super.child,
  }) : super(notifier: state);

  /// Reads premium status and rebuilds [context] when it changes.
  static PremiumState of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<PremiumScope>()!.notifier!;

  /// Reads premium status without listening, for use in callbacks.
  static PremiumState read(BuildContext context) =>
      context.getInheritedWidgetOfExactType<PremiumScope>()!.notifier!;
}
