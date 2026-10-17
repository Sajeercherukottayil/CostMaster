const test = require('node:test');
const assert = require('node:assert');
const crypto = require('crypto');

const {
  isValidPaymentSignature,
  isValidWebhookSignature,
  orderIdFromWebhook,
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
