import '../../models/question.dart';

const faQuestions = [
  Question(
    subjectId: 'fa',
    chapter: 'Accounting Concepts & Principles',
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
    chapter: 'Accounting Concepts & Principles',
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
    chapter: 'Accounting Concepts & Principles',
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
    chapter: 'Accounting Concepts & Principles',
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
    chapter: 'Accounting Concepts & Principles',
    text: 'Under the money measurement concept:',
    options: [
      'The owner\'s private transactions are recorded',
      'Assets are always shown at market value',
      'All business events are recorded',
      'Only transactions that can be expressed in money are recorded',
    ],
    answerIndex: 3,
    explanation: 'Accounting records only those transactions and events that can be '
        'measured in money; for example, staff morale is not recorded.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Accounting Concepts & Principles',
    text: 'The business entity concept means that:',
    options: [
      'The business will continue indefinitely',
      'The business and its owner are treated as separate',
      'Revenue is recognised when cash is received',
      'All assets are recorded at cost',
    ],
    answerIndex: 1,
    explanation: 'Under the entity concept, the business is separate from its owner, '
        'which is why capital is shown as a liability of the business.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Accounting Concepts & Principles',
    text: 'The dual aspect concept means that:',
    options: [
      'Profit is recorded when earned',
      'Only cash transactions are recorded',
      'Every transaction has two equal aspects, a debit and a credit',
      'Assets are shown at market value',
    ],
    answerIndex: 2,
    explanation: 'This concept is the basis of the double entry system and the '
        'accounting equation.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Accounting Concepts & Principles',
    text: 'Under the historical cost concept, assets are recorded at:',
    options: [
      'Their realisable value',
      'The price paid to acquire them',
      'Their replacement cost',
      'Their current market value',
    ],
    answerIndex: 1,
    explanation: 'Assets are recorded at acquisition cost and then depreciated, not '
        'revalued to market.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Accounting Concepts & Principles',
    text: 'The consistency concept requires that:',
    options: [
      'All businesses use the same policies',
      'Only cash basis is used',
      'Profit must be the same every year',
      'The same accounting policies are followed from year to year',
    ],
    answerIndex: 3,
    explanation: 'Consistency makes the results of different periods comparable; a '
        'change must be disclosed.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Accounting Concepts & Principles',
    text: 'Under the materiality concept:',
    options: [
      'Immaterial items are not recorded at all',
      'Only items above ₹1 crore are recorded',
      'Every item must be shown separately',
      'Items too small to influence users may be treated in the simplest way',
    ],
    answerIndex: 3,
    explanation: 'For example, a stapler may be written off as an expense instead of '
        'being depreciated.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Accounting Process & Rectification of Errors',
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
    chapter: 'Accounting Process & Rectification of Errors',
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
    chapter: 'Accounting Process & Rectification of Errors',
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
    chapter: 'Accounting Process & Rectification of Errors',
    text: 'Goods withdrawn by the proprietor for personal use are recorded by '
        'debiting Drawings Account and crediting:',
    options: [
      'Sales Account',
      'Capital Account',
      'Cash Account',
      'Purchases Account',
    ],
    answerIndex: 3,
    explanation: 'Goods taken for personal use reduce the goods available for sale, '
        'so Drawings A/c is debited and Purchases A/c is credited at cost.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Accounting Process & Rectification of Errors',
    text: 'Which error does NOT affect the agreement of the Trial Balance?',
    options: [
      'Posting to the wrong side of an account',
      'Error in carrying forward a balance',
      'Error of principle',
      'Error of casting',
    ],
    answerIndex: 2,
    explanation: 'An error of principle (for example, capital expenditure treated as '
        'revenue) records equal debits and credits, so the Trial Balance '
        'still agrees.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Accounting Process & Rectification of Errors',
    text: 'A credit sale of ₹5,000 to Ram was not recorded in the Sales Book '
        'at all. This is an error of:',
    options: ['Principle', 'Commission', 'Complete omission', 'Compensation'],
    answerIndex: 2,
    explanation: 'When a transaction is not recorded at all, it is an error of '
        'complete omission. It does not affect the Trial Balance.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Accounting Process & Rectification of Errors',
    text: 'Capital is ₹1,00,000 and liabilities are ₹40,000. Total assets '
        'are:',
    options: ['₹1,00,000', '₹1,40,000', '₹60,000', '₹40,000'],
    answerIndex: 1,
    explanation: 'Assets = Capital + Liabilities = 1,00,000 + 40,000 = ₹1,40,000.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Accounting Process & Rectification of Errors',
    text: 'A compensating error is one where:',
    options: [
      'An entry is completely omitted',
      'A capital item is treated as revenue',
      'One error is cancelled out by another error of the same amount',
      'An entry is made in the wrong account of the same class',
    ],
    answerIndex: 2,
    explanation: 'Compensating errors offset each other, so the Trial Balance still '
        'agrees.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Accounting Process & Rectification of Errors',
    text: 'A credit sale of ₹2,000 to Mohan was posted to Sohan\'s account. '
        'This is an error of:',
    options: ['Compensation', 'Principle', 'Omission', 'Commission'],
    answerIndex: 3,
    explanation: 'Posting to the wrong personal account of the same class is an '
        'error of commission.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Accounting Process & Rectification of Errors',
    text: 'The Sales Book was undercast by ₹500, and the difference was put '
        'to a Suspense Account. The rectifying entry is:',
    options: [
      'Debit Debtors A/c, credit Sales A/c ₹500',
      'No entry is needed',
      'Debit Suspense A/c, credit Sales A/c ₹500',
      'Debit Sales A/c, credit Suspense A/c ₹500',
    ],
    answerIndex: 2,
    explanation: 'Sales A/c was credited ₹500 short while debtors were posted '
        'correctly, so Sales A/c must be credited and Suspense debited.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Bank Reconciliation Statement',
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
    chapter: 'Bank Reconciliation Statement',
    text: 'Starting from the debit balance as per Cash Book, cheques '
        'deposited but not yet collected by the bank are:',
    options: ['Ignored', 'Deducted', 'Added', 'Added twice'],
    answerIndex: 1,
    explanation: 'The Cash Book has been debited but the bank has not yet credited '
        'the amount, so the Pass Book balance is lower. Deduct to arrive at '
        'the Pass Book balance.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Bank Reconciliation Statement',
    text: 'Starting from the debit balance as per Cash Book, bank charges '
        'debited in the Pass Book but not entered in the Cash Book are:',
    options: [
      'Deducted',
      'Added',
      'Ignored',
      'Shown separately in the Balance Sheet',
    ],
    answerIndex: 0,
    explanation: 'Bank charges reduce the Pass Book balance only, so they are '
        'deducted from the Cash Book balance.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Bank Reconciliation Statement',
    text: 'Starting from the debit balance as per Cash Book, interest '
        'credited by the bank but not yet entered in the Cash Book is:',
    options: ['Added', 'Deducted twice', 'Ignored', 'Deducted'],
    answerIndex: 0,
    explanation: 'Interest credited increases the Pass Book balance only, so it is '
        'added to the Cash Book balance.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Bank Reconciliation Statement',
    text: 'An overdraft as per Cash Book is shown by:',
    options: [
      'A debit balance in the bank column of the Cash Book',
      'A credit balance in the Pass Book',
      'A debit balance in the cash column',
      'A credit balance in the bank column of the Cash Book',
    ],
    answerIndex: 3,
    explanation: 'An overdraft means the business owes the bank. In the Cash Book '
        'this appears as a credit balance in the bank column.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Bank Reconciliation Statement',
    text: 'Balance as per Cash Book is ₹10,000 (debit). Cheques issued but '
        'not presented are ₹2,000 and cheques deposited but not collected '
        'are ₹3,000. The balance as per Pass Book is:',
    options: ['₹15,000', '₹9,000', '₹11,000', '₹5,000'],
    answerIndex: 1,
    explanation: '₹10,000 + ₹2,000 (cheques not yet presented) − ₹3,000 (cheques not '
        'yet collected) = ₹9,000.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Bank Reconciliation Statement',
    text: 'A Bank Reconciliation Statement is prepared by:',
    options: [
      'The auditor only',
      'The account holder (the business)',
      'The bank',
      'The Reserve Bank of India',
    ],
    answerIndex: 1,
    explanation: 'The business prepares it to explain the difference between the '
        'Cash Book and the Pass Book balances.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Bank Reconciliation Statement',
    text: 'Starting from the debit balance as per Cash Book, a cheque '
        'deposited and later dishonoured, recorded only in the Pass Book, '
        'is:',
    options: ['Ignored', 'Deducted', 'Added twice', 'Added'],
    answerIndex: 1,
    explanation: 'The bank has reversed the credit, so the Pass Book balance is '
        'lower than the Cash Book balance.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Bank Reconciliation Statement',
    text: 'The credit balance as per Pass Book is ₹15,000. Cheques of ₹4,000 '
        'deposited have not yet been collected. There are no other '
        'differences. The balance as per Cash Book is:',
    options: [
      '₹11,000 (debit)',
      '₹15,000 (debit)',
      '₹4,000 (credit)',
      '₹19,000 (debit)',
    ],
    answerIndex: 3,
    explanation: 'The Cash Book already includes the deposit, so it is higher: '
        '15,000 + 4,000 = ₹19,000.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Bank Reconciliation Statement',
    text: 'Starting from the debit balance as per Cash Book, an amount '
        'deposited directly into the bank by a customer, not yet entered in '
        'the Cash Book, is:',
    options: ['Deducted', 'Added', 'Ignored', 'Deducted twice'],
    answerIndex: 1,
    explanation: 'The direct deposit increases only the Pass Book balance.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Final Accounts',
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
    chapter: 'Final Accounts',
    text: 'Prepaid expenses are shown in the Balance Sheet as a:',
    options: ['Current liability', 'Fixed asset', 'Current asset', 'Reserve'],
    answerIndex: 2,
    explanation: 'Prepaid expenses represent a benefit receivable in the next '
        'period, so they are a current asset.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Final Accounts',
    text: 'Sales ₹5,00,000, opening stock ₹50,000, purchases ₹3,50,000, direct '
        'expenses ₹20,000 and closing stock ₹60,000. Gross profit is:',
    options: ['₹1,20,000', '₹1,40,000', '₹1,60,000', '₹1,50,000'],
    answerIndex: 1,
    explanation: 'Cost of goods sold = 50,000 + 3,50,000 + 20,000 − 60,000 = '
        '₹3,60,000. Gross profit = 5,00,000 − 3,60,000 = ₹1,40,000.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Final Accounts',
    text: 'Carriage inwards is debited to the:',
    options: [
      'Capital Account',
      'Balance Sheet',
      'Trading Account',
      'Profit and Loss Account',
    ],
    answerIndex: 2,
    explanation: 'Carriage inwards is a direct expense of bringing goods in, so it '
        'is shown in the Trading Account.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Final Accounts',
    text: 'Outstanding salary is shown in the Balance Sheet as a:',
    options: [
      'Deduction from capital',
      'Fixed asset',
      'Current liability',
      'Current asset',
    ],
    answerIndex: 2,
    explanation: 'Salary due but not yet paid is an amount owed by the business, so '
        'it is a current liability.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Final Accounts',
    text: 'Opening stock is ₹20,000, purchases ₹80,000 and closing stock '
        '₹30,000. The cost of goods sold is:',
    options: ['₹70,000', '₹50,000', '₹90,000', '₹1,30,000'],
    answerIndex: 0,
    explanation: 'Cost of goods sold = Opening stock + Purchases − Closing stock = '
        '20,000 + 80,000 − 30,000 = ₹70,000.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Final Accounts',
    text: 'Closing stock given outside the Trial Balance is shown:',
    options: [
      'On the credit side of the Trading Account and as an asset in the Balance Sheet',
      'On the debit side of the Profit and Loss Account',
      'Only in the Trading Account',
      'Only in the Balance Sheet',
    ],
    answerIndex: 0,
    explanation: 'An item outside the Trial Balance is recorded twice in the final '
        'accounts.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Final Accounts',
    text: 'Depreciation on office furniture is debited to the:',
    options: [
      'Trading Account',
      'Furniture Account only',
      'Capital Account',
      'Profit and Loss Account',
    ],
    answerIndex: 3,
    explanation: 'It is an indirect (office) expense, so it goes to Profit and Loss '
        'and is deducted from the asset.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Final Accounts',
    text: 'Gross profit is ₹80,000, operating expenses ₹30,000 and other '
        'income ₹5,000. Net profit is:',
    options: ['₹45,000', '₹1,15,000', '₹55,000', '₹50,000'],
    answerIndex: 2,
    explanation: 'Net profit = 80,000 − 30,000 + 5,000 = ₹55,000.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Final Accounts',
    text: 'Income received in advance is shown in the Balance Sheet as a:',
    options: [
      'Current liability',
      'Part of capital',
      'Fixed asset',
      'Current asset',
    ],
    answerIndex: 0,
    explanation: 'The business owes the service or goods for that income, so it is a '
        'liability.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Depreciation',
    text: 'A machine costs ₹1,00,000 with a residual value of ₹10,000 and a '
        'useful life of 9 years. Annual depreciation under SLM is:',
    options: ['₹11,111', '₹9,000', '₹10,000', '₹12,000'],
    answerIndex: 2,
    explanation: 'SLM depreciation = (Cost − Residual value) / Life = 90,000 / 9 = ₹10,000.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Depreciation',
    text: 'A machine costing ₹1,00,000 is depreciated at 10% p.a. on the WDV '
        'method. Its book value after 2 years is:',
    options: ['₹80,000', '₹81,000', '₹90,000', '₹82,000'],
    answerIndex: 1,
    explanation: 'Year 1: 1,00,000 − 10,000 = 90,000. Year 2: 90,000 − 9,000 = ₹81,000.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Depreciation',
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
    chapter: 'Depreciation',
    text: 'Under the straight line method, the amount of depreciation charged '
        'each year is:',
    options: [
      'Lower every year',
      'Higher every year',
      'The same every year',
      'Charged only in the first year',
    ],
    answerIndex: 2,
    explanation: 'The straight line method charges an equal amount every year: (Cost '
        '− Residual value) ÷ Useful life.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Depreciation',
    text: 'Depreciation is charged mainly because of:',
    options: [
      'A fall in interest rates',
      'An increase in sales',
      'A rise in the market value of assets',
      'Wear and tear and the passage of time',
    ],
    answerIndex: 3,
    explanation: 'Fixed assets lose value through use, wear and tear, obsolescence '
        'and the passage of time; depreciation spreads this cost over their '
        'useful life.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Depreciation',
    text: 'A machine costing ₹50,000 with nil residual value and a useful '
        'life of 5 years is depreciated on the straight line method. Its '
        'book value at the end of year 3 is:',
    options: ['₹30,000', '₹10,000', '₹25,000', '₹20,000'],
    answerIndex: 3,
    explanation: 'Annual depreciation = 50,000 ÷ 5 = ₹10,000. After 3 years: 50,000 '
        '− 30,000 = ₹20,000.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Depreciation',
    text: 'Under the written down value method, depreciation is calculated '
        'on:',
    options: [
      'The market value',
      'The book value at the beginning of each year',
      'The original cost every year',
      'The residual value',
    ],
    answerIndex: 1,
    explanation: 'Because the book value falls each year, the depreciation charge '
        'also falls.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Depreciation',
    text: 'Depreciation of wasting assets such as mines and quarries is '
        'usually charged by the:',
    options: [
      'Revaluation method',
      'Sum of years\' digits method',
      'Straight line method',
      'Depletion method',
    ],
    answerIndex: 3,
    explanation: 'The depletion method charges depreciation on the basis of quantity '
        'extracted.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Depreciation',
    text: 'A machine costing ₹2,00,000 is depreciated at 20% p.a. on the '
        'written down value method. Depreciation for the second year is:',
    options: ['₹28,800', '₹32,000', '₹36,000', '₹40,000'],
    answerIndex: 1,
    explanation: 'Year 1: 40,000, leaving 1,60,000. Year 2: 1,60,000 × 20% = '
        '₹32,000.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Depreciation',
    text: 'A machine with a book value of ₹30,000 is sold for ₹25,000. The '
        'result is:',
    options: [
      'A loss of ₹5,000',
      'No profit or loss',
      'A loss of ₹25,000',
      'A profit of ₹5,000',
    ],
    answerIndex: 0,
    explanation: 'Loss on sale = Book value − Sale proceeds = 30,000 − 25,000 = '
        '₹5,000.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Bills of Exchange',
    text: 'In India, the number of days of grace allowed on a time bill of '
        'exchange is:',
    options: ['3 days', '5 days', '7 days', 'No days of grace'],
    answerIndex: 0,
    explanation: 'Three days of grace are added to the due date of a bill payable '
        'after a fixed period. No grace is allowed on bills payable on demand.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Bills of Exchange',
    text: 'The person who draws (makes) a bill of exchange is called the:',
    options: ['Drawer', 'Drawee', 'Payee', 'Endorsee'],
    answerIndex: 0,
    explanation: 'The drawer creates the bill and orders the drawee to pay. The '
        'payee is the person to whom the amount is payable.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Bills of Exchange',
    text: 'A bill dated 1 March 2026 is payable 2 months after date. Its date '
        'of maturity, including days of grace, is:',
    options: ['1 May 2026', '4 May 2026', '3 May 2026', '31 May 2026'],
    answerIndex: 1,
    explanation: 'Two months after 1 March is 1 May; adding 3 days of grace gives 4 '
        'May 2026.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Bills of Exchange',
    text: 'When a dishonoured bill is noted by a Notary Public, the fee paid '
        'is called:',
    options: ['Noting charges', 'Commission', 'Discount', 'Bank charges'],
    answerIndex: 0,
    explanation: 'Noting charges are paid to the Notary Public for recording the '
        'fact of dishonour. They are recoverable from the drawee.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Bills of Exchange',
    text: 'Discounting a bill of exchange means:',
    options: [
      'Returning the bill to the drawer',
      'Getting it encashed from a bank before its due date',
      'Renewing the bill for a further period',
      'Cancelling the bill',
    ],
    answerIndex: 1,
    explanation: 'The holder receives the amount of the bill less a discount '
        '(interest) from the bank before maturity.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Bills of Exchange',
    text: 'When the drawee of a bill becomes insolvent, the amount that '
        'cannot be recovered from the drawee is finally debited by the '
        'drawer to:',
    options: [
      'Sales Account',
      'Capital Account',
      'Bad Debts Account',
      'Bills Receivable Account',
    ],
    answerIndex: 2,
    explanation: 'On dishonour the drawee\'s account is debited. The part that cannot '
        'be recovered from the insolvent estate is written off as a bad '
        'debt.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Bills of Exchange',
    text: 'A bill of exchange becomes binding on the drawee when it is:',
    options: [
      'Discounted with a bank',
      'Drawn by the drawer',
      'Accepted by the drawee',
      'Endorsed by the payee',
    ],
    answerIndex: 2,
    explanation: 'The drawee becomes liable by signing the acceptance on the bill.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Bills of Exchange',
    text: 'An accommodation bill is drawn:',
    options: [
      'To pay taxes',
      'Only by banks',
      'Against a sale of goods',
      'To help a party raise funds, without any trade transaction',
    ],
    answerIndex: 3,
    explanation: 'Accommodation bills are drawn for mutual financial help and are '
        'often discounted.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Bills of Exchange',
    text: 'Retiring a bill of exchange means:',
    options: [
      'Dishonouring it',
      'Paying it before its due date, usually with a rebate',
      'Endorsing it to another party',
      'Renewing it',
    ],
    answerIndex: 1,
    explanation: 'When the drawee pays early, the holder may allow a rebate for the '
        'unexpired period.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Bills of Exchange',
    text: 'Renewal of a bill means:',
    options: [
      'Noting the bill',
      'Paying the bill on its due date',
      'Discounting the bill with a bank',
      'Cancelling the old bill and drawing a new bill for a further period',
    ],
    answerIndex: 3,
    explanation: 'When the drawee cannot pay, a new bill, usually including '
        'interest, replaces the old one.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Consignment',
    text: 'In consignment, the Account Sales is prepared and sent by the:',
    options: ['Consignor', 'Consignee', 'Customer', 'Bank'],
    answerIndex: 1,
    explanation: 'The consignee sells the goods on the consignor\'s behalf and '
        'reports the sales, expenses and commission in an Account Sales.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Consignment',
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
    chapter: 'Consignment',
    text: 'In a consignment, the relationship between the consignor and the '
        'consignee is that of:',
    options: [
      'Principal and agent',
      'Buyer and seller',
      'Partners',
      'Lender and borrower',
    ],
    answerIndex: 0,
    explanation: 'The consignee sells goods on behalf of the consignor for a '
        'commission. Ownership stays with the consignor until the goods are '
        'sold.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Consignment',
    text: 'Goods costing ₹1,00,000 are sent on consignment and the consignor '
        'spends ₹4,000 on freight. Three-fourths of the goods are sold. The '
        'value of closing stock with the consignee (ignoring the '
        'consignee\'s expenses) is:',
    options: ['₹26,000', '₹78,000', '₹25,000', '₹75,000'],
    answerIndex: 0,
    explanation: 'Stock is valued at cost plus a proportionate share of the '
        'consignor\'s expenses: (1,00,000 + 4,000) × 1/4 = ₹26,000.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Consignment',
    text: 'A normal loss of goods sent on consignment is:',
    options: [
      'Absorbed by the remaining goods, increasing their cost per unit',
      'Debited to the Profit and Loss Account',
      'Credited to the Consignment Account at cost',
      'Recovered from the consignee',
    ],
    answerIndex: 0,
    explanation: 'Normal loss is unavoidable and is spread over the good units, so '
        'the closing stock is valued at a higher cost per unit.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Consignment',
    text: 'An abnormal loss of goods sent on consignment is:',
    options: [
      'Ignored',
      'Added to the value of closing stock',
      'Spread over the remaining goods',
      'Credited to the Consignment Account and transferred to the Profit and Loss Account',
    ],
    answerIndex: 3,
    explanation: 'Abnormal loss is avoidable. Its cost is taken out of the '
        'Consignment Account, and any amount not recovered from the insurer '
        'is written off to P&L.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Consignment',
    text: 'A pro forma invoice in a consignment is sent by the:',
    options: [
      'Consignee to the consignor',
      'Customer to the consignee',
      'Bank to the consignor',
      'Consignor to the consignee',
    ],
    answerIndex: 3,
    explanation: 'It gives details of the goods and their prices; it is not a demand '
        'for payment.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Consignment',
    text: 'Goods are sent on consignment at invoice price ₹1,20,000, which is '
        'cost plus 20%. The loading included is:',
    options: ['₹1,00,000', '₹20,000', '₹16,000', '₹24,000'],
    answerIndex: 1,
    explanation: 'Loading = 1,20,000 × 20 ÷ 120 = ₹20,000.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Consignment',
    text: 'The consignee sells goods for ₹80,000 and is entitled to a 5% '
        'commission on sales. The commission is:',
    options: ['₹5,000', '₹3,800', '₹4,000', '₹8,000'],
    answerIndex: 2,
    explanation: 'Commission = 80,000 × 5% = ₹4,000.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Consignment',
    text: 'Which expense incurred by the consignee is included in valuing the '
        'unsold stock?',
    options: [
      'Selling commission',
      'Advertisement',
      'Godown rent',
      'Carriage paid on receiving the goods into the godown',
    ],
    answerIndex: 3,
    explanation: 'Only expenses incurred to bring the goods to the place of sale are '
        'added to stock; selling expenses are not.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Partnership Accounts',
    text: 'In the absence of a partnership deed, interest on partners\' capital is:',
    options: ['6% p.a.', '12% p.a.', 'Not allowed', 'At the bank rate'],
    answerIndex: 2,
    explanation: 'Under the Indian Partnership Act, 1932, without an agreement '
        'partners are not entitled to interest on capital.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Partnership Accounts',
    text: 'In the absence of a partnership deed, interest on a loan advanced by '
        'a partner to the firm is allowed at:',
    options: ['9% p.a.', '12% p.a.', 'Nil', '6% p.a.'],
    answerIndex: 3,
    explanation: 'Without an agreement, a partner who advances money beyond the '
        'agreed capital is entitled to interest at 6% per annum.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Partnership Accounts',
    text: 'A and B share profits 3 : 2. C is admitted for a 1/5 share, taken '
        'from A and B in their old ratio. The new profit-sharing ratio is:',
    options: ['12 : 8 : 5', '3 : 2 : 1', '3 : 2 : 5', '6 : 4 : 5'],
    answerIndex: 0,
    explanation: 'Remaining share 4/5 is split 3 : 2 — A = 12/25, B = 8/25. '
        'C = 1/5 = 5/25. New ratio 12 : 8 : 5.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Partnership Accounts',
    text: 'Average profit is ₹50,000. Goodwill at 2 years\' purchase of average '
        'profit is:',
    options: ['₹25,000', '₹50,000', '₹1,00,000', '₹1,50,000'],
    answerIndex: 2,
    explanation: 'Goodwill = Average profit × Number of years\' purchase = 50,000 × 2 = ₹1,00,000.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Partnership Accounts',
    text: 'In the absence of a partnership deed, profits and losses are '
        'shared:',
    options: [
      'In the ratio of time devoted',
      'In the ratio of capitals',
      'In the ratio of drawings',
      'Equally',
    ],
    answerIndex: 3,
    explanation: 'Section 13(b) of the Indian Partnership Act, 1932 provides that '
        'partners share profits and losses equally unless agreed otherwise.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Partnership Accounts',
    text: 'A and B share profits 3 : 2. C is admitted and the new ratio is 2 '
        ': 2 : 1. The sacrificing ratio of A and B is:',
    options: ['1 : 0', '2 : 3', '3 : 2', '1 : 1'],
    answerIndex: 0,
    explanation: 'Sacrifice = Old share − New share. A: 3/5 − 2/5 = 1/5; B: 2/5 − '
        '2/5 = 0. So A alone sacrifices: 1 : 0.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Partnership Accounts',
    text: 'On the retirement of a partner, the gaining ratio of the '
        'continuing partners is calculated as:',
    options: [
      'Equal shares',
      'Capital ratio',
      'Old ratio − New ratio',
      'New ratio − Old ratio',
    ],
    answerIndex: 3,
    explanation: 'The continuing partners gain the retiring partner\'s share; each '
        'partner\'s gain is new share minus old share.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Partnership Accounts',
    text: 'Interest on drawings is:',
    options: [
      'Ignored',
      'Debited to the Profit and Loss Appropriation Account',
      'Credited to the partner\'s capital account',
      'Debited to the partner\'s capital or current account',
    ],
    answerIndex: 3,
    explanation: 'Interest on drawings is a charge on partners and is credited to '
        'the Profit and Loss Appropriation Account.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Partnership Accounts',
    text: 'Under the fluctuating capital method, a partner\'s salary is '
        'credited to the partner\'s:',
    options: [
      'Current Account',
      'Capital Account',
      'Loan Account',
      'Drawings Account',
    ],
    answerIndex: 1,
    explanation: 'Under fixed capitals, such items go to the Current Account '
        'instead.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Partnership Accounts',
    text: 'Average profit is ₹60,000 and normal profit ₹40,000. Goodwill at 3 '
        'years\' purchase of super profit is:',
    options: ['₹20,000', '₹60,000', '₹1,80,000', '₹1,20,000'],
    answerIndex: 1,
    explanation: 'Super profit = 60,000 − 40,000 = 20,000; goodwill = 20,000 × 3 = '
        '₹60,000.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Not-for-Profit Organisations',
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
    chapter: 'Not-for-Profit Organisations',
    text: 'The Income and Expenditure Account of a not-for-profit '
        'organisation is prepared on the:',
    options: [
      'Cash basis, like a Cash Book',
      'Accrual basis, like a Profit and Loss Account',
      'Basis of capital receipts only',
      'Single entry basis',
    ],
    answerIndex: 1,
    explanation: 'It records revenue income and expenses of the period on an accrual '
        'basis, including outstanding and prepaid items.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Not-for-Profit Organisations',
    text: 'In a not-for-profit organisation, the excess of income over '
        'expenditure is called:',
    options: ['Surplus', 'Net profit', 'Deficit', 'Capital fund'],
    answerIndex: 0,
    explanation: 'An excess of income over expenditure is a surplus and is added to '
        'the Capital Fund; the opposite is a deficit.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Not-for-Profit Organisations',
    text: 'Subscriptions received during the year are ₹50,000. These include '
        '₹5,000 for next year and ₹3,000 for last year. Subscriptions of '
        '₹4,000 for the current year are outstanding. Subscription income '
        'for the year is:',
    options: ['₹42,000', '₹50,000', '₹46,000', '₹52,000'],
    answerIndex: 2,
    explanation: '50,000 − 5,000 (next year) − 3,000 (last year) + 4,000 '
        '(outstanding) = ₹46,000.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Not-for-Profit Organisations',
    text: 'Life membership fees received by a club are generally:',
    options: [
      'Ignored',
      'Treated as a capital receipt and added to the Capital Fund',
      'Treated as an expense',
      'Treated as revenue income of the year',
    ],
    answerIndex: 1,
    explanation: 'Life membership fees are non-recurring and are usually '
        'capitalised, i.e., added to the Capital Fund.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Not-for-Profit Organisations',
    text: 'The Capital Fund of a not-for-profit organisation is equivalent '
        'to:',
    options: [
      'A current liability',
      'Revenue income',
      'A fixed asset',
      'The capital of a trading concern',
    ],
    answerIndex: 3,
    explanation: 'The Capital Fund (excess of assets over liabilities) plays the '
        'same role as capital in a business.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Not-for-Profit Organisations',
    text: 'The closing balance of a Receipts and Payments Account represents:',
    options: [
      'Capital Fund',
      'Surplus for the year',
      'Cash and bank balances at the end of the year',
      'Outstanding expenses',
    ],
    answerIndex: 2,
    explanation: 'It is a summary of cash and bank transactions, like a Cash Book.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Not-for-Profit Organisations',
    text: 'Subscriptions outstanding at the end of the year are shown in the '
        'Balance Sheet as:',
    options: [
      'Income received in advance',
      'An asset',
      'A liability',
      'Part of the Capital Fund',
    ],
    answerIndex: 1,
    explanation: 'Amounts due from members are receivables of the organisation.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Not-for-Profit Organisations',
    text: 'A small general donation not earmarked for any purpose is usually '
        'treated as:',
    options: [
      'Revenue income',
      'An expense',
      'A capital receipt added to a fund',
      'A liability',
    ],
    answerIndex: 0,
    explanation: 'General donations are credited to the Income and Expenditure '
        'Account; large or earmarked donations are capitalised.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Not-for-Profit Organisations',
    text: 'At the start of the year a club\'s assets are ₹1,20,000 and '
        'liabilities ₹20,000. The opening Capital Fund is:',
    options: ['₹1,00,000', '₹20,000', '₹1,40,000', '₹1,20,000'],
    answerIndex: 0,
    explanation: 'Capital Fund = Assets − Liabilities = 1,20,000 − 20,000 = '
        '₹1,00,000.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Single Entry System',
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
    chapter: 'Single Entry System',
    text: 'Closing capital is ₹80,000, opening capital ₹60,000, drawings '
        '₹10,000 and additional capital introduced ₹5,000. The profit for '
        'the year is:',
    options: ['₹35,000', '₹15,000', '₹20,000', '₹25,000'],
    answerIndex: 3,
    explanation: 'Profit = Closing capital − Opening capital + Drawings − Additional '
        'capital = 80,000 − 60,000 + 10,000 − 5,000 = ₹25,000.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Single Entry System',
    text: 'Under the single entry system, capital at a date is found by '
        'preparing a:',
    options: [
      'Receipts and Payments Account',
      'Statement of Affairs',
      'Cash Flow Statement',
      'Trial Balance',
    ],
    answerIndex: 1,
    explanation: 'A Statement of Affairs lists assets and liabilities; the excess of '
        'assets over liabilities is the capital.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Single Entry System',
    text: 'The single entry system is generally followed by:',
    options: [
      'Companies',
      'Small traders and sole proprietors',
      'Banks',
      'Government departments',
    ],
    answerIndex: 1,
    explanation: 'It is an incomplete record kept mainly by small businesses; '
        'companies must maintain accounts on the double entry system.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Single Entry System',
    text: 'Opening debtors are ₹20,000, cash received from debtors ₹70,000 '
        'and closing debtors ₹25,000. There were no returns or bad debts. '
        'Credit sales are:',
    options: ['₹70,000', '₹1,15,000', '₹75,000', '₹65,000'],
    answerIndex: 2,
    explanation: 'Credit sales = Closing debtors + Cash received − Opening debtors = '
        '25,000 + 70,000 − 20,000 = ₹75,000.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Single Entry System',
    text: 'A major drawback of the single entry system is that:',
    options: [
      'It is compulsory for companies',
      'A Trial Balance cannot be prepared',
      'It is more expensive than double entry',
      'It records both aspects of every transaction',
    ],
    answerIndex: 1,
    explanation: 'Because both aspects of transactions are not recorded, the '
        'arithmetical accuracy cannot be checked through a Trial Balance.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Single Entry System',
    text: 'Opening creditors are ₹15,000, cash paid to creditors ₹60,000 and '
        'closing creditors ₹20,000. Credit purchases are:',
    options: ['₹95,000', '₹65,000', '₹55,000', '₹60,000'],
    answerIndex: 1,
    explanation: 'Credit purchases = Closing creditors + Payments − Opening '
        'creditors = 20,000 + 60,000 − 15,000 = ₹65,000.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Single Entry System',
    text: 'The conversion method under single entry means:',
    options: [
      'Converting foreign currency',
      'Converting incomplete records into double entry to prepare final accounts',
      'Converting a firm into a company',
      'Converting capital into loans',
    ],
    answerIndex: 1,
    explanation: 'Missing figures are found from total accounts, and a Trading and '
        'Profit and Loss Account is prepared.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Single Entry System',
    text: 'Closing capital is ₹1,50,000, profit for the year ₹30,000 and '
        'drawings ₹10,000, with no fresh capital. Opening capital was:',
    options: ['₹1,70,000', '₹1,30,000', '₹1,10,000', '₹1,50,000'],
    answerIndex: 1,
    explanation: 'Opening capital = Closing capital − Profit + Drawings = 1,50,000 − '
        '30,000 + 10,000 = ₹1,30,000.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Single Entry System',
    text: 'Under single entry, a missing figure of cash sales is usually '
        'found by preparing the:',
    options: [
      'Cash Account',
      'Bills Receivable Account',
      'Statement of Affairs',
      'Capital Account',
    ],
    answerIndex: 0,
    explanation: 'The balancing figure on the receipts side of the Cash Account '
        'gives the missing cash sales.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Ratio Analysis',
    text: 'Current assets are ₹2,00,000 and current liabilities are ₹1,00,000. '
        'The current ratio is:',
    options: ['1 : 2', '2 : 1', '1 : 1', '3 : 1'],
    answerIndex: 1,
    explanation: 'Current ratio = Current assets / Current liabilities = 2,00,000 / 1,00,000 = 2 : 1.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Ratio Analysis',
    text: 'Current assets are ₹2,00,000, including inventory ₹80,000 and '
        'prepaid expenses ₹20,000. Current liabilities are ₹1,00,000. The '
        'quick ratio is:',
    options: ['1.2 : 1', '2 : 1', '0.8 : 1', '1 : 1'],
    answerIndex: 3,
    explanation: 'Quick assets = 2,00,000 − 80,000 − 20,000 = ₹1,00,000. '
        'Quick ratio = 1,00,000 / 1,00,000 = 1 : 1.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Ratio Analysis',
    text: 'Gross profit is ₹1,00,000 and sales are ₹4,00,000. The gross '
        'profit ratio is:',
    options: ['40%', '25%', '33.33%', '20%'],
    answerIndex: 1,
    explanation: 'Gross profit ratio = Gross profit ÷ Sales × 100 = 1,00,000 ÷ '
        '4,00,000 × 100 = 25%.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Ratio Analysis',
    text: 'Cost of goods sold is ₹3,00,000 and average inventory is ₹50,000. '
        'The inventory turnover ratio is:',
    options: ['6 times', '60 times', '5 times', '3 times'],
    answerIndex: 0,
    explanation: 'Inventory turnover = Cost of goods sold ÷ Average inventory = '
        '3,00,000 ÷ 50,000 = 6 times.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Ratio Analysis',
    text: 'The debt-equity ratio is calculated as:',
    options: [
      'Long-term debt ÷ Shareholders\' funds',
      'Shareholders\' funds ÷ Total assets',
      'Net profit ÷ Sales',
      'Current assets ÷ Current liabilities',
    ],
    answerIndex: 0,
    explanation: 'The debt-equity ratio compares long-term borrowed funds with '
        'owners\' funds and measures long-term solvency.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Ratio Analysis',
    text: 'Net credit sales are ₹6,00,000 and average trade receivables are '
        '₹1,00,000. Taking a 360-day year, the average collection period '
        'is:',
    options: ['60 days', '90 days', '6 days', '36 days'],
    answerIndex: 0,
    explanation: 'Receivables turnover = 6,00,000 ÷ 1,00,000 = 6 times; collection '
        'period = 360 ÷ 6 = 60 days.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Ratio Analysis',
    text: 'Net profit is ₹60,000 and sales are ₹5,00,000. The net profit '
        'ratio is:',
    options: ['60%', '6%', '8.33%', '12%'],
    answerIndex: 3,
    explanation: 'Net profit ratio = 60,000 ÷ 5,00,000 × 100 = 12%.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Ratio Analysis',
    text: 'The generally accepted ideal current ratio is:',
    options: ['1 : 1', '2 : 1', '3 : 1', '1 : 2'],
    answerIndex: 1,
    explanation: 'Current assets twice current liabilities is considered a '
        'comfortable cushion.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Ratio Analysis',
    text: 'The generally accepted ideal quick (liquid) ratio is:',
    options: ['1 : 1', '1 : 2', '0.5 : 1', '2 : 1'],
    answerIndex: 0,
    explanation: 'Quick assets should at least equal current liabilities.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Ratio Analysis',
    text: 'Shareholders\' funds are ₹6,00,000 and total assets ₹10,00,000. The '
        'proprietary ratio is:',
    options: ['1.67', '0.6', '6', '0.4'],
    answerIndex: 1,
    explanation: 'Proprietary ratio = Shareholders\' funds ÷ Total assets = 6,00,000 '
        '÷ 10,00,000 = 0.6.',
  ),
];
