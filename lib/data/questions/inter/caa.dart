import '../../../models/question.dart';

const interCaaQuestions = [
  // Corporate accounting
  Question(
    subjectId: 'i_caa',
    text: '100 shares of ₹10 each, ₹8 called up, are forfeited. The shareholder '
        'had paid ₹5 per share and failed to pay the last call of ₹3. The amount '
        'credited to Share Forfeiture Account is:',
    options: ['₹800', '₹500', '₹300', '₹1,000'],
    answerIndex: 1,
    explanation: 'Share Forfeiture Account is credited with the amount actually '
        'received on the forfeited shares: 100 × ₹5 = ₹500.',
  ),
  Question(
    subjectId: 'i_caa',
    text: 'Those 100 forfeited shares (forfeiture balance ₹500) are reissued as '
        '₹8 paid up for ₹7 per share. The amount transferred to Capital Reserve is:',
    options: ['₹500', '₹100', '₹700', '₹400'],
    answerIndex: 3,
    explanation: 'Discount on reissue = 100 × (8 − 7) = ₹100, met from forfeiture. '
        'Balance 500 − 100 = ₹400 goes to Capital Reserve.',
  ),
  Question(
    subjectId: 'i_caa',
    text: 'Under Section 52 of the Companies Act, 2013, Securities Premium '
        'cannot be used for:',
    options: [
      'Issuing fully paid bonus shares',
      'Writing off preliminary expenses',
      'Paying dividend to shareholders',
      'Buy-back of its own shares',
    ],
    answerIndex: 2,
    explanation: 'Securities premium may be used only for the purposes listed in '
        'Section 52(2). Paying dividends is not one of them.',
  ),
  Question(
    subjectId: 'i_caa',
    text: 'When preference shares are redeemed out of profits, an amount equal '
        'to the nominal value redeemed is transferred to:',
    options: [
      'General Reserve',
      'Capital Redemption Reserve',
      'Securities Premium',
      'Capital Reserve',
    ],
    answerIndex: 1,
    explanation: 'Section 55 requires a transfer to Capital Redemption Reserve so '
        'that the capital base is maintained.',
  ),
  Question(
    subjectId: 'i_caa',
    text: 'In the Balance Sheet under Schedule III (Division I), Securities '
        'Premium is shown under:',
    options: [
      'Share capital',
      'Reserves and surplus',
      'Non-current liabilities',
      'Other current liabilities',
    ],
    answerIndex: 1,
    explanation: 'Securities premium is a component of Reserves and Surplus '
        'within Shareholders\' Funds.',
  ),
  Question(
    subjectId: 'i_caa',
    text: 'Under AS 14, an amalgamation in the nature of merger is accounted '
        'for using the:',
    options: [
      'Purchase method',
      'Acquisition method',
      'Equity method',
      'Pooling of interests method',
    ],
    answerIndex: 3,
    explanation: 'AS 14 uses the pooling of interests method for mergers and the '
        'purchase method for amalgamations in the nature of purchase.',
  ),
  Question(
    subjectId: 'i_caa',
    text: 'Under AS 3, dividend paid by a non-financial company is classified as '
        'a cash flow from:',
    options: [
      'Operating activities',
      'Investing activities',
      'Financing activities',
      'Extraordinary activities',
    ],
    answerIndex: 2,
    explanation: 'Dividends paid are a cost of obtaining finance, so they are '
        'financing activities.',
  ),
  Question(
    subjectId: 'i_caa',
    text: 'Under AS 3, purchase of machinery is a cash flow from:',
    options: [
      'Investing activities',
      'Operating activities',
      'Financing activities',
      'It is not a cash flow',
    ],
    answerIndex: 0,
    explanation: 'Acquisition of long-term assets is an investing activity.',
  ),

  // Auditing
  Question(
    subjectId: 'i_caa',
    text: 'Vouching means:',
    options: [
      'Checking the totals of books of account',
      'Physically counting inventory',
      'Examining documentary evidence supporting entries in the books',
      'Preparing the audit report',
    ],
    answerIndex: 2,
    explanation: 'Vouching tests the authenticity of transactions by examining '
        'invoices, receipts and other supporting documents.',
  ),
  Question(
    subjectId: 'i_caa',
    text: 'Which audit evidence is generally the most reliable?',
    options: [
      'Oral explanations from management',
      'Photocopies provided by the client',
      'Internal memos of the client',
      'Confirmation received directly by the auditor from a third party',
    ],
    answerIndex: 3,
    explanation: 'Evidence from independent external sources, obtained directly '
        'by the auditor, is more reliable than evidence from the entity.',
  ),
  Question(
    subjectId: 'i_caa',
    text: '"Teeming and lading" is a fraud involving:',
    options: [
      'Inflating inventory',
      'Misappropriation of cash received from debtors',
      'Fake purchase invoices',
      'Window dressing of profits',
    ],
    answerIndex: 1,
    explanation: 'Cash from one debtor is stolen and covered with later receipts '
        'from other debtors, so the shortfall keeps rolling forward.',
  ),
  Question(
    subjectId: 'i_caa',
    text: 'When the auditor cannot obtain sufficient appropriate audit evidence '
        'and the possible effects are both material and pervasive, the auditor '
        'issues:',
    options: [
      'An unmodified opinion',
      'A qualified opinion',
      'A disclaimer of opinion',
      'An emphasis of matter paragraph only',
    ],
    answerIndex: 2,
    explanation: 'Under SA 705, material and pervasive inability to obtain '
        'evidence leads to a disclaimer. If material but not pervasive, the '
        'opinion is qualified.',
  ),
  Question(
    subjectId: 'i_caa',
    text: 'The first auditor of a company (other than a Government company) is '
        'appointed by the Board of Directors within:',
    options: [
      '30 days of registration',
      '60 days of registration',
      '90 days of registration',
      '6 months of registration',
    ],
    answerIndex: 0,
    explanation: 'Section 139(6): the Board appoints the first auditor within 30 '
        'days of registration. If it fails, members appoint one within 90 days '
        'at an EGM.',
  ),
  Question(
    subjectId: 'i_caa',
    text: 'In a listed company, an individual auditor can be appointed for not '
        'more than:',
    options: [
      'Two terms of five consecutive years',
      'One term of three years',
      'One term of five consecutive years',
      'Ten consecutive years',
    ],
    answerIndex: 2,
    explanation: 'Under Section 139(2), an individual can serve one term of five '
        'consecutive years and an audit firm two such terms.',
  ),
];
