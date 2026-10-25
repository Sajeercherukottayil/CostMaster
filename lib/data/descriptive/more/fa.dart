import '../../../models/question.dart';

const faMoreDescriptive = [
  // Accounting Concepts & Principles
  DescriptiveQuestion(
    subjectId: 'fa',
    chapter: 'Accounting Concepts & Principles',
    text:
        'Distinguish between the cash basis and the accrual basis of '
        'accounting.',
    marks: 4,
    answer:
        '• Recording: the cash basis records income and expenses only '
        'when cash is received or paid; the accrual basis records them when '
        'they are earned or incurred.\n'
        '• Outstanding and prepaid items: ignored under the cash basis; '
        'adjusted under the accrual basis.\n'
        '• Profit: the cash basis may not show the true profit of a period; '
        'the accrual basis matches revenue and expenses of the period.\n'
        '• Use: the cash basis suits small professionals and some '
        'not-for-profit bodies; companies must follow the accrual basis '
        'under the Companies Act, 2013.\n'
        '• Simplicity: the cash basis is simpler; the accrual basis needs '
        'adjustment entries at the year end.',
  ),
  DescriptiveQuestion(
    subjectId: 'fa',
    chapter: 'Accounting Concepts & Principles',
    text:
        'Name the accounting concept applied in each case: (a) a '
        'proprietor\'s personal car is not shown in the business balance '
        'sheet; (b) a stapler costing ₹150, expected to last 3 years, is '
        'charged as an expense; (c) a provision is made for doubtful debts; '
        '(d) a building is shown at cost less depreciation, not at market '
        'value; (e) the firm keeps using the FIFO method every year.',
    marks: 5,
    problem: true,
    answer:
        '(a) Business entity concept: the business is separate from its '
        'owner.\n'
        '(b) Materiality concept: the amount is too small to be worth '
        'treating as an asset.\n'
        '(c) Prudence (conservatism): expected losses are provided for.\n'
        '(d) Historical cost and going concern concepts: assets are recorded '
        'at cost and the business is assumed to continue, so market value '
        'is not relevant.\n'
        '(e) Consistency concept: the same method is followed each year so '
        'results can be compared.',
  ),
  DescriptiveQuestion(
    subjectId: 'fa',
    chapter: 'Accounting Concepts & Principles',
    text:
        'Prepare the accounting equation after these transactions: (a) '
        'Sita starts business with cash ₹2,00,000 and a bank loan of '
        '₹50,000; (b) buys machinery for ₹80,000 cash; (c) buys goods on '
        'credit ₹40,000; (d) pays ₹25,000 to the creditor; (e) withdraws '
        '₹5,000 cash for personal use.',
    marks: 5,
    problem: true,
    answer:
        'Assets = Liabilities + Capital\n'
        '(a) Cash 2,50,000 = Loan 50,000 + Capital 2,00,000\n'
        '(b) Cash 1,70,000 + Machinery 80,000 = Loan 50,000 + Capital '
        '2,00,000\n'
        '(c) Cash 1,70,000 + Machinery 80,000 + Stock 40,000 = Loan 50,000 + '
        'Creditors 40,000 + Capital 2,00,000\n'
        '(d) Cash 1,45,000 + Machinery 80,000 + Stock 40,000 = Loan 50,000 + '
        'Creditors 15,000 + Capital 2,00,000\n'
        '(e) Cash 1,40,000 + Machinery 80,000 + Stock 40,000 = Loan 50,000 + '
        'Creditors 15,000 + Capital 1,95,000\n'
        'Final totals: assets ₹2,60,000 = liabilities ₹65,000 + capital '
        '₹1,95,000.',
  ),

  // Accounting Process & Rectification of Errors
  DescriptiveQuestion(
    subjectId: 'fa',
    chapter: 'Accounting Process & Rectification of Errors',
    text:
        'What is a suspense account? When is it opened and how is it '
        'closed?',
    marks: 4,
    answer:
        'A suspense account is a temporary account opened to record the '
        'difference in a trial balance that does not agree, so that final '
        'accounts can be prepared while the errors are found.\n'
        '• If the debit side is short, the suspense account is debited with '
        'the difference; if the credit side is short, it is credited.\n'
        '• As one-sided errors are found, they are corrected through the '
        'suspense account.\n'
        '• When all such errors are corrected, the account closes '
        'automatically with no balance.\n'
        'Two-sided errors, such as errors of principle or complete omission, '
        'are corrected without using the suspense account, since they did '
        'not cause the difference.',
  ),
  DescriptiveQuestion(
    subjectId: 'fa',
    chapter: 'Accounting Process & Rectification of Errors',
    text:
        'Find the effect on net profit of each error, and the corrected '
        'net profit, if the profit shown is ₹60,000: (a) a ₹4,000 purchase of '
        'furniture was debited to Purchases; (b) ₹1,500 received as interest '
        'was credited to the customer\'s account; (c) closing stock was '
        'undervalued by ₹2,000; (d) ₹3,000 of salary outstanding was not '
        'recorded.',
    marks: 6,
    problem: true,
    answer:
        'Profit as shown: 60,000\n'
        '(a) Purchases were overstated, so profit was understated: add '
        '4,000. Depreciation on furniture, if any, would be deducted.\n'
        '(b) Interest income was not recorded: add 1,500.\n'
        '(c) Closing stock was understated, so profit was understated: add '
        '2,000.\n'
        '(d) An expense was not recorded, so profit was overstated: deduct '
        '3,000.\n'
        'Corrected net profit = 60,000 + 4,000 + 1,500 + 2,000 − 3,000 = '
        '₹64,500',
  ),
  DescriptiveQuestion(
    subjectId: 'fa',
    chapter: 'Accounting Process & Rectification of Errors',
    text:
        'Pass rectifying entries after the books are closed (use a Profit '
        'and Loss Adjustment Account): (a) a repair bill of ₹2,500 was '
        'debited to Machinery Account; (b) sales of ₹3,000 to Rahul were '
        'not recorded; (c) a cash sale of old furniture for ₹1,000 was '
        'credited to Sales Account.',
    marks: 5,
    problem: true,
    answer:
        'After the accounts are closed, nominal accounts are replaced by '
        'the Profit and Loss Adjustment Account.\n'
        '(a) Profit & Loss Adjustment A/c Dr 2,500 To Machinery A/c 2,500\n'
        '(b) Rahul A/c Dr 3,000 To Profit & Loss Adjustment A/c 3,000\n'
        '(c) Profit & Loss Adjustment A/c Dr 1,000 To Furniture A/c 1,000\n'
        'The adjustment account then shows a net debit of 500 (2,500 + '
        '1,000 − 3,000), which is transferred to capital as a reduction of '
        'last year\'s profit.',
  ),

  // Bank Reconciliation Statement
  DescriptiveQuestion(
    subjectId: 'fa',
    chapter: 'Bank Reconciliation Statement',
    text:
        'Why is a Bank Reconciliation Statement prepared? State its '
        'advantages.',
    marks: 4,
    answer:
        'A bank reconciliation statement explains why the balance in the '
        'cash book differs from the bank statement on a given date, and '
        'confirms that both are correct.\n'
        'Advantages:\n'
        '• It brings to light errors in the cash book or the pass book.\n'
        '• It shows items the business has not yet recorded, such as bank '
        'charges, interest and direct deposits.\n'
        '• It identifies cheques not yet presented or not yet collected, so '
        'they can be followed up.\n'
        '• It discourages fraud and misappropriation by staff handling cash.\n'
        '• It helps give the true bank balance for the balance sheet.',
  ),
  DescriptiveQuestion(
    subjectId: 'fa',
    chapter: 'Bank Reconciliation Statement',
    text:
        'The cash book shows a debit balance of ₹18,000 on 31 March. A '
        'cheque of ₹2,500 received from a customer was recorded in the cash '
        'book but not banked. A cheque of ₹1,200 issued was recorded as '
        '₹2,100. The bank debited ₹300 for charges and credited interest of '
        '₹450. Find the pass book balance.',
    marks: 5,
    problem: true,
    answer:
        'Balance as per cash book: 18,000\n'
        '• Add: cheque recorded as 2,100 instead of 1,200 (cash book '
        'understated): 900\n'
        '• Add: interest credited by bank: 450\n'
        '• Less: cheque recorded but not banked: (2,500)\n'
        '• Less: bank charges: (300)\n'
        'Balance as per pass book: ₹16,550\n'
        'The cash book itself should also be corrected for the 900, the '
        'interest and the charges.',
  ),
  DescriptiveQuestion(
    subjectId: 'fa',
    chapter: 'Bank Reconciliation Statement',
    text:
        'The pass book shows a credit balance of ₹42,000 on 30 June. '
        'Cheques issued but not presented ₹9,000; cheques deposited but not '
        'credited ₹6,000; a dividend of ₹2,000 collected by the bank is not '
        'in the cash book; a standing instruction payment of ₹1,500 is not in '
        'the cash book. Find the cash book balance.',
    marks: 5,
    problem: true,
    answer:
        'Balance as per pass book: 42,000\n'
        '• Less: cheques issued but not presented: (9,000)\n'
        '• Add: cheques deposited but not credited: 6,000\n'
        '• Less: dividend collected by bank (not in cash book): (2,000)\n'
        '• Add: standing instruction payment (not in cash book): 1,500\n'
        'Balance as per cash book (debit): ₹38,500\n'
        'Check by working the other way: 38,500 + 9,000 − 6,000 + 2,000 − '
        '1,500 = 42,000.',
  ),

  // Final Accounts
  DescriptiveQuestion(
    subjectId: 'fa',
    chapter: 'Final Accounts',
    text:
        'Explain the treatment in final accounts of: (a) outstanding '
        'expenses; (b) prepaid expenses; (c) accrued income; (d) income '
        'received in advance; (e) depreciation.',
    marks: 5,
    answer:
        '(a) Outstanding expenses: added to the expense in the Profit and '
        'Loss (or Trading) Account; shown as a current liability.\n'
        '(b) Prepaid expenses: deducted from the expense; shown as a current '
        'asset.\n'
        '(c) Accrued income: added to the income; shown as a current asset.\n'
        '(d) Income received in advance: deducted from the income; shown as '
        'a current liability.\n'
        '(e) Depreciation: debited to the Profit and Loss Account; deducted '
        'from the asset in the Balance Sheet.\n'
        'Each adjustment appears in two places, which keeps the double '
        'entry complete.',
  ),
  DescriptiveQuestion(
    subjectId: 'fa',
    chapter: 'Final Accounts',
    text:
        'Gross profit is ₹1,20,000. Expenses: salaries ₹30,000 (₹6,000 '
        'outstanding); rent ₹12,000 (covering 15 months); depreciation on '
        'furniture of ₹50,000 at 10%; bad debts ₹2,000; a new provision for '
        'doubtful debts of 5% on debtors of ₹60,000 (after bad debts). '
        'Interest received is ₹4,000. Find net profit.',
    marks: 6,
    problem: true,
    answer:
        'Gross profit: 1,20,000\n'
        '• Add interest received: 4,000\n'
        '• Total: 1,24,000\n'
        'Less expenses:\n'
        '• Salaries 30,000 + 6,000 = 36,000\n'
        '• Rent for 12 months = 12,000 × 12/15 = 9,600 (prepaid 2,400)\n'
        '• Depreciation = 5,000\n'
        '• Bad debts = 2,000\n'
        '• Provision for doubtful debts = 3,000\n'
        '• Total expenses = 55,600\n'
        'Net profit = 1,24,000 − 55,600 = ₹68,400',
  ),
  DescriptiveQuestion(
    subjectId: 'fa',
    chapter: 'Final Accounts',
    text:
        'From these balances, prepare a Balance Sheet: capital ₹2,00,000; '
        'net profit ₹50,000; drawings ₹20,000; machinery ₹1,50,000; debtors '
        '₹60,000; closing stock ₹40,000; cash ₹30,000; creditors ₹45,000; '
        'outstanding expenses ₹5,000.',
    marks: 5,
    problem: true,
    answer:
        'Liabilities and capital\n'
        '• Capital 2,00,000 + Net profit 50,000 − Drawings 20,000 = 2,30,000\n'
        '• Creditors: 45,000\n'
        '• Outstanding expenses: 5,000\n'
        '• Total: ₹2,80,000\n'
        'Assets\n'
        '• Machinery: 1,50,000\n'
        '• Closing stock: 40,000\n'
        '• Debtors: 60,000\n'
        '• Cash: 30,000\n'
        '• Total: ₹2,80,000\n'
        'The two sides agree.',
  ),

  // Depreciation
  DescriptiveQuestion(
    subjectId: 'fa',
    chapter: 'Depreciation',
    text:
        'What are the causes of depreciation, and why is it necessary to '
        'provide for it?',
    marks: 5,
    answer:
        'Causes:\n'
        '• Wear and tear from use.\n'
        '• Passage of time, even if the asset is not used.\n'
        '• Obsolescence, when new technology makes the asset outdated.\n'
        '• Expiry of legal rights, such as leases and patents.\n'
        '• Depletion of wasting assets such as mines.\n'
        '• Accidents.\n'
        'Need for providing depreciation:\n'
        '• To measure true profit, by matching the cost of using the asset '
        'with the revenue it helps earn.\n'
        '• To show assets at a fair value in the balance sheet.\n'
        '• To keep funds in the business for replacing assets, since profit '
        'available for distribution is reduced.\n'
        '• To comply with the law and accounting standards.',
  ),
  DescriptiveQuestion(
    subjectId: 'fa',
    chapter: 'Depreciation',
    text:
        'A machine costs ₹1,10,000 with a residual value of ₹10,000 and a '
        'useful life of 4 years. Calculate depreciation each year by the '
        'sum-of-years\'-digits method.',
    marks: 4,
    problem: true,
    answer:
        'Depreciable amount = 1,10,000 − 10,000 = 1,00,000\n'
        'Sum of years\' digits = 4 + 3 + 2 + 1 = 10\n'
        '• Year 1: 1,00,000 × 4/10 = 40,000\n'
        '• Year 2: 1,00,000 × 3/10 = 30,000\n'
        '• Year 3: 1,00,000 × 2/10 = 20,000\n'
        '• Year 4: 1,00,000 × 1/10 = 10,000\n'
        'Total = 1,00,000, leaving the residual value of 10,000.',
  ),
  DescriptiveQuestion(
    subjectId: 'fa',
    chapter: 'Depreciation',
    text:
        'A machine costing ₹2,00,000 is bought on 1 April 2023. Using the '
        'provision for depreciation method at 10% straight line, pass '
        'entries for depreciation for 2023-24 and 2024-25, and show the '
        'balance sheet presentation on 31 March 2025.',
    marks: 5,
    problem: true,
    answer:
        'Each year (31 March 2024 and 31 March 2025):\n'
        '• Depreciation A/c Dr 20,000 To Provision for Depreciation A/c '
        '20,000\n'
        '• Profit & Loss A/c Dr 20,000 To Depreciation A/c 20,000\n'
        'Balance Sheet as on 31 March 2025:\n'
        '• Machinery at cost: 2,00,000\n'
        '• Less: provision for depreciation: 40,000\n'
        '• Net book value: ₹1,60,000\n'
        'The machinery account stays at cost; accumulated depreciation '
        'builds up in the provision account.',
  ),

  // Bills of Exchange
  DescriptiveQuestion(
    subjectId: 'fa',
    chapter: 'Bills of Exchange',
    text: 'Distinguish between a bill of exchange and a promissory note.',
    marks: 4,
    answer:
        '• Nature: a bill contains an order to pay; a promissory note '
        'contains a promise to pay.\n'
        '• Parties: a bill has three parties (drawer, drawee, payee); a note '
        'has two (maker and payee).\n'
        '• Acceptance: a bill payable after a period must be accepted by the '
        'drawee; a note needs no acceptance.\n'
        '• Liability: the drawer\'s liability is secondary, arising if the '
        'acceptor fails to pay; the maker\'s liability is primary.\n'
        '• Payable to bearer: a bill can be payable to bearer if not on '
        'demand; a note cannot be payable to bearer.\n'
        '• Noting and protest are needed for a dishonoured foreign bill, but '
        'not for a promissory note.',
  ),
  DescriptiveQuestion(
    subjectId: 'fa',
    chapter: 'Bills of Exchange',
    text:
        'On 1 April 2026, P draws a 3-month bill for ₹15,000 on Q, who '
        'accepts it. P endorses it to his creditor R on 5 April. On the due '
        'date the bill is dishonoured and R pays noting charges of ₹100. '
        'Pass entries in P\'s books.',
    marks: 5,
    problem: true,
    answer:
        'Due date: 1 April + 3 months = 1 July, plus 3 days of grace = '
        '4 July 2026.\n'
        '• 1 April: Bills Receivable A/c Dr 15,000 To Q 15,000\n'
        '• 5 April: R Dr 15,000 To Bills Receivable A/c 15,000\n'
        '• 4 July (dishonour): Q Dr 15,100 To R 15,100\n'
        'On dishonour, P becomes liable to R again, for the bill amount and '
        'the noting charges, and passes the whole amount on to Q.',
  ),
  DescriptiveQuestion(
    subjectId: 'fa',
    chapter: 'Bills of Exchange',
    text:
        'X holds Y\'s acceptance for ₹20,000. Before the due date Y becomes '
        'insolvent, and his estate later pays 60 paise in the rupee. Pass '
        'entries in X\'s books, assuming X still holds the bill.',
    marks: 4,
    problem: true,
    answer:
        '• On insolvency (bill cancelled): Y Dr 20,000 To Bills '
        'Receivable A/c 20,000\n'
        '• On receiving the final dividend (20,000 × 60%): Cash A/c Dr '
        '12,000; Bad Debts A/c Dr 8,000; To Y 20,000\n'
        'The irrecoverable ₹8,000 is charged to the Profit and Loss '
        'Account.',
  ),

  // Consignment
  DescriptiveQuestion(
    subjectId: 'fa',
    chapter: 'Consignment',
    text:
        'What is del credere commission? Why is it paid, and how does it '
        'affect the treatment of bad debts?',
    marks: 4,
    answer:
        'Del credere commission is an extra commission paid by the '
        'consignor to the consignee, in addition to ordinary commission.\n'
        '• Purpose: the consignee guarantees that the amount due from '
        'credit customers will be collected. It encourages the consignee to '
        'sell only to reliable buyers.\n'
        '• Bad debts: with del credere commission, bad debts are borne by '
        'the consignee and do not appear in the Consignment Account. Without '
        'it, bad debts are a loss of the consignor.\n'
        '• Basis: it is usually calculated on total sales (cash and credit), '
        'unless the agreement says it is on credit sales only.',
  ),
  DescriptiveQuestion(
    subjectId: 'fa',
    chapter: 'Consignment',
    text:
        'Goods costing ₹50,000 are sent on consignment at invoice price, '
        'which is cost plus 25%. The consignor pays freight of ₹2,500. '
        'Four-fifths of the goods are sold for ₹70,000, and commission is '
        '5%. Find the closing stock at invoice price and at cost, the stock '
        'reserve and the true profit.',
    marks: 6,
    problem: true,
    answer:
        '• Invoice price of goods sent = 50,000 × 125% = 62,500; loading '
        '= 12,500\n'
        '• Closing stock (1/5) at invoice price = 62,500 ÷ 5 + freight '
        '2,500 ÷ 5 = 12,500 + 500 = 13,000\n'
        '• Stock reserve (loading on closing stock) = 12,500 ÷ 5 = 2,500\n'
        '• Closing stock at cost = 10,000 + 500 = ₹10,500\n'
        'True profit\n'
        '• Sales 70,000 − commission 3,500 = 66,500\n'
        '• Less cost of goods sold: (50,000 + 2,500) × 4/5 = 42,000\n'
        '• Profit = ₹24,500',
  ),
  DescriptiveQuestion(
    subjectId: 'fa',
    chapter: 'Consignment',
    text:
        'Pass journal entries in the consignee\'s books: receives goods '
        'worth ₹40,000 on consignment; pays carriage of ₹800; sells all the '
        'goods for ₹55,000 cash; charges commission of ₹2,750; remits the '
        'balance by bank draft.',
    marks: 5,
    problem: true,
    answer:
        '• On receiving goods: no entry, because ownership stays with the '
        'consignor.\n'
        '• Carriage paid: Consignor A/c Dr 800 To Cash A/c 800\n'
        '• Sale of goods: Cash A/c Dr 55,000 To Consignor A/c 55,000\n'
        '• Commission: Consignor A/c Dr 2,750 To Commission A/c 2,750\n'
        '• Remittance of balance (55,000 − 800 − 2,750): Consignor A/c Dr '
        '51,450 To Bank A/c 51,450\n'
        'The consignor\'s account is then closed.',
  ),

  // Partnership Accounts
  DescriptiveQuestion(
    subjectId: 'fa',
    chapter: 'Partnership Accounts',
    text:
        'A and B share profits 3 : 2. C is admitted for a 1/4 share, which '
        'he takes 1/6 from A and 1/12 from B. Find the new ratio and the '
        'sacrificing ratio.',
    marks: 5,
    problem: true,
    answer:
        'Old shares: A 3/5, B 2/5.\n'
        '• A\'s new share = 3/5 − 1/6 = 18/30 − 5/30 = 13/30\n'
        '• B\'s new share = 2/5 − 1/12 = 24/60 − 5/60 = 19/60\n'
        '• C\'s share = 1/4 = 15/60\n'
        'Using 60 as denominator: A 26/60, B 19/60, C 15/60\n'
        'New ratio = 26 : 19 : 15\n'
        'Sacrificing ratio = 1/6 : 1/12 = 2 : 1\n'
        'Check: 26 + 19 + 15 = 60.',
  ),
  DescriptiveQuestion(
    subjectId: 'fa',
    chapter: 'Partnership Accounts',
    text:
        'A partner withdrew ₹5,000 on 1 July, ₹8,000 on 1 October and '
        '₹3,000 on 1 January. The year ends on 31 March, and interest on '
        'drawings is 12% a year. Calculate the interest by the product '
        'method.',
    marks: 4,
    problem: true,
    answer:
        'Months from date of drawing to 31 March:\n'
        '• 5,000 × 9 = 45,000\n'
        '• 8,000 × 6 = 48,000\n'
        '• 3,000 × 3 = 9,000\n'
        'Sum of products = 1,02,000\n'
        'Interest = 1,02,000 × 12% × 1/12 = ₹1,020',
  ),
  DescriptiveQuestion(
    subjectId: 'fa',
    chapter: 'Partnership Accounts',
    text:
        'A, B and C share profits 2 : 2 : 1. C retires. The firm\'s '
        'goodwill is valued at ₹60,000, and A and B will share future '
        'profits 3 : 2. Find the gaining ratio and pass the entry for '
        'goodwill.',
    marks: 5,
    problem: true,
    answer:
        'Gaining ratio = New share − Old share\n'
        '• A: 3/5 − 2/5 = 1/5\n'
        '• B: 2/5 − 2/5 = 0\n'
        'So A alone gains, and the gaining ratio is 1 : 0.\n'
        'C\'s share of goodwill = 60,000 × 1/5 = 12,000, compensated by A:\n'
        '• A\'s Capital A/c Dr 12,000 To C\'s Capital A/c 12,000\n'
        'B neither gains nor loses, so B is not affected.',
  ),

  // Not-for-Profit Organisations
  DescriptiveQuestion(
    subjectId: 'fa',
    chapter: 'Not-for-Profit Organisations',
    text:
        'Distinguish between capital and revenue receipts of a '
        'not-for-profit organisation, with examples.',
    marks: 4,
    answer:
        '• Nature: capital receipts are non-recurring and increase the '
        'capital fund or a specific fund; revenue receipts are recurring and '
        'are income of the year.\n'
        '• Treatment: capital receipts go to the Balance Sheet; revenue '
        'receipts go to the Income and Expenditure Account.\n'
        '• Capital examples: legacies, endowment funds, life membership fees, '
        'donations for a specific purpose, sale proceeds of fixed assets.\n'
        '• Revenue examples: annual subscriptions, general donations, '
        'interest on investments, rent from hall, sale of old newspapers.\n'
        'Some items, such as entrance fees, may be treated either way '
        'depending on the organisation\'s rules or their size.',
  ),
  DescriptiveQuestion(
    subjectId: 'fa',
    chapter: 'Not-for-Profit Organisations',
    text:
        'A club\'s receipts include subscriptions ₹80,000 (income for the '
        'year), interest ₹6,000 and a donation for a pavilion ₹50,000. '
        'Payments include salaries ₹30,000 (₹3,000 outstanding at year '
        'end), electricity ₹8,000 and sports material consumed ₹12,000. '
        'Depreciation is ₹5,000. Find the surplus or deficit.',
    marks: 5,
    problem: true,
    answer:
        'Income\n'
        '• Subscriptions: 80,000\n'
        '• Interest: 6,000\n'
        '• Total: 86,000\n'
        'The pavilion donation is a specific (capital) receipt and is not '
        'income.\n'
        'Expenditure\n'
        '• Salaries 30,000 + 3,000 = 33,000\n'
        '• Electricity: 8,000\n'
        '• Sports material: 12,000\n'
        '• Depreciation: 5,000\n'
        '• Total: 58,000\n'
        'Surplus = 86,000 − 58,000 = ₹28,000',
  ),
  DescriptiveQuestion(
    subjectId: 'fa',
    chapter: 'Not-for-Profit Organisations',
    text:
        'A club has 400 members paying an annual subscription of ₹500. '
        'During the year it received ₹1,95,000, which includes ₹6,000 for '
        'last year and ₹4,000 for next year. Find the subscriptions '
        'outstanding for the current year.',
    marks: 4,
    problem: true,
    answer:
        '• Subscription income due for the year = 400 × 500 = 2,00,000\n'
        '• Received for the current year = 1,95,000 − 6,000 − 4,000 = '
        '1,85,000\n'
        '• Outstanding for the current year = 2,00,000 − 1,85,000 = '
        '₹15,000\n'
        'The Income and Expenditure Account shows ₹2,00,000, and the '
        '₹15,000 outstanding is a current asset.',
  ),

  // Single Entry System
  DescriptiveQuestion(
    subjectId: 'fa',
    chapter: 'Single Entry System',
    text: 'What are the limitations of the single entry system?',
    marks: 4,
    answer:
        '• No trial balance can be prepared, so arithmetical accuracy '
        'cannot be checked.\n'
        '• A true profit and loss account cannot be prepared, as nominal '
        'accounts are not kept; profit can only be estimated.\n'
        '• A proper balance sheet cannot be prepared; only a statement of '
        'affairs, based partly on estimates.\n'
        '• Fraud and errors are hard to detect.\n'
        '• Asset values are not reliable, which makes it hard to sell the '
        'business or claim insurance.\n'
        '• It is not accepted for companies, and may not satisfy tax '
        'authorities.',
  ),
  DescriptiveQuestion(
    subjectId: 'fa',
    chapter: 'Single Entry System',
    text:
        'On 1 April a trader had cash ₹10,000, stock ₹40,000, debtors '
        '₹30,000, furniture ₹20,000 and creditors ₹25,000. On 31 March: cash '
        '₹15,000, stock ₹50,000, debtors ₹35,000, furniture ₹20,000 '
        '(depreciate 10%) and creditors ₹30,000. Drawings were ₹12,000. Find '
        'the profit.',
    marks: 6,
    problem: true,
    answer:
        'Opening capital = (10,000 + 40,000 + 30,000 + 20,000) − 25,000 '
        '= 75,000\n'
        'Closing assets, with furniture after depreciation of 2,000:\n'
        '• 15,000 + 50,000 + 35,000 + 18,000 = 1,18,000\n'
        '• Closing capital = 1,18,000 − 30,000 = 88,000\n'
        'Statement of profit:\n'
        '• Closing capital: 88,000\n'
        '• Add drawings: 12,000\n'
        '• Less opening capital: (75,000)\n'
        '• Profit = ₹25,000',
  ),
  DescriptiveQuestion(
    subjectId: 'fa',
    chapter: 'Single Entry System',
    text:
        'From incomplete records, find total sales: opening debtors '
        '₹45,000; closing debtors ₹55,000; cash received from debtors '
        '₹2,40,000; bad debts ₹3,000; returns inward ₹7,000; bills received '
        'from debtors ₹20,000; cash sales ₹80,000.',
    marks: 5,
    problem: true,
    answer:
        'Total Debtors Account (credit sales as the balancing figure)\n'
        '• Credit side: cash 2,40,000 + bad debts 3,000 + returns 7,000 + '
        'bills receivable 20,000 + closing debtors 55,000 = 3,25,000\n'
        '• Debit side: opening debtors 45,000 + credit sales x\n'
        '• Credit sales = 3,25,000 − 45,000 = 2,80,000\n'
        'Total sales = Credit sales 2,80,000 + Cash sales 80,000 = '
        '₹3,60,000',
  ),

  // Ratio Analysis
  DescriptiveQuestion(
    subjectId: 'fa',
    chapter: 'Ratio Analysis',
    text: 'What are the limitations of ratio analysis?',
    marks: 4,
    answer:
        '• Ratios are based on past accounting data, which may not '
        'reflect the future.\n'
        '• Different accounting policies (for example depreciation or '
        'inventory methods) make comparisons between firms unreliable.\n'
        '• Ratios ignore price-level changes caused by inflation.\n'
        '• Window dressing can make ratios look better than the real '
        'position.\n'
        '• Qualitative factors, such as management quality and staff '
        'morale, are ignored.\n'
        '• A single ratio means little alone; it must be compared with '
        'past years, other firms or industry standards.',
  ),
  DescriptiveQuestion(
    subjectId: 'fa',
    chapter: 'Ratio Analysis',
    text:
        'From the following, calculate the gross profit ratio, net profit '
        'ratio, current ratio, debt-equity ratio and proprietary ratio: '
        'sales ₹10,00,000; gross profit ₹2,50,000; net profit ₹1,00,000; '
        'current assets ₹3,00,000; current liabilities ₹1,50,000; long-term '
        'debt ₹2,00,000; shareholders\' funds ₹5,00,000; total assets '
        '₹8,50,000.',
    marks: 6,
    problem: true,
    answer:
        '• Gross profit ratio = 2,50,000 ÷ 10,00,000 × 100 = 25%\n'
        '• Net profit ratio = 1,00,000 ÷ 10,00,000 × 100 = 10%\n'
        '• Current ratio = 3,00,000 ÷ 1,50,000 = 2 : 1\n'
        '• Debt-equity ratio = 2,00,000 ÷ 5,00,000 = 0.4 : 1\n'
        '• Proprietary ratio = 5,00,000 ÷ 8,50,000 = 0.59 : 1 (59%)\n'
        'Check: total assets 8,50,000 = shareholders\' funds 5,00,000 + '
        'long-term debt 2,00,000 + current liabilities 1,50,000.',
  ),
  DescriptiveQuestion(
    subjectId: 'fa',
    chapter: 'Ratio Analysis',
    text:
        'The current ratio is 2 : 1, with current assets of ₹4,00,000. '
        'State the effect on the current ratio of: (a) buying goods on '
        'credit ₹50,000; (b) paying creditors ₹50,000; (c) selling goods '
        'costing ₹20,000 for ₹30,000 cash; (d) buying machinery for cash '
        '₹40,000. Treat each separately.',
    marks: 6,
    problem: true,
    answer:
        'Current liabilities = 4,00,000 ÷ 2 = 2,00,000.\n'
        '(a) CA 4,50,000 ÷ CL 2,50,000 = 1.8 : 1, so it falls.\n'
        '(b) CA 3,50,000 ÷ CL 1,50,000 = 2.33 : 1, so it rises.\n'
        '(c) Stock falls by 20,000 and cash rises by 30,000, so CA = '
        '4,10,000 ÷ 2,00,000 = 2.05 : 1, so it rises.\n'
        '(d) Cash falls by 40,000 and a fixed asset is bought, so CA = '
        '3,60,000 ÷ 2,00,000 = 1.8 : 1, so it falls.',
  ),
];
