const test = require('node:test');
const assert = require('node:assert');
const crypto = require('crypto');

const {
  PLANS,
  planFor,
  nextEntitlement,
  isValidPaymentSignature,
  isValidWebhookSignature,
  orderIdFromWebhook,
  modeFor,
  receiptFor,
} = require('./payments');

const sign = (secret, text) =>
  crypto.createHmac('sha256', secret).update(text).digest('hex');

test('accepts a correctly signed payment', () => {
  const p = {orderId: 'order_1', paymentId: 'pay_1'};
  p.signature = sign('secret', 'order_1|pay_1');
  assert.ok(isValidPaymentSignature(p, 'secret'));
});

test('rejects a payment signed with another secret or for another order', () => {
  const signature = sign('other', 'order_1|pay_1');
  assert.ok(!isValidPaymentSignature(
      {orderId: 'order_1', paymentId: 'pay_1', signature}, 'secret'));
  const good = sign('secret', 'order_1|pay_1');
  assert.ok(!isValidPaymentSignature(
      {orderId: 'order_2', paymentId: 'pay_1', signature: good}, 'secret'));
});

test('rejects missing or malformed fields', () => {
  assert.ok(!isValidPaymentSignature({orderId: 'o', paymentId: 'p'}, 's'));
  assert.ok(!isValidPaymentSignature(
      {orderId: 'o', paymentId: 'p', signature: 'zz'}, 's'));
});

test('checks webhook signatures against the raw body', () => {
  const body = Buffer.from('{"event":"order.paid"}');
  const signature = sign('whsec', body);
  assert.ok(isValidWebhookSignature(body, signature, 'whsec'));
  assert.ok(!isValidWebhookSignature(body, signature, 'wrong'));
  assert.ok(!isValidWebhookSignature(body, undefined, 'whsec'));
});

test('finds the order id in order and payment webhooks', () => {
  assert.strictEqual(orderIdFromWebhook(
      {payload: {order: {entity: {id: 'order_9'}}}}), 'order_9');
  assert.strictEqual(orderIdFromWebhook(
      {payload: {payment: {entity: {order_id: 'order_8'}}}}), 'order_8');
  assert.strictEqual(orderIdFromWebhook({payload: {}}), null);
});

test('keeps receipts within 40 characters', () => {
  assert.ok(receiptFor('x'.repeat(60)).length <= 40);
});

const DAY = 24 * 60 * 60 * 1000;
const NOW = new Date('2026-11-01T10:00:00Z');
const daysAfter = (date, days) => new Date(date.getTime() + days * DAY);

test('charges ₹49 for 15 days and ₹149 for lifetime', () => {
  assert.strictEqual(PLANS.pass15.amountPaise, 4900);
  assert.strictEqual(PLANS.pass15.days, 15);
  assert.strictEqual(PLANS.lifetime.amountPaise, 14900);
  assert.strictEqual(planFor('lifetime'), PLANS.lifetime);
  assert.strictEqual(planFor('toString'), null);
  assert.strictEqual(planFor(undefined), null);
});

test('a first 15-day pass runs 15 days from now', () => {
  assert.deepStrictEqual(nextEntitlement(undefined, 'pass15', NOW), {
    premium: true,
    plan: 'pass15',
    expiresAt: daysAfter(NOW, 15),
  });
});

test('a pass bought while one is running starts when it ends', () => {
  const current = {premium: true, expiresAt: daysAfter(NOW, 4)};
  assert.deepStrictEqual(
      nextEntitlement(current, 'pass15', NOW).expiresAt, daysAfter(NOW, 19));
});

test('a pass bought after one expired starts from now', () => {
  const current = {premium: true, expiresAt: daysAfter(NOW, -3)};
  assert.deepStrictEqual(
      nextEntitlement(current, 'pass15', NOW).expiresAt, daysAfter(NOW, 15));
});

test('lifetime has no expiry, even when bought during a pass', () => {
  const current = {premium: true, expiresAt: daysAfter(NOW, 4)};
  assert.deepStrictEqual(nextEntitlement(current, 'lifetime', NOW), {
    premium: true,
    plan: 'lifetime',
    expiresAt: null,
  });
});

test('a pass never cuts lifetime short', () => {
  const current = {premium: true, expiresAt: null};
  assert.deepStrictEqual(
      nextEntitlement(current, 'pass15', NOW).expiresAt, null);
});

test('rejects an unknown plan', () => {
  assert.throws(() => nextEntitlement(undefined, 'gold', NOW));
});

test('tells live keys from test keys', () => {
  assert.strictEqual(modeFor('rzp_live_abc'), 'live');
  assert.strictEqual(modeFor('rzp_test_abc'), 'test');
  assert.strictEqual(modeFor(undefined), 'test');
});
