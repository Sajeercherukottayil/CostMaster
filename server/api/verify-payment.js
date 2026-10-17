// POST /api/verify-payment  (Authorization: Bearer <Firebase ID token>)
// Body: {orderId, paymentId, signature} as returned by Razorpay Checkout.
// Checks Razorpay's signature, then gives the student Premium.
const {isValidPaymentSignature} = require('../lib/payments');
const {order, uidFrom, grantPremium} = require('../lib/firebase');
const {cors, fail} = require('../lib/http');

module.exports = async (req, res) => {
  if (cors(req, res)) return;
  if (req.method !== 'POST') return fail(res, 405, 'Method not allowed.');

  const uid = await uidFrom(req);
  if (!uid) return fail(res, 401, 'Please log in again and retry.');

  const {orderId, paymentId, signature} = req.body || {};
  const valid = isValidPaymentSignature(
      {orderId, paymentId, signature}, process.env.RAZORPAY_KEY_SECRET);
  if (!valid) {
    console.warn('Bad payment signature', {uid, orderId, paymentId});
    return fail(res, 403, 'The payment could not be verified.');
  }

  try {
    const snap = await order(orderId).get();
    if (!snap.exists || snap.data().uid !== uid) {
      return fail(res, 403, 'This payment belongs to another account.');
    }
    await grantPremium(orderId, paymentId, 'checkout');
    res.status(200).json({premium: true});
  } catch (e) {
    console.error('verify-payment failed', e);
    fail(res, 500, 'Could not confirm the payment. Please try again.');
  }
};
