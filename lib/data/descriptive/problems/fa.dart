import '../../../models/question.dart';

const faProblems = [
  DescriptiveQuestion(
    subjectId: 'fa',
    chapter: 'Accounting Concepts & Principles',
    text:
        'Show the accounting equation after each transaction: (a) Ram '
        'starts business with cash ₹1,00,000; (b) buys goods on credit '
        '₹30,000; (c) buys furniture for cash ₹20,000; (d) sells goods '
        'costing ₹10,000 for ₹15,000 cash.',
    marks: 5,
    problem: true,
    answer:
        'Assets = Liabilities + Capital\n'
        '(a) Cash 1,00,000 = Capital 1,00,000\n'
        '(b) Cash 1,00,000 + Stock 30,000 = Creditors 30,000 + Capital '
        '1,00,000 (total 1,30,000)\n'
        '(c) Cash 80,000 + Stock 30,000 + Furniture 20,000 = Creditors '
        '30,000 + Capital 1,00,000 (total 1,30,000)\n'
        '(d) Cash 95,000 + Stock 20,000 + Furniture 20,000 = Creditors '
        '30,000 + Capital 1,05,000 (total 1,35,000)\n'
        'In (d), stock falls by its cost of ₹10,000, cash rises by ₹15,000, '
        'and the profit of ₹5,000 increases capital.',
  ),
  DescriptiveQuestion(
    subjectId: 'fa',
    chapter: 'Accounting Concepts & Principles',
    text:
        'Books are closed on 31 March 2026. (a) Rent of ₹12,000 for the '
        'year 1 October 2025 to 30 September 2026 was paid on 1 October '
        '2025. (b) Salary is ₹5,000 a month and ₹55,000 was paid during the '
        'year. Applying the accrual concept, find the expense for the year '
        'and the amount to show in the Balance Sheet for each.',
    marks: 4,
    problem: true,
    answer:
        '(a) Rent: 6 months (October to March) belong to this year.\n'
        '• Rent expense = 12,000 × 6/12 = ₹6,000\n'
        '• Prepaid rent (current asset) = ₹6,000\n'
        '(b) Salary: the full year\'s salary is an expense, whether paid or '
        'not.\n'
        '• Salary expense = 5,000 × 12 = ₹60,000\n'
        '• Outstanding salary (current liability) = 60,000 − 55,000 '
        '= ₹5,000\n'
        'Under the accrual concept, income and expenses are recognised in '
        'the period they relate to, not when cash is paid.',
  ),
  DescriptiveQuestion(
    subjectId: 'fa',
    chapter: 'Accounting Process & Rectification of Errors',
    text:
        'Pass rectifying entries: (a) Furniture bought for ₹5,000 was '
        'debited to Purchases Account. (b) Goods sold to Mohan for ₹2,000 '
        'were posted to Sohan\'s account. (c) Wages of ₹3,000 paid for '
        'installing machinery were debited to Wages Account. (d) The Sales '
        'Book was overcast by ₹1,000. (e) Cash of ₹800 received from Ravi '
        'was credited to his account as ₹80. Errors (d) and (e) were found '
        'after a suspense account was opened.',
    marks: 5,
    problem: true,
    answer:
        '(a) Furniture A/c Dr 5,000\n'
        '      To Purchases A/c 5,000\n'
        '(b) Mohan A/c Dr 2,000\n'
        '      To Sohan A/c 2,000\n'
        '(c) Machinery A/c Dr 3,000\n'
        '      To Wages A/c 3,000\n'
        '(d) Sales A/c Dr 1,000\n'
        '      To Suspense A/c 1,000\n'
        '(e) Suspense A/c Dr 720\n'
        '      To Ravi A/c 720\n'
        'Errors (a) to (c) affect two accounts equally, so they do not '
        'affect the trial balance. Errors (d) and (e) affect one side only, '
        'so they are corrected through the suspense account.',
  ),
  DescriptiveQuestion(
    subjectId: 'fa',
    chapter: 'Accounting Process & Rectification of Errors',
    text:
        'The trial balance did not agree and the difference was put to a '
        'suspense account. Later these errors were found: (i) the Sales Book '
        'was undercast by ₹500; (ii) purchase returns of ₹300 were posted '
        'to the supplier\'s account but not to Purchase Returns Account; '
        '(iii) discount allowed of ₹200 was posted to the credit of Discount '
        'Account. Pass entries, find the original difference, and state the '
        'effect on profit.',
    marks: 6,
    problem: true,
    answer:
        'Rectifying entries:\n'
        '(i) Suspense A/c Dr 500 To Sales A/c 500\n'
        '(ii) Suspense A/c Dr 300 To Purchase Returns A/c 300\n'
        '(iii) Discount Allowed A/c Dr 400 To Suspense A/c 400 (to cancel '
        'the wrong credit of 200 and record the correct debit of 200)\n'
        'Suspense Account:\n'
        '• Debits: Sales 500 + Purchase Returns 300 = 800\n'
        '• Credits: Discount Allowed 400\n'
        '• To close the account, the opening balance must be a credit of '
        '₹400. So the original difference was ₹400, with the credit side of '
        'the trial balance short.\n'
        'Effect on profit: (i) +500, (ii) +300, (iii) −400. Net profit was '
        'understated by ₹400.',
  ),
  DescriptiveQuestion(
    subjectId: 'fa',
    chapter: 'Bank Reconciliation Statement',
    text:
        'On 31 March, the cash book shows a debit bank balance of '
        '₹25,000. Cheques issued but not presented ₹8,000; cheques deposited '
        'but not credited ₹5,000; bank charges ₹200 and interest credited '
        '₹600, not entered in the cash book; a customer deposited ₹2,000 '
        'directly into the bank. Prepare a bank reconciliation statement.',
    marks: 5,
    problem: true,
    answer:
        'Bank Reconciliation Statement as on 31 March\n'
        'Balance as per cash book (Dr): ₹25,000\n'
        'Add:\n'
        '• Cheques issued but not presented: 8,000\n'
        '• Interest credited by bank: 600\n'
        '• Direct deposit by customer: 2,000\n'
        'Subtotal: 35,600\n'
        'Less:\n'
        '• Cheques deposited but not credited: 5,000\n'
        '• Bank charges: 200\n'
        'Balance as per pass book: ₹30,400',
  ),
  DescriptiveQuestion(
    subjectId: 'fa',
    chapter: 'Bank Reconciliation Statement',
    text:
        'The pass book shows an overdraft of ₹15,000 on 31 March. Cheques '
        'issued but not presented ₹4,000; cheques deposited but not cleared '
        '₹6,000; interest on overdraft ₹500 and insurance premium ₹1,200 '
        'paid by the bank under standing instructions, both not yet in the '
        'cash book. Find the balance as per the cash book.',
    marks: 5,
    problem: true,
    answer:
        'Start with the overdraft as per pass book: ₹15,000\n'
        'Add (items that make the cash book overdraft larger):\n'
        '• Cheques issued but not presented: 4,000 (already credited in the '
        'cash book)\n'
        'Subtotal: 19,000\n'
        'Less (items that make the cash book overdraft smaller):\n'
        '• Cheques deposited but not cleared: 6,000 (already debited in '
        'the cash book)\n'
        '• Interest on overdraft: 500 (debited by the bank only)\n'
        '• Insurance premium: 1,200 (debited by the bank only)\n'
        'Overdraft as per cash book (credit balance): ₹11,300\n'
        'Check: 11,300 + 500 + 1,200 − 4,000 + 6,000 = 15,000.',
  ),
  DescriptiveQuestion(
    subjectId: 'fa',
    chapter: 'Final Accounts',
    text:
        'From the following, prepare the Trading Account and find the '
        'gross profit ratio: opening stock ₹20,000; purchases ₹1,20,000; '
        'purchase returns ₹5,000; carriage inwards ₹3,000; wages ₹12,000; '
        'sales ₹2,00,000; sales returns ₹4,000; closing stock ₹25,000.',
    marks: 5,
    problem: true,
    answer:
        'Trading Account\n'
        'Debit side:\n'
        '• Opening stock: 20,000\n'
        '• Purchases less returns: 1,20,000 − 5,000 = 1,15,000\n'
        '• Carriage inwards: 3,000\n'
        '• Wages: 12,000\n'
        '• Gross profit (balancing figure): 71,000\n'
        '• Total: 2,21,000\n'
        'Credit side:\n'
        '• Sales less returns: 2,00,000 − 4,000 = 1,96,000\n'
        '• Closing stock: 25,000\n'
        '• Total: 2,21,000\n'
        'Gross profit ratio = 71,000 ÷ 1,96,000 × 100 = 36.22%\n'
        'Check: cost of goods sold = 20,000 + 1,15,000 + 3,000 + 12,000 − '
        '25,000 = 1,25,000; 1,96,000 − 1,25,000 = 71,000.',
  ),
  DescriptiveQuestion(
    subjectId: 'fa',
    chapter: 'Final Accounts',
    text:
        'Net profit before adjustments is ₹50,000. Find the adjusted net '
        'profit after: outstanding salary ₹3,000; prepaid insurance ₹1,000; '
        'depreciation on machinery of ₹80,000 at 10%; a 5% provision for '
        'doubtful debts on debtors of ₹40,000 (no existing provision); '
        'accrued interest income ₹1,500.',
    marks: 4,
    problem: true,
    answer:
        'Net profit before adjustments: 50,000\n'
        '• Less outstanding salary: (3,000)\n'
        '• Add prepaid insurance: 1,000\n'
        '• Less depreciation (80,000 × 10%): (8,000)\n'
        '• Less provision for doubtful debts (40,000 × 5%): (2,000)\n'
        '• Add accrued interest: 1,500\n'
        'Adjusted net profit: ₹39,500\n'
        'Expenses outstanding and new provisions reduce profit; prepaid '
        'expenses and accrued income increase it.',
  ),
  DescriptiveQuestion(
    subjectId: 'fa',
    chapter: 'Depreciation',
    text:
        'A machine costing ₹1,00,000 is bought on 1 April 2023. Its scrap '
        'value is ₹10,000 after 5 years. Calculate depreciation for 3 years '
        'and the book value at the end of the third year under (a) the '
        'straight line method, and (b) the written down value method at '
        '20%.',
    marks: 6,
    problem: true,
    answer:
        '(a) Straight line method\n'
        'Annual depreciation = (1,00,000 − 10,000) ÷ 5 = ₹18,000\n'
        '• Year 1: 18,000; book value 82,000\n'
        '• Year 2: 18,000; book value 64,000\n'
        '• Year 3: 18,000; book value 46,000\n'
        '(b) Written down value method at 20%\n'
        '• Year 1: 1,00,000 × 20% = 20,000; book value 80,000\n'
        '• Year 2: 80,000 × 20% = 16,000; book value 64,000\n'
        '• Year 3: 64,000 × 20% = 12,800; book value 51,200\n'
        'Total depreciation for 3 years: SLM ₹54,000; WDV ₹48,800. WDV '
        'charges more in early years and less later.',
  ),
  DescriptiveQuestion(
    subjectId: 'fa',
    chapter: 'Depreciation',
    text:
        'A machine bought on 1 April 2023 for ₹50,000 is depreciated at '
        '10% a year on the straight line method. It is sold on 30 September '
        '2025 for ₹35,000. The year ends on 31 March. Find the profit or '
        'loss on sale.',
    marks: 4,
    problem: true,
    answer:
        'Annual depreciation = 50,000 × 10% = ₹5,000\n'
        '• 2023-24: 5,000\n'
        '• 2024-25: 5,000\n'
        '• 2025-26 (1 April to 30 September, 6 months): 5,000 × 6/12 = '
        '2,500\n'
        'Total depreciation to date of sale = 12,500\n'
        'Book value on 30 September 2025 = 50,000 − 12,500 = ₹37,500\n'
        'Loss on sale = 37,500 − 35,000 = ₹2,500, charged to the Profit & '
        'Loss Account.',
  ),
  DescriptiveQuestion(
    subjectId: 'fa',
    chapter: 'Bills of Exchange',
    text:
        'On 1 January 2026, A draws a 3-month bill for ₹10,000 on B, who '
        'accepts it. On 4 February, A discounts it with the bank at 12% a '
        'year. On the due date the bill is dishonoured and noting charges '
        'are ₹50. Find the due date and pass journal entries in A\'s books.',
    marks: 6,
    problem: true,
    answer:
        'Due date: 1 January + 3 months = 1 April, plus 3 days of grace '
        '= 4 April 2026.\n'
        'Discount: from 4 February to 4 April is 2 months, so 10,000 × 12% '
        '× 2/12 = ₹200.\n'
        'Journal entries:\n'
        '• 1 Jan: Bills Receivable A/c Dr 10,000 To B 10,000 (bill '
        'accepted)\n'
        '• 4 Feb: Bank A/c Dr 9,800; Discount A/c Dr 200; To Bills '
        'Receivable A/c 10,000 (bill discounted)\n'
        '• 4 Apr: B Dr 10,050 To Bank A/c 10,050 (bill dishonoured; bank '
        'paid noting charges of ₹50)\n'
        'B is charged the bill amount and the noting charges, because the '
        'dishonour is B\'s fault.',
  ),
  DescriptiveQuestion(
    subjectId: 'fa',
    chapter: 'Bills of Exchange',
    text:
        'A holds B\'s acceptance for ₹10,000. On the due date B cannot pay '
        'in full. B pays ₹2,000 in cash and accepts a new bill for the '
        'balance for 2 months with interest at 12% a year. Pass journal '
        'entries in A\'s books.',
    marks: 5,
    problem: true,
    answer:
        'Balance due = 10,000 − 2,000 = 8,000\n'
        'Interest = 8,000 × 12% × 2/12 = ₹160\n'
        'New bill = 8,000 + 160 = ₹8,160\n'
        'Journal entries:\n'
        '• B Dr 10,000 To Bills Receivable A/c 10,000 (old bill cancelled)\n'
        '• Cash A/c Dr 2,000 To B 2,000 (cash received)\n'
        '• B Dr 160 To Interest A/c 160 (interest charged)\n'
        '• Bills Receivable A/c Dr 8,160 To B 8,160 (new bill accepted)',
  ),
  DescriptiveQuestion(
    subjectId: 'fa',
    chapter: 'Consignment',
    text:
        'X sends 100 units costing ₹500 each to Y on consignment. X pays '
        'freight of ₹2,000. Y pays carriage of ₹1,000 and godown rent of '
        '₹500. Y sells 80 units at ₹800 each and is entitled to 5% '
        'commission on sales. Find the value of unsold stock and the profit '
        'on consignment.',
    marks: 6,
    problem: true,
    answer:
        'Value of closing stock: include the cost of goods plus '
        'non-recurring expenses incurred to bring them to the consignee '
        '(freight and carriage). Godown rent is recurring, so it is '
        'excluded.\n'
        '• Total cost = 50,000 + 2,000 + 1,000 = 53,000, so ₹530 per unit\n'
        '• Closing stock = 20 × 530 = ₹10,600\n'
        'Profit on consignment:\n'
        '• Sales = 80 × 800 = 64,000\n'
        '• Less cost of goods sold = 80 × 530 = 42,400\n'
        '• Less commission = 64,000 × 5% = 3,200\n'
        '• Less godown rent = 500\n'
        '• Profit = ₹17,900',
  ),
  DescriptiveQuestion(
    subjectId: 'fa',
    chapter: 'Consignment',
    text:
        '200 units costing ₹100 each are sent on consignment, and the '
        'consignor pays freight of ₹1,000. 20 units are destroyed in transit '
        'and the insurance company pays ₹1,500. Calculate the abnormal loss '
        'and the amount charged to the Profit & Loss Account.',
    marks: 4,
    problem: true,
    answer:
        'Cost per unit including freight = 100 + (1,000 ÷ 200) = ₹105\n'
        'Abnormal loss = 20 × 105 = ₹2,100\n'
        'Entries:\n'
        '• Abnormal Loss A/c Dr 2,100 To Consignment A/c 2,100\n'
        '• Insurance Claim A/c Dr 1,500 To Abnormal Loss A/c 1,500\n'
        '• Profit & Loss A/c Dr 600 To Abnormal Loss A/c 600\n'
        'Net loss charged to the Profit & Loss Account = ₹600.',
  ),
  DescriptiveQuestion(
    subjectId: 'fa',
    chapter: 'Partnership Accounts',
    text:
        'A and B share profits 3 : 2. Their capitals are ₹2,00,000 and '
        '₹1,00,000. The deed allows interest on capital at 6% and a salary '
        'of ₹24,000 a year to B. Profit before these items is ₹1,20,000. '
        'Prepare the Profit & Loss Appropriation Account.',
    marks: 5,
    problem: true,
    answer:
        'Net profit: 1,20,000\n'
        'Less interest on capital:\n'
        '• A: 2,00,000 × 6% = 12,000\n'
        '• B: 1,00,000 × 6% = 6,000\n'
        'Less salary to B: 24,000\n'
        'Remaining profit = 1,20,000 − 18,000 − 24,000 = 78,000\n'
        '• A\'s share (3/5) = 46,800\n'
        '• B\'s share (2/5) = 31,200\n'
        'Total credited to partners:\n'
        '• A = 12,000 + 46,800 = ₹58,800\n'
        '• B = 6,000 + 24,000 + 31,200 = ₹61,200',
  ),
  DescriptiveQuestion(
    subjectId: 'fa',
    chapter: 'Partnership Accounts',
    text:
        'Profits for the last 4 years were ₹40,000, ₹50,000, ₹60,000 and '
        '₹70,000. Capital employed is ₹4,00,000 and the normal rate of '
        'return is 10%. Value goodwill by (a) 2 years\' purchase of average '
        'profit, (b) 3 years\' purchase of super profit, and (c) '
        'capitalisation of super profit.',
    marks: 6,
    problem: true,
    answer:
        'Average profit = (40,000 + 50,000 + 60,000 + 70,000) ÷ 4 '
        '= ₹55,000\n'
        '(a) Goodwill = 55,000 × 2 = ₹1,10,000\n'
        'Normal profit = 4,00,000 × 10% = 40,000\n'
        'Super profit = 55,000 − 40,000 = ₹15,000\n'
        '(b) Goodwill = 15,000 × 3 = ₹45,000\n'
        '(c) Goodwill = Super profit ÷ Normal rate = 15,000 ÷ 10% '
        '= ₹1,50,000',
  ),
  DescriptiveQuestion(
    subjectId: 'fa',
    chapter: 'Not-for-Profit Organisations',
    text:
        'A club received ₹50,000 as subscriptions in 2025-26. This '
        'includes ₹4,000 for 2024-25 and ₹3,000 for 2026-27. Subscriptions '
        'of ₹6,000 for 2025-26 are outstanding, and ₹2,000 for 2025-26 had '
        'been received in advance in 2024-25. Find the subscription income '
        'for 2025-26.',
    marks: 4,
    problem: true,
    answer:
        'Subscriptions received in 2025-26: 50,000\n'
        '• Less for 2024-25 (arrears received): (4,000)\n'
        '• Less for 2026-27 (received in advance): (3,000)\n'
        '• Add outstanding for 2025-26: 6,000\n'
        '• Add received in advance last year for 2025-26: 2,000\n'
        'Subscription income for 2025-26: ₹51,000\n'
        'Only subscriptions that belong to the current year go to the Income '
        'and Expenditure Account.',
  ),
  DescriptiveQuestion(
    subjectId: 'fa',
    chapter: 'Not-for-Profit Organisations',
    text:
        'At the start of the year a club had: cash ₹10,000; building '
        '₹2,00,000; furniture ₹30,000; subscriptions outstanding ₹5,000; '
        'prepaid insurance ₹1,000; outstanding salary ₹4,000; subscriptions '
        'received in advance ₹2,000. Find the opening capital fund.',
    marks: 4,
    problem: true,
    answer:
        'Capital fund = Total assets − Total liabilities\n'
        'Assets: 10,000 + 2,00,000 + 30,000 + 5,000 + 1,000 = 2,46,000\n'
        'Liabilities: 4,000 + 2,000 = 6,000\n'
        'Opening capital fund = 2,46,000 − 6,000 = ₹2,40,000',
  ),
  DescriptiveQuestion(
    subjectId: 'fa',
    chapter: 'Single Entry System',
    text:
        'A trader\'s capital was ₹1,50,000 at the start of the year and '
        '₹2,00,000 at the end. During the year he withdrew ₹30,000 and '
        'brought in additional capital of ₹20,000. Find the profit for the '
        'year.',
    marks: 4,
    problem: true,
    answer:
        'Statement of profit or loss\n'
        'Closing capital: 2,00,000\n'
        '• Add drawings: 30,000\n'
        '• Less additional capital: (20,000)\n'
        'Adjusted closing capital: 2,10,000\n'
        '• Less opening capital: (1,50,000)\n'
        'Profit for the year: ₹60,000\n'
        'Drawings are added back because they reduced capital without being '
        'a loss; additional capital is deducted because it increased capital '
        'without being a profit.',
  ),
  DescriptiveQuestion(
    subjectId: 'fa',
    chapter: 'Single Entry System',
    text:
        'Find credit sales: opening debtors ₹40,000; closing debtors '
        '₹50,000; cash received from debtors ₹2,00,000; discount allowed '
        '₹3,000; bad debts ₹2,000; sales returns ₹5,000.',
    marks: 4,
    problem: true,
    answer:
        'Prepare a Total Debtors Account; credit sales is the balancing '
        'figure.\n'
        'Debit side: opening debtors 40,000 + credit sales (x)\n'
        'Credit side: cash 2,00,000 + discount 3,000 + bad debts 2,000 + '
        'returns 5,000 + closing debtors 50,000 = 2,60,000\n'
        'Credit sales = 2,60,000 − 40,000 = ₹2,20,000',
  ),
  DescriptiveQuestion(
    subjectId: 'fa',
    chapter: 'Ratio Analysis',
    text:
        'Sales are ₹6,00,000 (credit sales ₹5,00,000), gross profit is '
        '25% of sales, opening stock is ₹60,000 and closing stock ₹90,000. '
        'Debtors are ₹1,00,000. Calculate inventory turnover, inventory '
        'holding period, debtors turnover and average collection period '
        '(365-day year).',
    marks: 5,
    problem: true,
    answer:
        '• Cost of goods sold = 6,00,000 − 25% = ₹4,50,000\n'
        '• Average stock = (60,000 + 90,000) ÷ 2 = ₹75,000\n'
        '• Inventory turnover = 4,50,000 ÷ 75,000 = 6 times\n'
        '• Holding period = 365 ÷ 6 = about 61 days\n'
        '• Debtors turnover = 5,00,000 ÷ 1,00,000 = 5 times\n'
        '• Average collection period = 365 ÷ 5 = 73 days',
  ),
  DescriptiveQuestion(
    subjectId: 'fa',
    chapter: 'Ratio Analysis',
    text:
        'A company\'s current ratio is 2.5 : 1, its quick ratio is 1.5 : 1, '
        'and its working capital is ₹60,000. There are no prepaid expenses. '
        'Find current assets, current liabilities and inventory.',
    marks: 4,
    problem: true,
    answer:
        'Let current liabilities = x. Current assets = 2.5x.\n'
        '• Working capital = 2.5x − x = 1.5x = 60,000, so x = ₹40,000\n'
        '• Current liabilities = ₹40,000\n'
        '• Current assets = 2.5 × 40,000 = ₹1,00,000\n'
        '• Quick assets = 1.5 × 40,000 = ₹60,000\n'
        '• Inventory = Current assets − Quick assets = 1,00,000 − 60,000 '
        '= ₹40,000',
  ),
];
