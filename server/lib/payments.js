// Pure helpers for Razorpay payments, kept apart from Firebase so they can be
// unit tested (see payments.test.js).
const crypto = require('crypto');

const DAY_MS = 24 * 60 * 60 * 1000;

/**
 * The Premium plans, each a one-time payment that unlocks every mock test.
 * Keep in step with PremiumPlan in lib/services/premium_service.dart.
 */
const PLANS = {
  pass15: {
    product: 'premium_15_days',
    amountPaise: 49 * 100,
    currency: 'INR',
    days: 15,
  },
  lifetime: {
    product: 'premium_lifetime',
    amountPaise: 149 * 100,
    currency: 'INR',
    days: null,
  },
};

/** The plan for [id], or null if there is no such plan. */
function planFor(id) {
  return Object.prototype.hasOwnProperty.call(PLANS, id) ? PLANS[id] : null;
}

/** Whether [current] (an entitlements/{uid} doc, or undefined) is lifetime. */
function isLifetime(current) {
  return !!current && current.premium === true && !current.expiresAt;
}

/**
 * Why [planId] cannot be bought now, given the [current] entitlement
 * (expiresAt as a Date or null), or null if it can. Lifetime can't be
 * bought twice, and a 15-day pass can't be bought while one is running;
 * upgrading a running pass to lifetime is allowed.
 */
function purchaseBlockedReason(current, planId, now) {
  if (!current || current.premium !== true) return null;
  if (!current.expiresAt) {
    return 'Lifetime Premium is already active on this account.';
  }
  if (planId === 'pass15' && current.expiresAt > now) {
    return 'Your 15-day pass is still active. You can buy another after it ' +
      'ends, or upgrade to Lifetime now.';
  }
  return null;
}

/**
 * The fields of entitlements/{uid} after buying [planId], given the
 * [current] doc (expiresAt as a Date or null) and the time [now].
 * A pass bought while another is running starts when that one ends.
 * Lifetime is never cut short by a later pass.
 */
function nextEntitlement(current, planId, now) {
  const plan = planFor(planId);
  if (!plan) throw new Error(`Unknown plan ${planId}`);
  if (plan.days === null || isLifetime(current)) {
    return {premium: true, plan: 'lifetime', expiresAt: null};
  }
  const running = current && current.premium === true && current.expiresAt &&
      current.expiresAt > now;
  const from = running ? current.expiresAt : now;
  return {
    premium: true,
    plan: planId,
    expiresAt: new Date(from.getTime() + plan.days * DAY_MS),
  };
}

function hmacHex(secret, text) {
  return crypto.createHmac('sha256', secret).update(text).digest('hex');
}

/** Compares two hex strings in constant time. */
function sameHex(a, b) {
  if (typeof a !== 'string' || typeof b !== 'string' || a.length !== b.length) {
    return false;
  }
  return crypto.timingSafeEqual(Buffer.from(a, 'hex'), Buffer.from(b, 'hex'));
}

/**
 * Checks the signature Razorpay Checkout returns after a successful payment:
 * HMAC-SHA256 of "orderId|paymentId" keyed with the account's key secret.
 */
function isValidPaymentSignature({orderId, paymentId, signature}, keySecret) {
  if (!orderId || !paymentId || !signature) return false;
  return sameHex(hmacHex(keySecret, `${orderId}|${paymentId}`), signature);
}

/** Checks a webhook's X-Razorpay-Signature against its raw body. */
function isValidWebhookSignature(rawBody, signature, webhookSecret) {
  if (!rawBody || !signature) return false;
  return sameHex(hmacHex(webhookSecret, rawBody), signature);
}

/** The order id a webhook event is about, if any. */
function orderIdFromWebhook(event) {
  const payload = event && event.payload;
  if (!payload) return null;
  return (
    (payload.order && payload.order.entity && payload.order.entity.id) ||
    (payload.payment && payload.payment.entity && payload.payment.entity.order_id) ||
    null
  );
}

/**
 * 'live' or 'test', from the key in use, so that Premium granted by test
 * payments can be told apart (and removed) once real payments start.
 */
function modeFor(keyId) {
  return typeof keyId === 'string' && keyId.startsWith('rzp_live_') ?
    'live' : 'test';
}

/** Razorpay receipts are limited to 40 characters. */
function receiptFor(uid) {
  return `premium_${uid}`.slice(0, 40);
}

module.exports = {
  PLANS,
  planFor,
  isLifetime,
  nextEntitlement,
  purchaseBlockedReason,
  isValidPaymentSignature,
  isValidWebhookSignature,
  orderIdFromWebhook,
  modeFor,
  receiptFor,
};
