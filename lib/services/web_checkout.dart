// Razorpay Checkout on the website; the Android app uses Google Play Billing.
// The real implementation needs dart:js_interop, so other platforms get a
// stub that is never called.
export 'web_checkout_stub.dart'
    if (dart.library.js_interop) 'web_checkout_web.dart';
