// Google Play Developer API calls for one-time products: look up a
// purchase, then acknowledge or consume it. Signs in as the service account
// in FIREBASE_SERVICE_ACCOUNT, which must be invited in Play Console > Users
// and permissions with "View financial data" and "Manage orders".
const PACKAGE_NAME = 'com.costmaster.cost_master';
const SCOPE = 'https://www.googleapis.com/auth/androidpublisher';
const TOKEN_URL = 'https://oauth2.googleapis.com/token';
const API = 'https://androidpublisher.googleapis.com/androidpublisher/v3/' +
    `applications/${PACKAGE_NAME}/purchases/products`;

let cached; // {token, expiresAt}

/** An OAuth access token for the service account, reused until near expiry. */
async function accessToken() {
  if (cached && cached.expiresAt > Date.now() + 60 * 1000) return cached.token;
  const {SignJWT, importPKCS8} = await import('jose');
  const account = JSON.parse(process.env.FIREBASE_SERVICE_ACCOUNT || '{}');
  const key = await importPKCS8(
      (account.private_key || '').replace(/\\n/g, '\n'), 'RS256');
  const now = Math.floor(Date.now() / 1000);
  const assertion = await new SignJWT({scope: SCOPE})
      .setProtectedHeader({alg: 'RS256', typ: 'JWT'})
      .setIssuer(account.client_email)
      .setAudience(TOKEN_URL)
      .setIssuedAt(now)
      .setExpirationTime(now + 3600)
      .sign(key);
  const res = await fetch(TOKEN_URL, {
    method: 'POST',
    headers: {'Content-Type': 'application/x-www-form-urlencoded'},
    body: new URLSearchParams({
      grant_type: 'urn:ietf:params:oauth:grant-type:jwt-bearer',
      assertion,
    }),
  });
  const data = await res.json();
  if (!res.ok) throw new Error(`Google sign-in failed: ${JSON.stringify(data)}`);
  cached = {token: data.access_token, expiresAt: Date.now() + data.expires_in * 1000};
  return cached.token;
}

async function call(method, path) {
  const res = await fetch(`${API}/${path}`, {
    method,
    headers: {Authorization: `Bearer ${await accessToken()}`},
  });
  const text = await res.text();
  if (!res.ok) {
    const error = new Error(`Play API ${method} ${res.status}: ${text}`);
    error.status = res.status;
    throw error;
  }
  return text ? JSON.parse(text) : {};
}

const tokenPath = (productId, token) =>
  `${encodeURIComponent(productId)}/tokens/${encodeURIComponent(token)}`;

/** The ProductPurchase for [token], or null if Google doesn't know it. */
async function getPurchase(productId, token) {
  try {
    return await call('GET', tokenPath(productId, token));
  } catch (e) {
    if (e.status === 400 || e.status === 404 || e.status === 410) return null;
    throw e;
  }
}

/** Keeps the purchase; Google refunds ones not acknowledged in 3 days. */
const acknowledge = (productId, token) =>
  call('POST', `${tokenPath(productId, token)}:acknowledge`);

/** Uses the purchase up so the product can be bought again. */
const consume = (productId, token) =>
  call('POST', `${tokenPath(productId, token)}:consume`);

module.exports = {getPurchase, acknowledge, consume};
