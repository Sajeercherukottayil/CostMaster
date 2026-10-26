// Firebase Admin for the payment server: checks who is calling and writes
// premium to Firestore. Firestore is on the free plan; only this server (with
// the service account) can write entitlements, see firestore.rules.
const {initializeApp, getApps, cert} = require('firebase-admin/app');
const {getFirestore, FieldValue} = require('firebase-admin/firestore');

const {nextEntitlement} = require('./payments');

function app() {
  if (getApps().length) return getApps()[0];
  // The service account JSON from Firebase console > Project settings >
  // Service accounts, pasted whole into this Vercel environment variable.
  const account = JSON.parse(process.env.FIREBASE_SERVICE_ACCOUNT || '{}');
  if (account.private_key) {
    account.private_key = account.private_key.replace(/\\n/g, '\n');
  }
  return initializeApp({credential: cert(account)});
}

const db = () => getFirestore(app());
const entitlement = (uid) => db().doc(`entitlements/${uid}`);
const order = (orderId) => db().doc(`premiumOrders/${orderId}`);

// Firebase ID tokens are JWTs signed by Google. They are checked here with
// jose rather than firebase-admin/auth, whose dependencies fail to load on
// Vercel's Node runtime (ERR_REQUIRE_ESM).
const PROJECT_ID = 'costmaster-ck';
const GOOGLE_KEYS_URL = 'https://www.googleapis.com/service_accounts/v1/jwk/' +
    'securetoken@system.gserviceaccount.com';
let keySet;

/** The signed-in user's uid from "Authorization: Bearer <Firebase ID token>". */
async function uidFrom(req) {
  const header = req.headers.authorization || '';
  const match = header.match(/^Bearer (.+)$/);
  if (!match) return null;
  try {
    const {createRemoteJWKSet, jwtVerify} = await import('jose');
    keySet ??= createRemoteJWKSet(new URL(GOOGLE_KEYS_URL));
    const {payload} = await jwtVerify(match[1], keySet, {
      issuer: `https://securetoken.google.com/${PROJECT_ID}`,
      audience: PROJECT_ID,
      algorithms: ['RS256'],
    });
    return typeof payload.sub === 'string' && payload.sub ? payload.sub : null;
  } catch (e) {
    return null;
  }
}

/**
 * Marks the order paid and gives its owner its plan. Safe to call twice:
 * the app and the webhook both report each payment, and an order that is
 * already paid is not counted again (which would add a second 15 days).
 */
async function grantPremium(orderId, paymentId, source) {
  await db().runTransaction(async (tx) => {
    const snap = await tx.get(order(orderId));
    if (!snap.exists) throw new Error(`Unknown order ${orderId}`);
    const {uid, plan, status, mode} = snap.data();
    if (status === 'paid') return;

    const currentSnap = await tx.get(entitlement(uid));
    const current = currentSnap.exists ? currentSnap.data() : undefined;
    const next = nextEntitlement(
        current && {
          premium: current.premium,
          expiresAt: current.expiresAt ? current.expiresAt.toDate() : null,
        },
        // Orders made before there were two plans were lifetime.
        plan || 'lifetime',
        new Date(),
    );

    tx.set(order(orderId), {
      status: 'paid',
      paymentId: paymentId || null,
      paidAt: FieldValue.serverTimestamp(),
    }, {merge: true});
    tx.set(entitlement(uid), {
      ...next,
      mode: mode || 'test',
      orderId,
      paymentId: paymentId || null,
      source,
      grantedAt: FieldValue.serverTimestamp(),
    }, {merge: true});
  });
}

/**
 * Removes [uid]'s Premium and the orders they never paid for. Paid orders
 * stay as payment records.
 */
async function deleteAccountData(uid) {
  const unpaid = await db().collection('premiumOrders')
      .where('uid', '==', uid).where('status', '==', 'created').get();
  const batch = db().batch();
  batch.delete(entitlement(uid));
  for (const doc of unpaid.docs) batch.delete(doc.ref);
  await batch.commit();
}

module.exports = {
  entitlement, order, uidFrom, grantPremium, deleteAccountData, FieldValue,
};
