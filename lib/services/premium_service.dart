import 'dart:async';
import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;
import 'package:razorpay_flutter/razorpay_flutter.dart';

/// One payment unlocks every mock test, for life. Keep in step with
/// PREMIUM.amountPaise in server/lib/payments.js, which is what is charged.
const premiumPriceRupees = 299;

class PremiumException implements Exception {
  final String message;

  const PremiumException(this.message);

  @override
  String toString() => message;
}

/// Whether an account has CostMaster Premium, and buying it.
abstract class PremiumService {
  /// Emits whether [uid] has premium, and again whenever that changes.
  Stream<bool> watch(String uid);

  /// False where payments are not offered, e.g. the website for now.
  bool get canBuyHere;

  /// Takes the payment and waits until the server has granted premium.
  /// Throws [PremiumException] with a message for the student on failure.
  Future<void> buy({required String email, required String name});
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
  Stream<bool> watch(String uid) => FirebaseFirestore.instance
      .doc('entitlements/$uid')
      .snapshots()
      .map((s) => s.data()?['premium'] == true);

  @override
  Future<void> buy({required String email, required String name}) async {
    final order = await _post('create-order', const {});
    final paid = await _checkout(order, email: email, name: name);
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
    Map<String, dynamic> order, {
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
      'description': 'Premium – all mock tests, lifetime',
      'prefill': {'email': email, 'name': name},
      'theme': {'color': '#1E40AF'},
    });
    return done.future.whenComplete(razorpay.clear);
  }
}

/// The signed-in account's premium status, for the widgets.
class PremiumState extends ChangeNotifier {
  final PremiumService service;
  StreamSubscription<bool>? _sub;
  String? _uid;
  bool _active = false;

  PremiumState(this.service);

  bool get isActive => _active;

  /// Follows the premium status of [uid], or none when signed out.
  void bind(String? uid) {
    if (uid == _uid) return;
    _uid = uid;
    _sub?.cancel();
    _sub = null;
    _set(false);
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

  void _set(bool value) {
    if (value == _active) return;
    _active = value;
    notifyListeners();
  }

  @override
  void dispose() {
    _sub?.cancel();
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
