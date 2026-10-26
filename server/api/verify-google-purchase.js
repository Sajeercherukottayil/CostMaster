// POST /api/verify-google-purchase  (Authorization: Bearer <Firebase ID token>)
// Body: {productId, purchaseToken} from a Google Play purchase in the app.
// Asks Google whether the purchase is real and made by this student, gives
// them Premium, then consumes a 15-day pass (so it can be bought again) or
// acknowledges lifetime (Google refunds purchases left unacknowledged).
const {
  planFor,
  planIdForProduct,
  googlePurchaseProblem,
  googleModeFor,
  googleOrderId,
} = require('../lib/payments');
const {order, uidFrom, grantPremium, FieldValue} = require('../lib/firebase');
const {getPurchase, acknowledge, consume} = require('../lib/google_play');
const {cors, fail} = require('../lib/http');

module.exports = async (req, res) => {
  if (cors(req, res)) return;
  if (req.method !== 'POST') return fail(res, 405, 'Method not allowed.');

  const uid = await uidFrom(req);
  if (!uid) return fail(res, 401, 'Please log in again and retry.');

  const {productId, purchaseToken} = req.body || {};
  const planId = planIdForProduct(productId);
  if (!planId || typeof purchaseToken !== 'string' || !purchaseToken) {
    return fail(res, 400, 'This purchase is not a CostMaster plan.');
  }

  try {
    const purchase = await getPurchase(productId, purchaseToken);
    const problem = googlePurchaseProblem(purchase, uid);
    if (problem) {
      console.warn('Google purchase refused', {uid, productId, problem});
      return fail(res, purchase && purchase.purchaseState === 2 ? 202 : 403,
          problem);
    }

    // One premiumOrders doc per purchase token, so a token is counted once.
    const orderId = googleOrderId(purchaseToken);
    const snap = await order(orderId).get();
    if (snap.exists && snap.data().uid !== uid) {
      return fail(res, 403, 'This purchase belongs to another account.');
    }
    if (!snap.exists) {
      const plan = planFor(planId);
      await order(orderId).set({
        uid,
        plan: planId,
        product: plan.product,
        store: 'google_play',
        mode: googleModeFor(purchase),
        googleOrderId: purchase.orderId || null,
        status: 'created',
        createdAt: FieldValue.serverTimestamp(),
      });
    }
    await grantPremium(orderId, purchase.orderId || null, 'google_play');

    // Premium is granted; if this fails the app sends the purchase again on
    // its next start and it is retried.
    try {
      if (planFor(planId).days !== null) {
        if (purchase.consumptionState !== 1) {
          await consume(productId, purchaseToken);
        }
      } else if (purchase.acknowledgementState !== 1) {
        await acknowledge(productId, purchaseToken);
      }
    } catch (e) {
      console.error('Could not finish Google purchase', {uid, orderId}, e);
    }
    res.status(200).json({premium: true});
  } catch (e) {
    console.error('verify-google-purchase failed', e);
    fail(res, 500, 'Could not confirm the payment. Please try again.');
  }
};
