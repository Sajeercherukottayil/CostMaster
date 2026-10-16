import '../../../models/question.dart';

const interFaQuestions = [
  // Accounting Standards
  Question(
    subjectId: 'i_fa',
    text: 'Which of the following is NOT a fundamental accounting assumption '
        'under AS 1?',
    options: ['Going concern', 'Consistency', 'Accrual', 'Prudence'],
    answerIndex: 3,
    explanation: 'AS 1 lists going concern, consistency and accrual as the '
        'fundamental accounting assumptions. Prudence is a consideration in '
        'selecting accounting policies.',
  ),
  Question(
    subjectId: 'i_fa',
    text: 'Under AS 2, inventory costing ₹50,000 with a net realisable value of '
        '₹45,000 is valued at:',
    options: ['₹50,000', '₹45,000', '₹47,500', '₹95,000'],
    answerIndex: 1,
    explanation: 'Inventories are valued at the lower of cost and net realisable '
        'value, which is ₹45,000.',
  ),
  Question(
    subjectId: 'i_fa',
    text: 'Under AS 2, which of the following is included in the cost of '
        'inventories?',
    options: [
      'Abnormal amounts of wasted materials',
      'Selling and distribution costs',
      'Costs of purchase and costs of conversion',
      'Administrative overheads unrelated to production',
    ],
    answerIndex: 2,
    explanation: 'Cost includes purchase, conversion and other costs of bringing '
        'inventory to its present location and condition. Abnormal waste, '
        'selling costs and unrelated admin overheads are excluded.',
  ),
  Question(
    subjectId: 'i_fa',
    text: 'Under AS 10 (Property, Plant and Equipment), a change in the method '
        'of depreciation is treated as a:',
    options: [
      'Change in accounting policy',
      'Change in accounting estimate',
      'Prior period item',
      'Extraordinary item',
    ],
    answerIndex: 1,
    explanation: 'Revised AS 10 treats a change in depreciation method as a '
        'change in accounting estimate, applied prospectively.',
  ),

  // Special transactions
  Question(
    subjectId: 'i_fa',
    text: 'Under a hire purchase agreement, ownership of the asset passes to '
        'the hirer:',
    options: [
      'On signing the agreement',
      'On payment of the down payment',
      'On payment of the last instalment',
      'Never',
    ],
    answerIndex: 2,
    explanation: 'In hire purchase, ownership passes only when the last '
        'instalment is paid. In an instalment sale, ownership passes immediately.',
  ),
  Question(
    subjectId: 'i_fa',
    text: 'An asset with a cash price of ₹1,00,000 is bought on hire purchase '
        'with a down payment of ₹20,000. Interest is 10% p.a. on the '
        'outstanding balance. Interest included in the first annual instalment is:',
    options: ['₹10,000', '₹2,000', '₹8,000', '₹12,000'],
    answerIndex: 2,
    explanation: 'Outstanding cash price after down payment = ₹80,000. Interest '
        'for year 1 = 80,000 × 10% = ₹8,000.',
  ),
  Question(
    subjectId: 'i_fa',
    text: 'Goods are sent to a branch at an invoice price of ₹1,20,000, which is '
        'cost plus 20%. The loading included in the invoice price is:',
    options: ['₹24,000', '₹20,000', '₹1,00,000', '₹16,667'],
    answerIndex: 1,
    explanation: 'Cost plus 20% means loading is 20/120 of invoice price: '
        '1,20,000 × 20/120 = ₹20,000.',
  ),
  Question(
    subjectId: 'i_fa',
    text: 'Stock worth ₹60,000 is destroyed by fire. Total stock on that date '
        'was worth ₹1,00,000 and was insured for ₹80,000, subject to an average '
        'clause. The claim admissible is:',
    options: ['₹48,000', '₹60,000', '₹80,000', '₹75,000'],
    answerIndex: 0,
    explanation: 'Under-insured, so claim = Loss × Policy / Value of stock = '
        '60,000 × 80,000 / 1,00,000 = ₹48,000.',
  ),
  Question(
    subjectId: 'i_fa',
    text: 'In departmental accounts, rent of the building is usually apportioned '
        'on the basis of:',
    options: [
      'Number of employees',
      'Sales of each department',
      'Purchases of each department',
      'Floor area occupied',
    ],
    answerIndex: 3,
    explanation: 'Rent, rates and building-related costs relate to space, so '
        'floor area is the fair basis.',
  ),
  Question(
    subjectId: 'i_fa',
    text: 'Minimum rent under a royalty agreement is ₹50,000. Royalty earned on '
        'actual production is ₹35,000. Short workings are:',
    options: ['₹35,000', '₹50,000', '₹15,000', '₹85,000'],
    answerIndex: 2,
    explanation: 'Short workings = Minimum rent − Actual royalty = 50,000 − 35,000 = ₹15,000.',
  ),
  Question(
    subjectId: 'i_fa',
    text: 'Under the memorandum method of joint venture accounts:',
    options: [
      'A separate set of books is kept for the venture',
      'Each co-venturer records only its own transactions and a Memorandum '
          'Joint Venture Account is prepared',
      'Only one co-venturer keeps all the records',
      'No accounts are maintained',
    ],
    answerIndex: 1,
    explanation: 'Each co-venturer keeps a "Joint Venture with [other venturer]" '
        'Account for its own transactions. Profit is found through a Memorandum JV Account.',
  ),
  Question(
    subjectId: 'i_fa',
    text: '₹1,00,000 of 6% debentures are bought at 98 cum-interest, when '
        'interest for 3 months has accrued. The cost of the investment is:',
    options: ['₹98,000', '₹96,500', '₹99,500', '₹97,000'],
    answerIndex: 1,
    explanation: 'Accrued interest = 1,00,000 × 6% × 3/12 = ₹1,500, which is '
        'revenue. Cost = 98,000 − 1,500 = ₹96,500.',
  ),
  Question(
    subjectId: 'i_fa',
    text: 'In a not-for-profit organisation, a legacy received is generally '
        'treated as:',
    options: [
      'Revenue income in the Income & Expenditure Account',
      'A capital receipt added to the capital fund',
      'A current liability',
      'A deduction from expenses',
    ],
    answerIndex: 1,
    explanation: 'A legacy is a non-recurring amount received under a will, so '
        'it is a capital receipt and is usually added to the capital fund.',
  ),
  Question(
    subjectId: 'i_fa',
    text: 'Under the self-balancing ledger system, the General Ledger Adjustment '
        'Account is kept in the:',
    options: [
      'Debtors\' and creditors\' ledgers',
      'Cash book',
      'Journal proper',
      'Bank pass book',
    ],
    answerIndex: 0,
    explanation: 'Each subsidiary ledger has a General Ledger Adjustment Account; '
        'the General Ledger has the corresponding Debtors\' and Creditors\' '
        'Ledger Adjustment Accounts.',
  ),
];
