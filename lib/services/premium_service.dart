import 'dart:async';
import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;
import 'package:in_app_purchase/in_app_purchase.dart';

import 'web_checkout.dart';

/// The ways to buy Premium, each a one-time payment that unlocks every mock
/// test. Keep in step with PLANS in server/lib/payments.js, which is what the
/// website charges; Android prices are set in the Play Console.
enum PremiumPlan {
  pass15(
    id: 'pass15',
    productId: 'premium_15_days',
    rupees: 49,
    days: 15,
    title: '15-day pass',
  ),
  lifetime(
    id: 'lifetime',
    productId: 'premium_lifetime',
    rupees: 149,
    days: null,
    title: 'Lifetime',
  );

  /// The plan id the payment server knows it by.
  final String id;

  /// The product id in the Play Console.
  final String productId;

  /// The website price.
  final int rupees;

  /// How long it lasts, or null for lifetime.
  final int? days;
  final String title;

  const PremiumPlan({
    required this.id,
    required this.productId,
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

  /// False where payments are not offered, e.g. Windows.
  bool get canBuyHere;

  /// Who takes the payment, for "Secure payment by ...".
  String get paidThrough;

  /// The price shown for each plan, e.g. "₹49". Plans missing from the map
  /// show their website price.
  Future<Map<PremiumPlan, String>> prices();

  /// Takes the payment for [plan] and waits until the server has granted it.
  /// Throws [PremiumException] with a message for the student on failure.
  Future<void> buy({
    required PremiumPlan plan,
    required String email,
    required String name,
  });

  /// Removes the signed-in account's Premium, before the account is deleted.
  /// Throws [PremiumException] with a message for the student on failure.
  Future<void> deleteAccountData();
}

/// Where the payment server (server/ in this repo, hosted on Vercel) runs.
const premiumApiBase = 'https://costmaster-pay.vercel.app/api';

/// Google Play Billing in the Android app, and Razorpay Checkout on the
/// website. Either way the payment server checks the payment and records
/// premium in Firestore at entitlements/{uid}.
class FirebasePremiumService implements PremiumService {
  static bool get _onAndroid =>
      !kIsWeb && defaultTargetPlatform == TargetPlatform.android;

  @override
  bool get canBuyHere => kIsWeb || _onAndroid;

  @override
  String get paidThrough => _onAndroid ? 'Google Play' : 'Razorpay';

  @override
  Stream<PremiumStatus> watch(String uid) {
    if (_onAndroid) _listenToPlay();
    return FirebaseFirestore.instance.doc('entitlements/$uid').snapshots().map((
      s,
    ) {
      final data = s.data();
      if (data == null) return PremiumStatus.none;
      return PremiumStatus(
        premium: data['premium'] == true,
        expiresAt: (data['expiresAt'] as Timestamp?)?.toDate(),
      );
    });
  }

  @override
  Future<Map<PremiumPlan, String>> prices() async {
    if (!_onAndroid) {
      return {for (final plan in PremiumPlan.values) plan: '₹${plan.rupees}'};
    }
    try {
      return {
        for (final MapEntry(:key, :value) in (await _products()).entries)
          key: value.price,
      };
    } on Exception catch (e) {
      debugPrint('Play prices unavailable: $e');
      return const {};
    }
  }

  @override
  Future<void> buy({
    required PremiumPlan plan,
    required String email,
    required String name,
  }) async {
    if (_onAndroid) return _buyOnPlay(plan);

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

  @override
  Future<void> deleteAccountData() async {
    await _post('delete-account', const {});
  }

  // Google Play

  StreamSubscription<List<PurchaseDetails>>? _purchases;
  Map<PremiumPlan, ProductDetails>? _productCache;

  /// The [buy] waiting for each product id's purchase to finish.
  final _waiting = <String, Completer<void>>{};

  /// Follows Google Play's purchases from the first [watch] on, and asks for
  /// any not yet confirmed (e.g. a UPI payment that finished while the app
  /// was closed), so each one reaches the server.
  void _listenToPlay() {
    if (_purchases != null) return;
    final store = InAppPurchase.instance;
    _purchases = store.purchaseStream.listen((list) {
      for (final purchase in list) {
        unawaited(_onPurchase(purchase));
      }
    }, onError: (Object e) => debugPrint('Play purchases unavailable: $e'));
    store.restorePurchases().catchError((Object e) {
      debugPrint('Could not check past Play purchases: $e');
    });
  }

  Future<void> _onPurchase(PurchaseDetails purchase) async {
    final waiting = _waiting.remove(purchase.productID);
    switch (purchase.status) {
      case PurchaseStatus.pending:
        waiting?.completeError(
          const PremiumException(
            'Your payment is pending. Premium unlocks as soon as it '
            'completes.',
          ),
        );
      case PurchaseStatus.canceled:
        waiting?.completeError(const PremiumException('Payment cancelled.'));
      case PurchaseStatus.error:
        waiting?.completeError(
          PremiumException(
            'Payment failed. ${purchase.error?.message ?? ''}'.trim(),
          ),
        );
      case PurchaseStatus.purchased || PurchaseStatus.restored:
        // Restored purchases the server already finished need nothing.
        if (purchase.status == PurchaseStatus.restored &&
            !purchase.pendingCompletePurchase) {
          waiting?.complete();
          return;
        }
        try {
          // The server consumes or acknowledges it once Premium is granted.
          await _post('verify-google-purchase', {
            'productId': purchase.productID,
            'purchaseToken': purchase.verificationData.serverVerificationData,
          });
          waiting?.complete();
        } on PremiumException catch (e) {
          waiting?.completeError(
            PremiumException(
              'Payment received, but we could not confirm it yet. We will '
              'try again when you next open the app. (${e.message})',
            ),
          );
        }
    }
  }

  Future<Map<PremiumPlan, ProductDetails>> _products() async {
    if (_productCache case final cached?) return cached;
    final store = InAppPurchase.instance;
    if (!await store.isAvailable()) return const {};
    final response = await store.queryProductDetails({
      for (final plan in PremiumPlan.values) plan.productId,
    });
    final found = {
      for (final plan in PremiumPlan.values)
        for (final details in response.productDetails)
          if (details.id == plan.productId) plan: details,
    };
    if (found.length == PremiumPlan.values.length) _productCache = found;
    return found;
  }

  Future<void> _buyOnPlay(PremiumPlan plan) async {
    final user = FirebaseAuth.instance.currentUser;
    if (user == null) {
      throw const PremiumException('Please log in again and retry.');
    }
    final store = InAppPurchase.instance;
    final Map<PremiumPlan, ProductDetails> products;
    try {
      products = await _products();
    } on Exception {
      throw const PremiumException('No internet connection. Please try again.');
    }
    final product = products[plan];
    if (product == null) {
      throw const PremiumException(
        'Google Play payments are not available. Please install CostMaster '
        'from the Play Store and try again.',
      );
    }
    _listenToPlay();
    final done = Completer<void>();
    _waiting[product.id] = done;
    bool started;
    try {
      // Both plans are bought as non-consumable so Google doesn't use up a
      // pass before the server has granted it; the server consumes it. The
      // uid lets the server check the purchase is this account's.
      started = await store.buyNonConsumable(
        purchaseParam: PurchaseParam(
          productDetails: product,
          applicationUserName: user.uid,
        ),
      );
    } on Exception catch (e) {
      debugPrint('Play purchase failed to start: $e');
      started = false;
    }
    if (!started) {
      _waiting.remove(product.id);
      // E.g. an earlier purchase of this plan was never confirmed.
      unawaited(store.restorePurchases().catchError((Object _) {}));
      throw const PremiumException(
        'Could not start the payment. If you already paid, Premium unlocks '
        'in a moment.',
      );
    }
    return done.future;
  }

  // Razorpay on the website, and the payment server

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

  Future<CheckoutResult> _checkout(
    Map<String, dynamic> order,
    PremiumPlan plan, {
    required String email,
    required String name,
  }) {
    final options = <String, Object?>{
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
    };
    return openWebCheckout(options);
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
