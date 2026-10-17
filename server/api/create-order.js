// POST /api/create-order  (Authorization: Bearer <Firebase ID token>)
// Creates a Razorpay order for Premium, owned by the signed-in student.
const Razorpay = require('razorpay');

const {PREMIUM, receiptFor} = require('../lib/payments');
const {entitlement, order, uidFrom, FieldValue} = require('../lib/firebase');
const {cors, fail} = require('../lib/http');

module.exports = async (req, res) => {
  if (cors(req, res)) return;
  if (req.method !== 'POST') return fail(res, 405, 'Method not allowed.');

  const uid = await uidFrom(req);
  if (!uid) return fail(res, 401, 'Please log in again and retry.');

  try {
    const current = await entitlement(uid).get();
    if (current.exists && current.data().premium === true) {
      return fail(res, 409, 'Premium is already active on this account.');
    }

    const razorpay = new Razorpay({
      key_id: process.env.RAZORPAY_KEY_ID,
      key_secret: process.env.RAZORPAY_KEY_SECRET,
    });
    const created = await razorpay.orders.create({
      amount: PREMIUM.amountPaise,
      currency: PREMIUM.currency,
      receipt: receiptFor(uid),
      notes: {uid, product: PREMIUM.product},
    });
    await order(created.id).set({
      uid,
      product: PREMIUM.product,
      amountPaise: created.amount,
      currency: created.currency,
      status: 'created',
      createdAt: FieldValue.serverTimestamp(),
    });

    res.status(200).json({
      orderId: created.id,
      amountPaise: created.amount,
      currency: created.currency,
      keyId: process.env.RAZORPAY_KEY_ID,
    });
  } catch (e) {
    console.error('create-order failed', e);
    fail(res, 500, 'Could not start the payment. Please try again later.');
  }
};
