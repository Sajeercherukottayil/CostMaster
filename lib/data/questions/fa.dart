import '../../models/question.dart';

const faQuestions = [
  Question(
    subjectId: 'fa',
    text: 'The accounting equation is:',
    options: [
      'Assets = Liabilities − Capital',
      'Assets = Liabilities + Capital',
      'Capital = Assets + Liabilities',
      'Liabilities = Assets + Capital',
    ],
    answerIndex: 1,
    explanation: 'Every asset is financed either by outsiders (liabilities) or by '
        'the owner (capital): Assets = Liabilities + Capital.',
  ),
  Question(
    subjectId: 'fa',
    text: 'The assumption that a business will continue to operate in the '
        'foreseeable future is the:',
    options: [
      'Going concern concept',
      'Money measurement concept',
      'Accrual concept',
      'Business entity concept',
    ],
    answerIndex: 0,
    explanation: 'The going concern concept assumes no intention or need to '
        'liquidate, which is why assets are shown at cost less depreciation.',
  ),
  Question(
    subjectId: 'fa',
    text: 'Recording income and expenses in the period to which they relate, '
        'whether or not cash is received or paid, follows the:',
    options: [
      'Consistency concept',
      'Materiality concept',
      'Accrual concept',
      'Conservatism concept',
    ],
    answerIndex: 2,
    explanation: 'The accrual concept matches income and expenses to the period '
        'they belong to, not the period in which cash moves.',
  ),
  Question(
    subjectId: 'fa',
    text: '"Anticipate no profit, but provide for all possible losses" '
        'describes the:',
    options: [
      'Matching concept',
      'Dual aspect concept',
      'Realisation concept',
      'Conservatism (prudence) concept',
    ],
    answerIndex: 3,
    explanation: 'Conservatism (prudence) requires caution: losses are provided '
        'for when foreseen, but gains are recognised only when realised.',
  ),
  Question(
    subjectId: 'fa',
    text: 'Trade discount allowed to a customer is:',
    options: [
      'Debited to Discount Allowed Account',
      'Not recorded in the books of account',
      'Credited to Profit & Loss Account',
      'Shown as an expense in the Trading Account',
    ],
    answerIndex: 1,
    explanation: 'Trade discount is deducted on the invoice itself, so the sale '
        'is recorded at the net amount. Only cash discount is recorded.',
  ),
  Question(
    subjectId: 'fa',
    text: 'Purchase of machinery wrongly debited to Purchases Account is an:',
    options: [
      'Error of omission',
      'Error of commission',
      'Error of principle',
      'Compensating error',
    ],
    answerIndex: 2,
    explanation: 'A capital item treated as revenue (or vice versa) violates an '
        'accounting principle, so it is an error of principle.',
  ),
  Question(
    subjectId: 'fa',
    text: 'When the Trial Balance does not agree, the difference is temporarily '
        'placed in:',
    options: [
      'Capital Account',
      'Profit & Loss Account',
      'Drawings Account',
      'Suspense Account',
    ],
    answerIndex: 3,
    explanation: 'The difference is parked in a Suspense Account until the errors '
        'are located and rectified.',
  ),
  Question(
    subjectId: 'fa',
    text: 'Starting from a debit balance as per Cash Book, cheques issued but '
        'not yet presented for payment are:',
    options: [
      'Deducted to get Pass Book balance',
      'Added to get Pass Book balance',
      'Ignored',
      'Shown in the Suspense Account',
    ],
    answerIndex: 1,
    explanation: 'The Cash Book has already been credited, but the bank has not '
        'yet paid, so the Pass Book balance is higher — add them back.',
  ),
  Question(
    subjectId: 'fa',
    text: 'Which of the following is a capital expenditure?',
    options: [
      'Wages paid to factory workers',
      'Repairs to machinery',
      'Purchase of new machinery',
      'Insurance premium paid',
    ],
    answerIndex: 2,
    explanation: 'Purchase of machinery gives benefit over several years, so it '
        'is capital expenditure. The others are revenue expenditure.',
  ),
  Question(
    subjectId: 'fa',
    text: 'Prepaid expenses are shown in the Balance Sheet as a:',
    options: ['Current liability', 'Fixed asset', 'Current asset', 'Reserve'],
    answerIndex: 2,
    explanation: 'Prepaid expenses represent a benefit receivable in the next '
        'period, so they are a current asset.',
  ),
  Question(
    subjectId: 'fa',
    text: 'Sales ₹5,00,000, opening stock ₹50,000, purchases ₹3,50,000, direct '
        'expenses ₹20,000 and closing stock ₹60,000. Gross profit is:',
    options: ['₹1,20,000', '₹1,40,000', '₹1,60,000', '₹1,50,000'],
    answerIndex: 1,
    explanation: 'Cost of goods sold = 50,000 + 3,50,000 + 20,000 − 60,000 = '
        '₹3,60,000. Gross profit = 5,00,000 − 3,60,000 = ₹1,40,000.',
  ),
  Question(
    subjectId: 'fa',
    text: 'A machine costs ₹1,00,000 with a residual value of ₹10,000 and a '
        'useful life of 9 years. Annual depreciation under SLM is:',
    options: ['₹11,111', '₹9,000', '₹10,000', '₹12,000'],
    answerIndex: 2,
    explanation: 'SLM depreciation = (Cost − Residual value) / Life = 90,000 / 9 = ₹10,000.',
  ),
  Question(
    subjectId: 'fa',
    text: 'A machine costing ₹1,00,000 is depreciated at 10% p.a. on the WDV '
        'method. Its book value after 2 years is:',
    options: ['₹80,000', '₹81,000', '₹90,000', '₹82,000'],
    answerIndex: 1,
    explanation: 'Year 1: 1,00,000 − 10,000 = 90,000. Year 2: 90,000 − 9,000 = ₹81,000.',
  ),
  Question(
    subjectId: 'fa',
    text: 'Which of the following is NOT a method of charging depreciation?',
    options: [
      'Straight line method',
      'Written down value method',
      'Sum of years\' digits method',
      'First in, first out method',
    ],
    answerIndex: 3,
    explanation: 'FIFO is a method of pricing material issues and valuing '
        'inventory, not a depreciation method.',
  ),
  Question(
    subjectId: 'fa',
    text: 'In India, the number of days of grace allowed on a time bill of '
        'exchange is:',
    options: ['3 days', '5 days', '7 days', 'No days of grace'],
    answerIndex: 0,
    explanation: 'Three days of grace are added to the due date of a bill payable '
        'after a fixed period. No grace is allowed on bills payable on demand.',
  ),
  Question(
    subjectId: 'fa',
    text: 'In consignment, the Account Sales is prepared and sent by the:',
    options: ['Consignor', 'Consignee', 'Customer', 'Bank'],
    answerIndex: 1,
    explanation: 'The consignee sells the goods on the consignor\'s behalf and '
        'reports the sales, expenses and commission in an Account Sales.',
  ),
  Question(
    subjectId: 'fa',
    text: 'Del credere commission is paid to a consignee for:',
    options: [
      'Selling goods above the invoice price',
      'Storing the goods safely',
      'Bearing the risk of bad debts on credit sales',
      'Sending an advance to the consignor',
    ],
    answerIndex: 2,
    explanation: 'Del credere commission is extra commission for guaranteeing '
        'collection from credit customers, so bad debts are borne by the consignee.',
  ),
  Question(
    subjectId: 'fa',
    text: 'In the absence of a partnership deed, interest on partners\' capital is:',
    options: ['6% p.a.', '12% p.a.', 'Not allowed', 'At the bank rate'],
    answerIndex: 2,
    explanation: 'Under the Indian Partnership Act, 1932, without an agreement '
        'partners are not entitled to interest on capital.',
  ),
  Question(
    subjectId: 'fa',
    text: 'In the absence of a partnership deed, interest on a loan advanced by '
        'a partner to the firm is allowed at:',
    options: ['9% p.a.', '12% p.a.', 'Nil', '6% p.a.'],
    answerIndex: 3,
    explanation: 'Without an agreement, a partner who advances money beyond the '
        'agreed capital is entitled to interest at 6% per annum.',
  ),
  Question(
    subjectId: 'fa',
    text: 'A and B share profits 3 : 2. C is admitted for a 1/5 share, taken '
        'from A and B in their old ratio. The new profit-sharing ratio is:',
    options: ['12 : 8 : 5', '3 : 2 : 1', '3 : 2 : 5', '6 : 4 : 5'],
    answerIndex: 0,
    explanation: 'Remaining share 4/5 is split 3 : 2 — A = 12/25, B = 8/25. '
        'C = 1/5 = 5/25. New ratio 12 : 8 : 5.',
  ),
  Question(
    subjectId: 'fa',
    text: 'Average profit is ₹50,000. Goodwill at 2 years\' purchase of average '
        'profit is:',
    options: ['₹25,000', '₹50,000', '₹1,00,000', '₹1,50,000'],
    answerIndex: 2,
    explanation: 'Goodwill = Average profit × Number of years\' purchase = 50,000 × 2 = ₹1,00,000.',
  ),
  Question(
    subjectId: 'fa',
    text: 'A Receipts and Payments Account of a not-for-profit organisation is:',
    options: [
      'A summary of cash and bank transactions',
      'A nominal account showing surplus or deficit',
      'A statement of assets and liabilities',
      'A personal account of members',
    ],
    answerIndex: 0,
    explanation: 'It summarises the Cash Book (a real account) and includes '
        'capital and revenue items of any period. Surplus or deficit comes '
        'from the Income & Expenditure Account.',
  ),
  Question(
    subjectId: 'fa',
    text: 'Under the statement of affairs method, opening capital is ₹1,00,000, '
        'closing capital ₹1,50,000, drawings ₹20,000 and fresh capital '
        'introduced ₹10,000. Profit for the year is:',
    options: ['₹50,000', '₹40,000', '₹60,000', '₹80,000'],
    answerIndex: 2,
    explanation: 'Profit = Closing capital − Opening capital + Drawings − Fresh '
        'capital = 1,50,000 − 1,00,000 + 20,000 − 10,000 = ₹60,000.',
  ),
  Question(
    subjectId: 'fa',
    text: 'Current assets are ₹2,00,000 and current liabilities are ₹1,00,000. '
        'The current ratio is:',
    options: ['1 : 2', '2 : 1', '1 : 1', '3 : 1'],
    answerIndex: 1,
    explanation: 'Current ratio = Current assets / Current liabilities = 2,00,000 / 1,00,000 = 2 : 1.',
  ),
  Question(
    subjectId: 'fa',
    text: 'Current assets are ₹2,00,000, including inventory ₹80,000 and '
        'prepaid expenses ₹20,000. Current liabilities are ₹1,00,000. The '
        'quick ratio is:',
    options: ['1.2 : 1', '2 : 1', '0.8 : 1', '1 : 1'],
    answerIndex: 3,
    explanation: 'Quick assets = 2,00,000 − 80,000 − 20,000 = ₹1,00,000. '
        'Quick ratio = 1,00,000 / 1,00,000 = 1 : 1.',
  ),
];
