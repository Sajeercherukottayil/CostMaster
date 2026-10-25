import '../../../models/question.dart';

const faMoreQuestions = [
  // Accounting Concepts & Principles
  Question(
    subjectId: 'fa',
    chapter: 'Accounting Concepts & Principles',
    text:
        'Charging the expenses of a period against the revenue of the same '
        'period follows the:',
    options: [
      'Matching concept',
      'Money measurement concept',
      'Entity concept',
      'Cost concept',
    ],
    answerIndex: 0,
    explanation:
        'The matching concept requires expenses incurred to earn '
        'revenue to be recorded in the same period as that revenue, so that '
        'profit is measured correctly.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Accounting Concepts & Principles',
    text:
        'Under the realisation (revenue recognition) concept, revenue from '
        'selling goods is generally recognised when:',
    options: [
      'The order is received',
      'Cash is received',
      'Goods are delivered and ownership passes',
      'The goods are manufactured',
    ],
    answerIndex: 2,
    explanation:
        'Revenue is realised when the goods are transferred to the '
        'buyer and the seller gets a legal right to receive payment, even if '
        'cash comes later.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Accounting Concepts & Principles',
    text:
        'Dividing the life of a business into periods, usually a year, for '
        'measuring profit follows the:',
    options: [
      'Going concern concept',
      'Accounting period concept',
      'Dual aspect concept',
      'Materiality concept',
    ],
    answerIndex: 1,
    explanation:
        'The accounting period (periodicity) concept lets owners and '
        'others measure results and position at regular intervals.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Accounting Concepts & Principles',
    text:
        'Disclosing contingent liabilities in notes to the accounts '
        'follows the:',
    options: [
      'Full disclosure concept',
      'Money measurement concept',
      'Cost concept',
      'Realisation concept',
    ],
    answerIndex: 0,
    explanation:
        'Full disclosure requires all material information that could '
        'affect users\' decisions to be shown in the financial statements or '
        'the notes.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Accounting Concepts & Principles',
    text:
        'Valuing closing inventory at the lower of cost and net realisable '
        'value is an application of:',
    options: ['Consistency', 'Prudence', 'Materiality', 'Accrual'],
    answerIndex: 1,
    explanation:
        'Prudence (conservatism) does not let assets be overstated, '
        'so inventory is written down when its realisable value falls below '
        'cost.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Accounting Concepts & Principles',
    text:
        'Total assets are ₹1,50,000 and owner\'s capital is ₹90,000. '
        'Liabilities are:',
    options: ['₹2,40,000', '₹60,000', '₹90,000', '₹1,50,000'],
    answerIndex: 1,
    explanation:
        'Assets = Liabilities + Capital, so Liabilities = 1,50,000 − '
        '90,000 = ₹60,000.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Accounting Concepts & Principles',
    text:
        'Buying goods on credit for ₹10,000 affects the accounting '
        'equation by:',
    options: [
      'Increasing assets and decreasing capital',
      'Increasing assets and increasing liabilities',
      'Decreasing assets and increasing liabilities',
      'No change in total assets',
    ],
    answerIndex: 1,
    explanation:
        'Stock (an asset) rises by ₹10,000, and creditors (a '
        'liability) rise by ₹10,000. Capital is unchanged.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Accounting Concepts & Principles',
    text:
        'Under the cash basis of accounting, outstanding expenses at the '
        'year end are:',
    options: [
      'Recorded as liabilities',
      'Charged to the profit and loss account',
      'Ignored until they are paid',
      'Added to capital',
    ],
    answerIndex: 2,
    explanation:
        'The cash basis records income and expenses only when cash is '
        'received or paid, so unpaid expenses are not recorded.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Accounting Concepts & Principles',
    text:
        'In India, Indian Accounting Standards (Ind AS) for companies are '
        'notified by:',
    options: [
      'The Reserve Bank of India',
      'SEBI',
      'The Central Government',
      'The Institute of Cost Accountants of India',
    ],
    answerIndex: 2,
    explanation:
        'Ind AS are notified by the Central Government (Ministry of '
        'Corporate Affairs) under the Companies Act, 2013, after '
        'recommendation by the National Financial Reporting Authority.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Accounting Concepts & Principles',
    text:
        'The skill and loyalty of a firm\'s employees are not shown in its '
        'accounts because of the:',
    options: [
      'Money measurement concept',
      'Dual aspect concept',
      'Going concern concept',
      'Matching concept',
    ],
    answerIndex: 0,
    explanation:
        'Only events that can be measured in money are recorded. '
        'Employee skill, however valuable, cannot be measured reliably in '
        'money.',
  ),

  // Accounting Process & Rectification of Errors
  Question(
    subjectId: 'fa',
    chapter: 'Accounting Process & Rectification of Errors',
    text:
        'Transferring entries from the journal to the ledger accounts is '
        'called:',
    options: ['Balancing', 'Posting', 'Casting', 'Journalising'],
    answerIndex: 1,
    explanation:
        'Posting transfers each debit and credit from the journal or '
        'subsidiary books to the relevant ledger accounts.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Accounting Process & Rectification of Errors',
    text:
        'Cash deposited into the bank is recorded in a three-column cash '
        'book as a:',
    options: [
      'Compound entry',
      'Contra entry',
      'Opening entry',
      'Closing entry',
    ],
    answerIndex: 1,
    explanation:
        'A contra entry appears on both sides of the cash book: credit '
        'cash column and debit bank column. No ledger posting is needed.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Accounting Process & Rectification of Errors',
    text: 'Bad debts written off earlier and recovered now are credited to:',
    options: [
      'The debtor\'s personal account',
      'Bad Debts Recovered Account',
      'Sales Account',
      'Capital Account',
    ],
    answerIndex: 1,
    explanation:
        'The debtor\'s account was closed when the debt was written '
        'off, so the recovery is income: Cash Dr To Bad Debts Recovered.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Accounting Process & Rectification of Errors',
    text:
        'Under the imprest system of petty cash, the petty cashier is '
        'reimbursed at the end of each period with:',
    options: [
      'A fixed amount every time',
      'The amount actually spent',
      'Double the amount spent',
      'Nothing, the float is not refilled',
    ],
    answerIndex: 1,
    explanation:
        'Reimbursing the amount spent brings the float back to the '
        'fixed imprest amount at the start of each period.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Accounting Process & Rectification of Errors',
    text:
        'Wages paid for constructing the office building were debited to '
        'Wages Account. This is an error of:',
    options: ['Omission', 'Commission', 'Principle', 'Compensation'],
    answerIndex: 2,
    explanation:
        'Capital expenditure has been treated as revenue expenditure, '
        'which breaks an accounting principle. It should be debited to '
        'Building Account.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Accounting Process & Rectification of Errors',
    text:
        'Rent of ₹2,000 paid to the landlord was debited to the landlord\'s '
        'personal account. The rectifying entry is:',
    options: [
      'Landlord A/c Dr To Rent A/c',
      'Rent A/c Dr To Landlord A/c',
      'Rent A/c Dr To Cash A/c',
      'Suspense A/c Dr To Rent A/c',
    ],
    answerIndex: 1,
    explanation:
        'Rent should be debited, so debit Rent and credit the '
        'landlord\'s account to cancel the wrong debit.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Accounting Process & Rectification of Errors',
    text:
        'The Purchases Book was overcast by ₹300. The effect on net profit '
        'is:',
    options: [
      'Overstated by ₹300',
      'Understated by ₹300',
      'No effect',
      'Understated by ₹600',
    ],
    answerIndex: 1,
    explanation:
        'Purchases were overstated, so expenses were too high and '
        'profit was understated by ₹300.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Accounting Process & Rectification of Errors',
    text:
        'Salary of ₹1,500 was posted to Salary Account as ₹150. The Trial '
        'Balance will show:',
    options: [
      'Debit side short by ₹1,350',
      'Credit side short by ₹1,350',
      'Debit side short by ₹1,500',
      'No difference',
    ],
    answerIndex: 0,
    explanation:
        'Cash was credited ₹1,500 but Salary was debited only ₹150, so '
        'the debit total is ₹1,350 less than the credit total.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Accounting Process & Rectification of Errors',
    text: 'The main purpose of preparing a Trial Balance is to:',
    options: [
      'Find the net profit',
      'Check the arithmetical accuracy of ledger postings',
      'Show the financial position',
      'Find all errors in the books',
    ],
    answerIndex: 1,
    explanation:
        'A trial balance checks that total debits equal total '
        'credits. Some errors, such as errors of principle, are not revealed '
        'by it.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Accounting Process & Rectification of Errors',
    text: 'Depreciation on machinery is recorded by:',
    options: [
      'Machinery A/c Dr To Depreciation A/c',
      'Depreciation A/c Dr To Machinery A/c',
      'Depreciation A/c Dr To Cash A/c',
      'Profit & Loss A/c Dr To Cash A/c',
    ],
    answerIndex: 1,
    explanation:
        'Depreciation is an expense (debit) that reduces the asset '
        '(credit). It is a non-cash entry.',
  ),

  // Bank Reconciliation Statement
  Question(
    subjectId: 'fa',
    chapter: 'Bank Reconciliation Statement',
    text: 'A debit balance in the Pass Book means:',
    options: [
      'Money deposited with the bank',
      'An overdraft',
      'Cheques not yet presented',
      'Interest earned',
    ],
    answerIndex: 1,
    explanation:
        'In the bank\'s books, a customer with money in the account '
        'is a creditor (credit balance). A debit balance means the customer '
        'owes the bank, an overdraft.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Bank Reconciliation Statement',
    text:
        'Starting from the credit balance as per Pass Book, cheques issued '
        'but not yet presented are:',
    options: ['Added', 'Deducted', 'Ignored', 'Doubled'],
    answerIndex: 1,
    explanation:
        'The cash book has already reduced its balance for these '
        'cheques but the bank has not. So, from the pass book balance, '
        'deduct them to reach the cash book balance.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Bank Reconciliation Statement',
    text:
        'Starting from the credit balance as per Pass Book, bank charges '
        'not recorded in the Cash Book are:',
    options: ['Added', 'Deducted', 'Ignored', 'Shown separately'],
    answerIndex: 0,
    explanation:
        'The bank has reduced the pass book balance, but the cash '
        'book has not. Adding them back gives the cash book balance.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Bank Reconciliation Statement',
    text:
        'The Pass Book shows a credit balance of ₹20,000. Cheques issued '
        'but not presented are ₹3,000, and cheques deposited but not '
        'credited are ₹5,000. The Cash Book balance is:',
    options: ['₹18,000', '₹22,000', '₹28,000', '₹12,000'],
    answerIndex: 1,
    explanation:
        'From the pass book: 20,000 − 3,000 (issued, not presented) + '
        '5,000 (deposited, not credited) = ₹22,000.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Bank Reconciliation Statement',
    text:
        'A deposit of ₹1,000 was entered twice on the debit side of the '
        'Cash Book. Starting from the Cash Book debit balance, the '
        'adjustment is:',
    options: ['Add ₹1,000', 'Deduct ₹1,000', 'Add ₹2,000', 'No adjustment'],
    answerIndex: 1,
    explanation:
        'The cash book balance is ₹1,000 too high, so deduct ₹1,000 '
        'to reach the pass book balance.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Bank Reconciliation Statement',
    text:
        'A dividend of ₹1,500 was collected directly by the bank. Starting '
        'from the Cash Book debit balance, it is:',
    options: ['Added', 'Deducted', 'Ignored', 'Deducted twice'],
    answerIndex: 0,
    explanation:
        'The pass book balance is higher by the dividend, which the '
        'cash book has not yet recorded.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Bank Reconciliation Statement',
    text:
        'An insurance premium of ₹2,000 paid by the bank under standing '
        'instructions is not yet in the Cash Book. Starting from the Cash '
        'Book debit balance, it is:',
    options: ['Added', 'Deducted', 'Ignored', 'Added twice'],
    answerIndex: 1,
    explanation:
        'The bank has reduced the balance, so the pass book is lower '
        'than the cash book by ₹2,000.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Bank Reconciliation Statement',
    text:
        'The Cash Book shows an overdraft of ₹8,000. A cheque of ₹2,000 '
        'was deposited but not yet credited by the bank. The overdraft as per '
        'Pass Book is:',
    options: ['₹6,000', '₹8,000', '₹10,000', '₹2,000'],
    answerIndex: 2,
    explanation:
        'The cash book has reduced its overdraft by the deposit, but '
        'the bank has not. So the pass book overdraft is 8,000 + 2,000 = '
        '₹10,000.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Bank Reconciliation Statement',
    text:
        'A cheque issued for ₹450 was recorded in the Cash Book as ₹540. '
        'Starting from the Cash Book debit balance, the adjustment is:',
    options: ['Add ₹90', 'Deduct ₹90', 'Add ₹540', 'Deduct ₹450'],
    answerIndex: 0,
    explanation:
        'The cash book was credited ₹90 too much, so its balance is '
        'understated. Add ₹90 to reach the pass book balance.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Bank Reconciliation Statement',
    text: 'A Bank Reconciliation Statement is:',
    options: [
      'An account in the ledger',
      'A statement, not part of the double-entry books',
      'A subsidiary book',
      'Part of the final accounts',
    ],
    answerIndex: 1,
    explanation:
        'It is a statement prepared to explain the difference between '
        'two balances. Any errors it reveals are corrected through the cash '
        'book.',
  ),

  // Final Accounts
  Question(
    subjectId: 'fa',
    chapter: 'Final Accounts',
    text: 'Which of the following is a revenue expenditure?',
    options: [
      'Purchase of a delivery van',
      'Repairs to machinery',
      'Cost of installing new machinery',
      'Purchase of land',
    ],
    answerIndex: 1,
    explanation:
        'Repairs maintain an asset\'s existing condition and benefit '
        'only the current year. The others create or improve long-term '
        'assets.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Final Accounts',
    text:
        'Heavy advertising expenditure on launching a new product, whose '
        'benefit is expected to last several years, is usually:',
    options: [
      'Capital expenditure',
      'Deferred revenue expenditure',
      'A current liability',
      'Capital receipt',
    ],
    answerIndex: 1,
    explanation:
        'It is revenue in nature but its benefit lasts more than a '
        'year. Note that under current accounting standards, most such costs '
        'are charged to profit and loss when incurred.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Final Accounts',
    text:
        'Sales returns (returns inwards) are shown in the Trading Account '
        'as a deduction from:',
    options: ['Purchases', 'Sales', 'Closing stock', 'Gross profit'],
    answerIndex: 1,
    explanation:
        'Returns inwards reduce sales, giving net sales on the credit '
        'side of the Trading Account.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Final Accounts',
    text:
        'Net sales are ₹4,00,000 and gross profit is 25% on cost. Gross '
        'profit is:',
    options: ['₹1,00,000', '₹80,000', '₹75,000', '₹1,25,000'],
    answerIndex: 1,
    explanation:
        '25% on cost equals 20% on sales (25 ÷ 125). Gross profit = '
        '4,00,000 × 20% = ₹80,000.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Final Accounts',
    text: 'Accrued income is shown in the Balance Sheet as:',
    options: [
      'A current liability',
      'A current asset',
      'A deduction from capital',
      'A fixed asset',
    ],
    answerIndex: 1,
    explanation:
        'Accrued income has been earned but not yet received, so the '
        'business has a right to receive it.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Final Accounts',
    text: 'Wages paid to factory workers are debited to the:',
    options: [
      'Trading Account',
      'Profit and Loss Account',
      'Balance Sheet',
      'Capital Account',
    ],
    answerIndex: 0,
    explanation:
        'Factory wages are a direct expense of production, so they '
        'are part of cost of goods sold in the Trading Account.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Final Accounts',
    text: 'Drawings by the proprietor are shown in the Balance Sheet as:',
    options: [
      'A current asset',
      'A deduction from capital',
      'An expense',
      'A liability',
    ],
    answerIndex: 1,
    explanation:
        'Drawings reduce the owner\'s investment, so they are deducted '
        'from capital. They are not a business expense.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Final Accounts',
    text:
        'When closing stock appears inside the Trial Balance (because '
        'purchases have been adjusted for it), it is shown:',
    options: [
      'In the Trading Account only',
      'In the Balance Sheet only',
      'In both the Trading Account and the Balance Sheet',
      'In the Profit and Loss Account',
    ],
    answerIndex: 1,
    explanation:
        'Purchases already reflect the closing stock, so showing it '
        'again in the Trading Account would count it twice. It goes only in '
        'the Balance Sheet.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Final Accounts',
    text:
        'Goods worth ₹10,000 were destroyed by fire and were not insured. '
        'The loss is debited to:',
    options: [
      'Trading Account',
      'Profit and Loss Account',
      'Capital Account',
      'Purchases Account',
    ],
    answerIndex: 1,
    explanation:
        'An abnormal loss is a charge against net profit. The Trading '
        'Account is credited (or purchases reduced) so gross profit is not '
        'affected.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Final Accounts',
    text: 'Creating a provision for doubtful debts is recorded by debiting:',
    options: [
      'Debtors Account',
      'Profit and Loss Account',
      'Sales Account',
      'Capital Account',
    ],
    answerIndex: 1,
    explanation:
        'The provision is a charge against profit. It is deducted '
        'from debtors in the Balance Sheet.',
  ),

  // Depreciation
  Question(
    subjectId: 'fa',
    chapter: 'Depreciation',
    text: 'Depreciation is best described as:',
    options: [
      'A method of valuing an asset at market price',
      'Allocation of an asset\'s depreciable amount over its useful life',
      'Creating a fund to replace the asset',
      'A cash expense',
    ],
    answerIndex: 1,
    explanation:
        'Depreciation allocates cost less residual value over the '
        'useful life. It is not a valuation method, and it does not involve '
        'cash.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Depreciation',
    text:
        'Under the sum-of-years\'-digits method, an asset has a life of 4 '
        'years. The fraction of the depreciable amount charged in year 1 '
        'is:',
    options: ['1/4', '4/10', '1/10', '3/10'],
    answerIndex: 1,
    explanation:
        'Sum of digits = 4 + 3 + 2 + 1 = 10. Year 1 charges 4/10, year '
        '2 charges 3/10, and so on.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Depreciation',
    text:
        'An asset costing ₹1,00,000 has a written down value of ₹81,000 '
        'after 2 years. The WDV rate is:',
    options: ['9.5%', '10%', '19%', '20%'],
    answerIndex: 1,
    explanation: '1,00,000 × (1 − r)² = 81,000, so (1 − r) = 0.9 and r = 10%.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Depreciation',
    text:
        'Under the provision for depreciation method, the asset account '
        'shows:',
    options: [
      'Written down value each year',
      'Original cost throughout its life',
      'Market value',
      'Replacement cost',
    ],
    answerIndex: 1,
    explanation:
        'Depreciation is credited to a separate Provision for '
        'Depreciation (accumulated depreciation) Account, so the asset '
        'account stays at cost.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Depreciation',
    text:
        'A machine costing ₹60,000 is bought on 1 October. It is '
        'depreciated at 10% a year on the straight line method, and the year '
        'ends on 31 March. Depreciation for the first year is:',
    options: ['₹6,000', '₹3,000', '₹4,500', '₹1,500'],
    answerIndex: 1,
    explanation:
        'The machine is used for 6 months, so 60,000 × 10% × 6/12 = '
        '₹3,000.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Depreciation',
    text: 'The annuity method of depreciation takes into account:',
    options: [
      'Interest on the money invested in the asset',
      'Market value of the asset',
      'Hours worked by the machine',
      'Inflation only',
    ],
    answerIndex: 0,
    explanation:
        'The annuity method treats the purchase as an investment that '
        'could have earned interest, and charges a fixed annual amount that '
        'covers cost plus interest.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Depreciation',
    text: 'The machine hour rate method of depreciation is suitable for:',
    options: [
      'Land',
      'Assets whose usage can be measured in hours',
      'Patents',
      'Buildings',
    ],
    answerIndex: 1,
    explanation:
        'Depreciation is charged per hour of use, so it suits '
        'machines where running hours are recorded.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Depreciation',
    text: 'Which asset is generally NOT depreciated?',
    options: ['Machinery', 'Furniture', 'Freehold land', 'Vehicles'],
    answerIndex: 2,
    explanation:
        'Freehold land normally has an unlimited useful life, so it is '
        'not depreciated.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Depreciation',
    text:
        'A machine costing ₹80,000 bought on 1 April 2023 is depreciated '
        'at 10% a year on the straight line method. It is sold on 31 March '
        '2025 for ₹60,000. The result is:',
    options: [
      'Profit of ₹4,000',
      'Loss of ₹4,000',
      'Loss of ₹20,000',
      'Profit of ₹16,000',
    ],
    answerIndex: 1,
    explanation:
        'Two years\' depreciation = 16,000, so book value = 64,000. '
        'Sale at 60,000 gives a loss of ₹4,000.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Depreciation',
    text: 'Obsolescence, as a cause of depreciation, means:',
    options: [
      'Wear and tear from use',
      'An asset becoming outdated because of new technology',
      'Expiry of a lease',
      'Damage by accident',
    ],
    answerIndex: 1,
    explanation:
        'An asset may still work but be uneconomic because better '
        'technology has arrived. Wear and tear and expiry of time are '
        'separate causes.',
  ),

  // Bills of Exchange
  Question(
    subjectId: 'fa',
    chapter: 'Bills of Exchange',
    text:
        'The drawer endorses a bill receivable to a creditor. The entry in '
        'the drawer\'s books is:',
    options: [
      'Bills Receivable A/c Dr To Creditor',
      'Creditor Dr To Bills Receivable A/c',
      'Creditor Dr To Bank A/c',
      'Bank A/c Dr To Bills Receivable A/c',
    ],
    answerIndex: 1,
    explanation:
        'The creditor receives the bill in settlement, so the '
        'creditor\'s account is debited and Bills Receivable is credited.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Bills of Exchange',
    text:
        'A bill of ₹20,000 is discounted with a bank 3 months before its '
        'due date at 12% a year. The discount is:',
    options: ['₹2,400', '₹600', '₹200', '₹1,200'],
    answerIndex: 1,
    explanation:
        'Discount = 20,000 × 12% × 3/12 = ₹600. The bank pays '
        '₹19,400.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Bills of Exchange',
    text:
        'A bill dated 15 January 2026 is payable 90 days after date. Its '
        'due date, including days of grace, is:',
    options: [
      '15 April 2026',
      '18 April 2026',
      '16 April 2026',
      '14 April 2026',
    ],
    answerIndex: 1,
    explanation:
        'Counting 90 days from 16 January: January 16, February 28 '
        '(44), March 31 (75), April 15 (90), so 15 April. Add 3 days of '
        'grace: 18 April 2026.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Bills of Exchange',
    text:
        'A bill sent to the bank for collection is recorded in the '
        'drawer\'s books by debiting:',
    options: [
      'Bank Account',
      'Bills Sent for Collection Account',
      'Drawee\'s Account',
      'Bills Payable Account',
    ],
    answerIndex: 1,
    explanation:
        'The bill has not yet been paid, so it is moved to Bills Sent '
        'for Collection. Bank is debited only when the bank collects it.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Bills of Exchange',
    text:
        'A drawee becomes insolvent with a bill of ₹10,000 outstanding, '
        'and his estate pays 40 paise in the rupee. The amount written off '
        'as a bad debt is:',
    options: ['₹4,000', '₹6,000', '₹10,000', '₹400'],
    answerIndex: 1,
    explanation:
        'Amount received = 10,000 × 0.40 = 4,000. The rest, ₹6,000, '
        'is irrecoverable and written off.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Bills of Exchange',
    text:
        'A bill discounted with the bank is dishonoured on the due date. In '
        'the drawer\'s books, the entry is:',
    options: [
      'Drawee Dr To Bills Receivable A/c',
      'Drawee Dr To Bank A/c',
      'Bank A/c Dr To Drawee',
      'Bills Receivable A/c Dr To Bank A/c',
    ],
    answerIndex: 1,
    explanation:
        'The bank recovers the amount from the drawer, and the drawer '
        'charges the drawee: Drawee Dr To Bank.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Bills of Exchange',
    text:
        'A bill of ₹10,000 is renewed for 3 months with interest at 12% a '
        'year. The interest charged is:',
    options: ['₹1,200', '₹300', '₹100', '₹400'],
    answerIndex: 1,
    explanation:
        'Interest = 10,000 × 12% × 3/12 = ₹300, usually added to the '
        'amount of the new bill.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Bills of Exchange',
    text: 'The person to whom the amount of a bill is payable is the:',
    options: ['Drawer', 'Drawee', 'Payee', 'Acceptor'],
    answerIndex: 2,
    explanation:
        'The payee receives payment. Often the drawer is also the '
        'payee.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Bills of Exchange',
    text: 'A Bills Payable Book is a:',
    options: [
      'Ledger',
      'Subsidiary book of original entry',
      'Final account',
      'Statement prepared by the bank',
    ],
    answerIndex: 1,
    explanation:
        'It records all bills accepted by the business, and totals '
        'are posted to the Bills Payable Account.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Bills of Exchange',
    text: 'In the drawee\'s books, accepting a bill is recorded as:',
    options: [
      'Drawer Dr To Bills Payable A/c',
      'Bills Payable A/c Dr To Drawer',
      'Bills Receivable A/c Dr To Drawer',
      'Cash A/c Dr To Bills Payable A/c',
    ],
    answerIndex: 0,
    explanation:
        'The debt to the drawer is replaced by a bill payable, a '
        'liability: Drawer Dr To Bills Payable.',
  ),

  // Consignment
  Question(
    subjectId: 'fa',
    chapter: 'Consignment',
    text:
        'In the consignor\'s books, Goods Sent on Consignment Account is '
        'closed by transfer to:',
    options: [
      'Consignment Account',
      'Trading Account (or Purchases Account)',
      'Consignee\'s Account',
      'Profit and Loss Account',
    ],
    answerIndex: 1,
    explanation:
        'Goods sent are not sales, so the account is credited to '
        'reduce purchases (or the trading account) and avoid double '
        'counting.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Consignment',
    text: 'When the consignee receives goods on consignment, the consignee:',
    options: [
      'Debits Purchases Account',
      'Makes no entry for the goods',
      'Credits Sales Account',
      'Debits Stock Account',
    ],
    answerIndex: 1,
    explanation:
        'The goods still belong to the consignor, so the consignee '
        'records no entry for receiving them, only for expenses, sales and '
        'commission.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Consignment',
    text:
        '100 units costing ₹200 each are sent on consignment; the consignor '
        'pays freight of ₹2,000. 10 units are lost in transit (abnormal). '
        'The abnormal loss is:',
    options: ['₹2,000', '₹2,200', '₹2,020', '₹200'],
    answerIndex: 1,
    explanation:
        'Cost per unit = 200 + 2,000/100 = ₹220. Abnormal loss = 10 × '
        '220 = ₹2,200.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Consignment',
    text:
        'Sales on consignment are ₹1,00,000. The consignee gets ordinary '
        'commission of 5% and del credere commission of 2% on sales. Total '
        'commission is:',
    options: ['₹5,000', '₹2,000', '₹7,000', '₹10,000'],
    answerIndex: 2,
    explanation: 'Total commission = (5% + 2%) × 1,00,000 = ₹7,000.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Consignment',
    text:
        'When the consignee gets del credere commission, bad debts on '
        'credit sales are borne by:',
    options: [
      'The consignor',
      'The consignee',
      'Shared equally',
      'The customer',
    ],
    answerIndex: 1,
    explanation:
        'Del credere commission is paid in return for the consignee '
        'guaranteeing collection, so the consignee bears bad debts.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Consignment',
    text:
        'Closing stock with the consignee is ₹24,000 at invoice price, '
        'which is cost plus 20%. The stock reserve (loading) is:',
    options: ['₹4,800', '₹4,000', '₹20,000', '₹2,400'],
    answerIndex: 1,
    explanation: 'Loading = 24,000 × 20/120 = ₹4,000, so cost is ₹20,000.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Consignment',
    text:
        'An advance of ₹10,000 received by the consignor from the consignee '
        'is recorded in the consignor\'s books as:',
    options: [
      'Bank A/c Dr To Consignment A/c',
      'Bank A/c Dr To Consignee A/c',
      'Consignee A/c Dr To Bank A/c',
      'Bank A/c Dr To Sales A/c',
    ],
    answerIndex: 1,
    explanation:
        'The advance is a payment on account by the consignee, so it '
        'is credited to the consignee\'s personal account.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Consignment',
    text: 'The profit on consignment is finally transferred to:',
    options: [
      'The consignee\'s account',
      'The Profit and Loss Account',
      'The Goods Sent on Consignment Account',
      'Capital Account directly',
    ],
    answerIndex: 1,
    explanation:
        'The Consignment Account is a nominal account whose balance, '
        'profit or loss, goes to the consignor\'s Profit and Loss Account.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Consignment',
    text:
        'Which expense of the consignee is NOT included in the value of '
        'unsold stock?',
    options: [
      'Freight to bring goods to the godown',
      'Unloading charges on arrival',
      'Godown rent',
      'Octroi on arrival',
    ],
    answerIndex: 2,
    explanation:
        'Godown rent is recurring and is incurred after the goods '
        'arrive, so it is not part of their cost. Expenses to bring goods to '
        'the godown are included.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Consignment',
    text: 'The Account Sales sent by the consignee shows:',
    options: [
      'Only the goods received',
      'Sales made, expenses incurred, commission and balance due',
      'The consignor\'s profit',
      'Only cash sales',
    ],
    answerIndex: 1,
    explanation:
        'The Account Sales is a periodic statement of what has been '
        'sold, what was spent, the commission and the net amount due or '
        'remitted.',
  ),

  // Partnership Accounts
  Question(
    subjectId: 'fa',
    chapter: 'Partnership Accounts',
    text: 'Under the fixed capital method, each partner has:',
    options: [
      'Only a capital account',
      'A capital account and a current account',
      'Only a current account',
      'A loan account only',
    ],
    answerIndex: 1,
    explanation:
        'Capital stays fixed unless capital is added or withdrawn. '
        'Interest, salary, profit share and drawings go to the current '
        'account.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Partnership Accounts',
    text:
        'On admission of a partner, the profit on revaluation of assets is '
        'shared by:',
    options: [
      'All partners including the new one, in the new ratio',
      'Old partners in their old ratio',
      'The new partner only',
      'Old partners equally',
    ],
    answerIndex: 1,
    explanation:
        'The change in value arose before admission, so it belongs to '
        'the old partners in their old profit-sharing ratio.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Partnership Accounts',
    text:
        'A and B have capitals totalling ₹1,20,000. C brings ₹50,000 for a '
        '1/4 share. Hidden goodwill of the firm is:',
    options: ['₹30,000', '₹50,000', '₹80,000', '₹20,000'],
    answerIndex: 0,
    explanation:
        'Implied total capital = 50,000 × 4 = 2,00,000. Actual '
        'capital = 1,20,000 + 50,000 = 1,70,000. Hidden goodwill = ₹30,000.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Partnership Accounts',
    text:
        'A partner withdraws ₹1,000 at the end of every month. Interest on '
        'drawings is 10% a year. Interest for the year is:',
    options: ['₹1,200', '₹600', '₹550', '₹650'],
    answerIndex: 2,
    explanation:
        'For drawings at the end of each month, the average period is '
        '5.5 months. Interest = 12,000 × 10% × 5.5/12 = ₹550.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Partnership Accounts',
    text:
        'A partner with a 1/3 share dies 3 months into the year. Last '
        'year\'s profit was ₹1,20,000, and his share of profit to the date '
        'of death is based on it. The amount is:',
    options: ['₹40,000', '₹30,000', '₹10,000', '₹13,333'],
    answerIndex: 2,
    explanation:
        'Profit for 3 months = 1,20,000 × 3/12 = 30,000. His share = '
        '30,000 × 1/3 = ₹10,000.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Partnership Accounts',
    text:
        'A, B and C share profits 3 : 2 : 1. C retires and A and B continue '
        'without stating a new ratio. Their gaining ratio is:',
    options: ['1 : 1', '3 : 2', '2 : 3', '3 : 1'],
    answerIndex: 1,
    explanation:
        'With no new ratio, A and B continue in their old ratio 3 : 2, '
        'so they gain C\'s share in 3 : 2.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Partnership Accounts',
    text:
        'C is guaranteed a minimum profit of ₹20,000. Firm profit is '
        '₹80,000 and C\'s share is 1/5. The deficiency borne by the other '
        'partners is:',
    options: ['₹4,000', '₹16,000', '₹20,000', 'Nil'],
    answerIndex: 0,
    explanation:
        'C\'s share = 80,000 × 1/5 = 16,000. Deficiency = 20,000 − '
        '16,000 = ₹4,000, borne by the guaranteeing partners.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Partnership Accounts',
    text:
        'On dissolution, assets and outside liabilities are transferred '
        'to:',
    options: [
      'Revaluation Account',
      'Realisation Account',
      'Capital Account',
      'Profit and Loss Appropriation Account',
    ],
    answerIndex: 1,
    explanation:
        'The Realisation Account records the sale of assets and '
        'payment of liabilities, and shows the profit or loss on '
        'realisation.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Partnership Accounts',
    text:
        'Under the rule in Garner v. Murray, the capital deficiency of an '
        'insolvent partner is borne by the solvent partners in the ratio '
        'of:',
    options: [
      'Their profit-sharing ratio',
      'Their capitals before dissolution',
      'Equally',
      'Their drawings',
    ],
    answerIndex: 1,
    explanation:
        'The loss is a capital loss, so it is shared in the ratio of '
        'the solvent partners\' capitals, unless the partnership agreement '
        'says otherwise.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Partnership Accounts',
    text: 'The sacrificing ratio is calculated as:',
    options: [
      'New ratio − Old ratio',
      'Old ratio − New ratio',
      'Old ratio + New ratio',
      'New ratio ÷ Old ratio',
    ],
    answerIndex: 1,
    explanation:
        'Each old partner\'s sacrifice is the share given up: old '
        'share minus new share.',
  ),

  // Not-for-Profit Organisations
  Question(
    subjectId: 'fa',
    chapter: 'Not-for-Profit Organisations',
    text: 'A legacy received by a club is generally treated as:',
    options: [
      'Revenue income',
      'A capital receipt',
      'A current liability',
      'Revenue expenditure',
    ],
    answerIndex: 1,
    explanation:
        'A legacy is a non-recurring amount received under a will, so '
        'it is added to the capital fund.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Not-for-Profit Organisations',
    text: 'An honorarium paid to the secretary of a club is:',
    options: [
      'A capital expenditure',
      'A revenue expenditure',
      'A capital receipt',
      'Not recorded',
    ],
    answerIndex: 1,
    explanation:
        'An honorarium is a payment for services, so it is charged to '
        'the Income and Expenditure Account.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Not-for-Profit Organisations',
    text:
        'Old furniture with a book value of ₹5,000 is sold for ₹3,000. The '
        'Income and Expenditure Account shows:',
    options: [
      'Income of ₹3,000',
      'Loss of ₹2,000',
      'Income of ₹5,000',
      'Nothing',
    ],
    answerIndex: 1,
    explanation:
        'The Receipts and Payments Account shows the ₹3,000 received. '
        'The Income and Expenditure Account shows only the loss of ₹2,000.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Not-for-Profit Organisations',
    text:
        'Subscription income is ₹60,000. Outstanding subscriptions were '
        '₹5,000 at the start and ₹8,000 at the end; subscriptions in advance '
        'were ₹2,000 at the start and ₹3,000 at the end. Cash received for '
        'subscriptions is:',
    options: ['₹58,000', '₹62,000', '₹60,000', '₹56,000'],
    answerIndex: 0,
    explanation:
        'Cash = Income + Opening outstanding − Closing outstanding − '
        'Opening advance + Closing advance = 60,000 + 5,000 − 8,000 − 2,000 + '
        '3,000 = ₹58,000.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Not-for-Profit Organisations',
    text: 'An endowment fund received by a not-for-profit organisation is:',
    options: [
      'Revenue income',
      'A capital receipt shown as a fund',
      'An expense',
      'A current asset',
    ],
    answerIndex: 1,
    explanation:
        'An endowment is given to provide permanent income, so it is '
        'capitalised and shown on the liabilities side.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Not-for-Profit Organisations',
    text:
        'The excess of expenditure over income in an Income and Expenditure '
        'Account is called:',
    options: ['Surplus', 'Deficit', 'Net profit', 'Capital fund'],
    answerIndex: 1,
    explanation:
        'A deficit is deducted from the capital fund. A surplus is '
        'added to it.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Not-for-Profit Organisations',
    text:
        'Opening stock of sports material is ₹3,000, purchases ₹12,000 and '
        'closing stock ₹4,000. Sports material consumed is:',
    options: ['₹15,000', '₹11,000', '₹19,000', '₹9,000'],
    answerIndex: 1,
    explanation:
        'Consumption = 3,000 + 12,000 − 4,000 = ₹11,000, charged to '
        'the Income and Expenditure Account.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Not-for-Profit Organisations',
    text: 'A donation received for a building fund is:',
    options: [
      'Credited to the Income and Expenditure Account',
      'Added to the building fund on the liabilities side',
      'Shown as a current asset',
      'Treated as revenue expenditure',
    ],
    answerIndex: 1,
    explanation:
        'A specific donation is capitalised in its fund and used only '
        'for that purpose.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Not-for-Profit Organisations',
    text: 'Which item does NOT appear in a Receipts and Payments Account?',
    options: [
      'Subscriptions received',
      'Purchase of furniture',
      'Depreciation on furniture',
      'Salaries paid',
    ],
    answerIndex: 2,
    explanation:
        'Depreciation involves no cash, so it is not recorded in a '
        'cash summary. It appears in the Income and Expenditure Account.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Not-for-Profit Organisations',
    text:
        'Proceeds from the sale of old newspapers by a club are treated '
        'as:',
    options: [
      'A capital receipt',
      'Revenue income',
      'A liability',
      'Deducted from the capital fund',
    ],
    answerIndex: 1,
    explanation:
        'It is a small, recurring receipt, so it is income in the '
        'Income and Expenditure Account.',
  ),

  // Single Entry System
  Question(
    subjectId: 'fa',
    chapter: 'Single Entry System',
    text:
        'Opening debtors are ₹25,000, closing debtors ₹30,000, cash '
        'received from debtors ₹1,20,000 and discount allowed ₹2,000. Credit '
        'sales are:',
    options: ['₹1,27,000', '₹1,17,000', '₹1,23,000', '₹1,15,000'],
    answerIndex: 0,
    explanation:
        'Credit sales = Closing debtors + Cash received + Discount − '
        'Opening debtors = 30,000 + 1,20,000 + 2,000 − 25,000 = ₹1,27,000.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Single Entry System',
    text:
        'Opening bills receivable are ₹10,000, bills received during the '
        'year ₹40,000 and bills collected ₹35,000. Closing bills receivable '
        'are:',
    options: ['₹5,000', '₹15,000', '₹25,000', '₹85,000'],
    answerIndex: 1,
    explanation: 'Closing = 10,000 + 40,000 − 35,000 = ₹15,000.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Single Entry System',
    text: 'The single entry system is also called:',
    options: [
      'Double entry system',
      'Accounts from incomplete records',
      'Mercantile system',
      'Cost accounting',
    ],
    answerIndex: 1,
    explanation:
        'It is not a complete system, because only some accounts are '
        'kept, usually cash and personal accounts.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Single Entry System',
    text:
        'Sales are ₹2,00,000 with a gross profit of 20% on sales. Opening '
        'stock is ₹30,000 and purchases ₹1,50,000. Closing stock is:',
    options: ['₹20,000', '₹40,000', '₹10,000', '₹30,000'],
    answerIndex: 0,
    explanation:
        'Cost of goods sold = 2,00,000 × 80% = 1,60,000. Closing stock '
        '= 30,000 + 1,50,000 − 1,60,000 = ₹20,000.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Single Entry System',
    text:
        'Opening capital is ₹70,000, closing capital ₹50,000, drawings '
        '₹10,000 and fresh capital ₹5,000. The result for the year is:',
    options: [
      'Profit of ₹15,000',
      'Loss of ₹15,000',
      'Loss of ₹20,000',
      'Loss of ₹5,000',
    ],
    answerIndex: 1,
    explanation:
        'Profit = 50,000 + 10,000 − 5,000 − 70,000 = −15,000, a loss '
        'of ₹15,000.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Single Entry System',
    text:
        'Profit before interest on capital is ₹40,000. Interest on opening '
        'capital of ₹1,00,000 at 5% is to be allowed. Net profit is:',
    options: ['₹40,000', '₹35,000', '₹45,000', '₹5,000'],
    answerIndex: 1,
    explanation:
        'Interest = 1,00,000 × 5% = 5,000. Net profit = 40,000 − '
        '5,000 = ₹35,000.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Single Entry System',
    text: 'Under single entry, the accounts usually kept are:',
    options: [
      'All real and nominal accounts',
      'Cash and personal accounts of debtors and creditors',
      'Only nominal accounts',
      'Only real accounts',
    ],
    answerIndex: 1,
    explanation:
        'Typically a cash book and personal accounts are maintained, '
        'while most real and nominal accounts are not.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Single Entry System',
    text:
        'Cash purchases are ₹40,000 and credit purchases are ₹60,000. Total '
        'purchases are:',
    options: ['₹20,000', '₹60,000', '₹1,00,000', '₹40,000'],
    answerIndex: 2,
    explanation:
        'Total purchases = cash + credit = 40,000 + 60,000 = '
        '₹1,00,000.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Single Entry System',
    text:
        'Opening cash is ₹5,000, receipts during the year ₹80,000 and '
        'closing cash ₹15,000. Total payments are:',
    options: ['₹60,000', '₹70,000', '₹90,000', '₹1,00,000'],
    answerIndex: 1,
    explanation: 'Payments = 5,000 + 80,000 − 15,000 = ₹70,000.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Single Entry System',
    text:
        'Opening creditors are ₹20,000, cash paid ₹90,000, discount '
        'received ₹1,000, returns outward ₹4,000 and closing creditors '
        '₹25,000. Credit purchases are:',
    options: ['₹1,00,000', '₹90,000', '₹95,000', '₹1,05,000'],
    answerIndex: 0,
    explanation:
        'Credit purchases = 90,000 + 1,000 + 4,000 + 25,000 − 20,000 = '
        '₹1,00,000.',
  ),

  // Ratio Analysis
  Question(
    subjectId: 'fa',
    chapter: 'Ratio Analysis',
    text:
        'Long-term debt is ₹4,00,000 and shareholders\' funds are '
        '₹5,00,000. The debt-equity ratio is:',
    options: ['1.25 : 1', '0.8 : 1', '0.44 : 1', '2 : 1'],
    answerIndex: 1,
    explanation: 'Debt-equity = 4,00,000 ÷ 5,00,000 = 0.8 : 1.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Ratio Analysis',
    text:
        'Profit before interest and tax is ₹3,00,000 and interest is '
        '₹50,000. The interest coverage ratio is:',
    options: ['5 times', '6 times', '7 times', '0.17 times'],
    answerIndex: 1,
    explanation:
        'Interest coverage = EBIT ÷ Interest = 3,00,000 ÷ 50,000 = 6 '
        'times.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Ratio Analysis',
    text:
        'Sales are ₹5,00,000, cost of goods sold ₹3,00,000 and operating '
        'expenses ₹50,000. The operating ratio is:',
    options: ['60%', '70%', '30%', '10%'],
    answerIndex: 1,
    explanation:
        'Operating ratio = (3,00,000 + 50,000) ÷ 5,00,000 × 100 = '
        '70%.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Ratio Analysis',
    text:
        'EBIT is ₹1,20,000 and capital employed is ₹8,00,000. Return on '
        'capital employed is:',
    options: ['12%', '15%', '20%', '6.67%'],
    answerIndex: 1,
    explanation: 'ROCE = 1,20,000 ÷ 8,00,000 × 100 = 15%.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Ratio Analysis',
    text:
        'Sales are ₹6,00,000 and working capital is ₹1,50,000. The working '
        'capital turnover ratio is:',
    options: ['2 times', '4 times', '6 times', '0.25 times'],
    answerIndex: 1,
    explanation: 'Working capital turnover = 6,00,000 ÷ 1,50,000 = 4 times.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Ratio Analysis',
    text:
        'Credit purchases are ₹4,80,000 and average trade payables are '
        '₹80,000. The average payment period is:',
    options: ['1 month', '2 months', '3 months', '6 months'],
    answerIndex: 1,
    explanation:
        'Payables turnover = 4,80,000 ÷ 80,000 = 6 times a year, so '
        'the payment period = 12 ÷ 6 = 2 months.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Ratio Analysis',
    text:
        'Sales are ₹5,00,000, gross profit is 20% of sales and average '
        'inventory is ₹50,000. Inventory turnover is:',
    options: ['10 times', '8 times', '2 times', '12.5 times'],
    answerIndex: 1,
    explanation:
        'Cost of goods sold = 5,00,000 × 80% = 4,00,000. Inventory '
        'turnover = 4,00,000 ÷ 50,000 = 8 times.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Ratio Analysis',
    text: 'Liquidity ratios mainly measure a firm\'s:',
    options: [
      'Profitability',
      'Long-term solvency',
      'Ability to meet short-term obligations',
      'Efficiency in using assets',
    ],
    answerIndex: 2,
    explanation:
        'The current ratio and quick ratio show whether current '
        'liabilities can be paid from current or quick assets.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Ratio Analysis',
    text:
        'Current assets are ₹2,00,000 and current liabilities ₹1,00,000. If '
        '₹20,000 is paid to creditors, the current ratio becomes:',
    options: ['2 : 1', '2.25 : 1', '1.8 : 1', '1.5 : 1'],
    answerIndex: 1,
    explanation:
        'After payment: 1,80,000 ÷ 80,000 = 2.25 : 1. Paying a '
        'liability raises a current ratio that is above 1.',
  ),
  Question(
    subjectId: 'fa',
    chapter: 'Ratio Analysis',
    text:
        'Profit after tax is ₹5,00,000, preference dividend ₹1,00,000, and '
        'there are 1,00,000 equity shares. Earnings per share is:',
    options: ['₹5', '₹4', '₹6', '₹1'],
    answerIndex: 1,
    explanation: 'EPS = (5,00,000 − 1,00,000) ÷ 1,00,000 = ₹4.',
  ),
];
