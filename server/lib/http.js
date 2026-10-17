// Small helpers shared by the API routes.

// The website may call the API too; the Android app is not affected by CORS.
const ALLOWED_ORIGINS = [
  'https://costmaster-ck.web.app',
  'https://costmaster-ck.firebaseapp.com',
];

/** Sets CORS headers; returns true if the request was a preflight. */
function cors(req, res) {
  const origin = req.headers.origin;
  if (ALLOWED_ORIGINS.includes(origin)) {
    res.setHeader('Access-Control-Allow-Origin', origin);
    res.setHeader('Vary', 'Origin');
  }
  res.setHeader('Access-Control-Allow-Methods', 'POST, OPTIONS');
  res.setHeader('Access-Control-Allow-Headers', 'Authorization, Content-Type');
  if (req.method === 'OPTIONS') {
    res.status(204).end();
    return true;
  }
  return false;
}

/** Sends {error: message} with [status]; the app shows the message. */
function fail(res, status, message) {
  res.status(status).json({error: message});
}

/** The request body exactly as sent, needed to check webhook signatures. */
async function rawBody(req) {
  const chunks = [];
  for await (const chunk of req) chunks.push(chunk);
  return Buffer.concat(chunks);
}

module.exports = {cors, fail, rawBody};
