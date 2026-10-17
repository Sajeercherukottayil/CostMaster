// POST /api/razorpay-webhook, called by Razorpay, not the app.
// Set it in Razorpay Dashboard > Webhooks with events order.paid and
// payment.captured. Grants Premium even if the app closed before it could
// call /api/verify-payment.
const {isValidWebhookSignature, orderIdFromWebhook} = require('../lib/payments');
const {order, grantPremium} = require('../lib/firebase');
const {fail, rawBody} = require('../lib/http');

module.exports = async (req, res) => {
  if (req.method !== 'POST') return fail(res, 405, 'Method not allowed.');

  // Read the raw body ourselves: the signature covers the exact bytes sent.
  const body = await rawBody(req);
  const signature = req.headers['x-razorpay-signature'];
  if (!isValidWebhookSignature(
      body, signature, process.env.RAZORPAY_WEBHOOK_SECRET)) {
    console.warn('Bad webhook signature');
    return fail(res, 400, 'Invalid signature.');
  }

  let event;
  try {
    event = JSON.parse(body.toString('utf8'));
  } catch (e) {
    return fail(res, 400, 'Invalid JSON.');
  }

  try {
    if (event.event === 'order.paid' || event.event === 'payment.captured') {
      const orderId = orderIdFromWebhook(event);
      const payment = event.payload && event.payload.payment;
      const paymentId = payment && payment.entity && payment.entity.id;
      const snap = orderId ? await order(orderId).get() : null;
      if (snap && snap.exists) {
        await grantPremium(orderId, paymentId, 'webhook');
      } else {
        // Not a Premium order made by the app, e.g. a razorpay.me payment.
        console.info('Webhook for unknown order', orderId);
      }
    }
    res.status(200).json({ok: true});
  } catch (e) {
    console.error('webhook failed', e);
    // A non-2xx makes Razorpay retry later.
    fail(res, 500, 'Webhook failed.');
  }
};
