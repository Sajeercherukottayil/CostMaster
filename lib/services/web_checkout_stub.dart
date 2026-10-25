/// What Razorpay Checkout returns after a successful payment.
typedef CheckoutResult = ({String orderId, String paymentId, String signature});

/// Only available on the web; see web_checkout_web.dart.
Future<CheckoutResult> openWebCheckout(Map<String, Object?> options) =>
    throw UnsupportedError('Web checkout is only available on the web.');
