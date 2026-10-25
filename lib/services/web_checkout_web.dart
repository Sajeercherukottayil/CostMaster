import 'dart:async';
import 'dart:js_interop';
import 'dart:js_interop_unsafe';

import 'premium_service.dart' show PremiumException;

/// What Razorpay Checkout returns after a successful payment.
typedef CheckoutResult = ({String orderId, String paymentId, String signature});

/// Razorpay's checkout.js, loaded by web/index.html.
@JS('Razorpay')
extension type _Razorpay._(JSObject _) implements JSObject {
  external _Razorpay(JSObject options);
  external void open();
  external void on(String event, JSFunction handler);
}

String _string(JSObject object, String key) =>
    (object.getProperty<JSAny?>(key.toJS) as JSString?)?.toDart ?? '';

/// Opens Razorpay Checkout with [options] (as for razorpay_flutter) and
/// completes with the signed result, or a [PremiumException] if the student
/// closes it without paying.
Future<CheckoutResult> openWebCheckout(Map<String, Object?> options) {
  if (!globalContext.has('Razorpay')) {
    return Future.error(
      const PremiumException(
        'Could not load the payment page. Check your connection and reload.',
      ),
    );
  }
  final done = Completer<CheckoutResult>();
  // Checkout stays open after a failed attempt so the student can retry;
  // the reason is shown if they then close it.
  String? failure;

  final jsOptions = options.jsify()! as JSObject;
  jsOptions.setProperty(
    'handler'.toJS,
    ((JSObject r) {
      if (done.isCompleted) return;
      done.complete((
        orderId: _string(r, 'razorpay_order_id'),
        paymentId: _string(r, 'razorpay_payment_id'),
        signature: _string(r, 'razorpay_signature'),
      ));
    }).toJS,
  );
  final modal = JSObject()
    ..setProperty(
      'ondismiss'.toJS,
      (() {
        if (done.isCompleted) return;
        done.completeError(
          PremiumException(
            failure == null ? 'Payment cancelled.' : 'Payment failed. $failure',
          ),
        );
      }).toJS,
    );
  jsOptions.setProperty('modal'.toJS, modal);

  final razorpay = _Razorpay(jsOptions);
  razorpay.on(
    'payment.failed',
    ((JSObject r) {
      final error = r.getProperty<JSAny?>('error'.toJS) as JSObject?;
      final reason = error == null ? '' : _string(error, 'description');
      failure = reason.isEmpty ? null : reason;
    }).toJS,
  );
  razorpay.open();
  return done.future;
}
