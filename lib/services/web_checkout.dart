// Razorpay Checkout on the website, where razorpay_flutter does not work.
// The real implementation needs dart:js_interop, so other platforms get a
// stub that is never called (FirebasePremiumService uses razorpay_flutter
// there).
export 'web_checkout_stub.dart'
    if (dart.library.js_interop) 'web_checkout_web.dart';
