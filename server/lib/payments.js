// Pure helpers for Razorpay payments, kept apart from Firebase so they can be
// unit tested (see payments.test.js).
const crypto = require('crypto');

/** CostMaster Premium: one payment unlocks every mock test for life. */
const PREMIUM = {
  product: 'premium_lifetime',
  // Keep in step with premiumPriceRupees in lib/services/premium_service.dart.
  amountPaise: 299 * 100,
  currency: 'INR',
};

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

/** Razorpay receipts are limited to 40 characters. */
function receiptFor(uid) {
  return `premium_${uid}`.slice(0, 40);
}

module.exports = {
  PREMIUM,
  isValidPaymentSignature,
  isValidWebhookSignature,
  orderIdFromWebhook,
  receiptFor,
};
