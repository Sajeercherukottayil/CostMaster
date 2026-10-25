// POST /api/create-order  (Authorization: Bearer <Firebase ID token>)
// Body: {plan: 'pass15' | 'lifetime'}.
// Creates a Razorpay order for that Premium plan, owned by the signed-in
// student.
const Razorpay = require('razorpay');

const {planFor, isLifetime, receiptFor} = require('../lib/payments');
const {entitlement, order, uidFrom, FieldValue} = require('../lib/firebase');
const {cors, fail} = require('../lib/http');

module.exports = async (req, res) => {
  if (cors(req, res)) return;
  if (req.method !== 'POST') return fail(res, 405, 'Method not allowed.');

  const uid = await uidFrom(req);
  if (!uid) return fail(res, 401, 'Please log in again and retry.');

  const planId = (req.body && req.body.plan) || 'lifetime';
  const plan = planFor(planId);
  if (!plan) return fail(res, 400, 'Please choose a Premium plan.');

  try {
    // A running 15-day pass may be extended or upgraded; lifetime may not.
    const current = await entitlement(uid).get();
    if (current.exists && isLifetime(current.data())) {
      return fail(res, 409, 'Lifetime Premium is already active on this account.');
    }

    const razorpay = new Razorpay({
      key_id: process.env.RAZORPAY_KEY_ID,
      key_secret: process.env.RAZORPAY_KEY_SECRET,
    });
    const created = await razorpay.orders.create({
      amount: plan.amountPaise,
      currency: plan.currency,
      receipt: receiptFor(uid),
      notes: {uid, plan: planId, product: plan.product},
    });
    await order(created.id).set({
      uid,
      plan: planId,
      product: plan.product,
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
