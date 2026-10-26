// POST /api/delete-account  (Authorization: Bearer <Firebase ID token>)
// Called by the app just before it deletes the student's login. Removes
// their Premium and unpaid orders. Paid orders are kept as payment records
// for tax law; they hold only the uid, plan and amount, not who paid.
const {uidFrom, deleteAccountData} = require('../lib/firebase');
const {cors, fail} = require('../lib/http');

module.exports = async (req, res) => {
  if (cors(req, res)) return;
  if (req.method !== 'POST') return fail(res, 405, 'Method not allowed.');

  const uid = await uidFrom(req);
  if (!uid) return fail(res, 401, 'Please log in again and retry.');

  try {
    await deleteAccountData(uid);
    res.status(200).json({deleted: true});
  } catch (e) {
    console.error('delete-account failed', e);
    fail(res, 500, 'Could not delete your account. Please try again later.');
  }
};
