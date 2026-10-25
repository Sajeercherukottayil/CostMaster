import '../../../../models/question.dart';

const interFaProblems = [
  DescriptiveQuestion(
    subjectId: 'i_fa',
    chapter: 'Accounting Standards',
    text:
        'Under AS 2: raw material cost ₹30 per unit (replacement cost ₹25), '
        '2,000 units in stock. Finished goods: 1,000 units costing ₹50 each; '
        'selling price ₹55, selling costs ₹8 per unit. Value the inventory.',
    marks: 5,
    problem: true,
    answer:
        'Finished goods:\n'
        '• NRV = 55 − 8 = ₹47, which is below cost of ₹50\n'
        '• Value at NRV = 1,000 × 47 = ₹47,000\n'
        'Raw material:\n'
        '• Normally, raw material is not written down below cost if the '
        'finished goods it goes into will sell at or above cost.\n'
        '• Here the finished goods sell below cost, so raw material is '
        'written down. Replacement cost is the best measure of its NRV.\n'
        '• Value = 2,000 × 25 = ₹50,000\n'
        'Total inventory = ₹97,000',
  ),
  DescriptiveQuestion(
    subjectId: 'i_fa',
    chapter: 'Accounting Standards',
    text:
        'Under AS 10, find the cost of a machine: purchase price '
        '₹5,00,000; GST ₹90,000 (input credit available); freight ₹20,000; '
        'installation ₹30,000; trial run costs ₹15,000; sale of samples '
        'produced during trial ₹5,000; general administration overheads '
        'allocated ₹10,000.',
    marks: 5,
    problem: true,
    answer:
        '• Purchase price: 5,00,000\n'
        '• GST: excluded, because input tax credit is available\n'
        '• Freight: 20,000\n'
        '• Installation: 30,000\n'
        '• Testing costs less net proceeds from samples: 15,000 − 5,000 = '
        '10,000\n'
        '• Administration overheads: excluded, as they are not directly '
        'attributable\n'
        'Cost of the machine = ₹5,60,000',
  ),
  DescriptiveQuestion(
    subjectId: 'i_fa',
    chapter: 'Hire Purchase',
    text:
        'A machine with a cash price of ₹1,00,000 is bought on hire '
        'purchase: ₹25,000 down, and the balance in 3 equal annual principal '
        'instalments with interest at 10% on the outstanding balance. The '
        'buyer charges 10% depreciation on the written down value. Show '
        'each payment and the depreciation for 3 years.',
    marks: 6,
    problem: true,
    answer:
        'Balance after down payment = 75,000; principal per year = 25,000\n'
        '• Year 1: interest 75,000 × 10% = 7,500; payment 32,500; balance '
        '50,000\n'
        '• Year 2: interest 50,000 × 10% = 5,000; payment 30,000; balance '
        '25,000\n'
        '• Year 3: interest 25,000 × 10% = 2,500; payment 27,500; balance '
        'nil\n'
        'Total paid = 25,000 + 90,000 = 1,15,000; total interest = 15,000\n'
        'Depreciation on the cash price (WDV 10%):\n'
        '• Year 1: 10,000 (WDV 90,000)\n'
        '• Year 2: 9,000 (WDV 81,000)\n'
        '• Year 3: 8,100 (WDV 72,900)\n'
        'The asset is recorded at the cash price; interest is charged to '
        'profit and loss each year.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_fa',
    chapter: 'Hire Purchase',
    text:
        'A truck is bought on hire purchase for ₹20,000 down and three '
        'annual instalments of ₹40,000 each at the end of each year. '
        'Interest is 10% a year. Find the cash price and total interest.',
    marks: 4,
    problem: true,
    answer:
        'Cash price = Down payment + Present value of instalments\n'
        '• PV factor at 10% for 3 years = 0.9091 + 0.8264 + 0.7513 = 2.4869\n'
        '• PV of instalments = 40,000 × 2.4869 = ₹99,474\n'
        '• Cash price = 20,000 + 99,474 = ₹1,19,474\n'
        '• Total HP price = 20,000 + 1,20,000 = 1,40,000\n'
        '• Total interest = 1,40,000 − 1,19,474 = ₹20,526',
  ),
  DescriptiveQuestion(
    subjectId: 'i_fa',
    chapter: 'Branch & Departmental Accounts',
    text:
        'Under the debtors system: goods sent to branch at cost ₹50,000; '
        'branch expenses paid by head office ₹8,000; cash sales ₹40,000; '
        'credit sales ₹30,000; cash collected from debtors ₹25,000; closing '
        'stock ₹12,000; closing debtors ₹5,000. There are no opening '
        'balances. Find the branch profit.',
    marks: 5,
    problem: true,
    answer:
        'Branch Account\n'
        'Debit side:\n'
        '• Goods sent to branch: 50,000\n'
        '• Expenses paid: 8,000\n'
        '• Profit (balancing figure): 24,000\n'
        '• Total: 82,000\n'
        'Credit side:\n'
        '• Remittances: cash sales 40,000 + collections 25,000 = 65,000\n'
        '• Closing stock: 12,000\n'
        '• Closing debtors: 5,000\n'
        '• Total: 82,000\n'
        'Check: sales 70,000 − cost of goods sold 38,000 − expenses 8,000 = '
        '₹24,000.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_fa',
    chapter: 'Branch & Departmental Accounts',
    text:
        'Goods are sent to a branch at cost plus 25%. Goods sent at '
        'invoice price ₹1,00,000; opening stock at invoice price ₹20,000; '
        'closing stock at invoice price ₹30,000; sales ₹95,000; branch '
        'expenses ₹10,000. Find the loading on each item and the branch '
        'profit.',
    marks: 6,
    problem: true,
    answer:
        'Cost plus 25% means loading is 25/125 = 20% of invoice price.\n'
        '• Loading on goods sent = 1,00,000 × 20% = 20,000 (cost 80,000)\n'
        '• Loading on opening stock = 20,000 × 20% = 4,000 (cost 16,000)\n'
        '• Loading on closing stock = 30,000 × 20% = 6,000 (cost 24,000)\n'
        'Cost of goods sold = 16,000 + 80,000 − 24,000 = 72,000\n'
        'Branch profit = Sales 95,000 − Cost of goods sold 72,000 − Expenses '
        '10,000 = ₹13,000\n'
        'Closing stock is shown in the balance sheet at cost, ₹24,000.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_fa',
    chapter: 'Insurance Claims',
    text:
        'A fire destroyed stock on 30 September. From 1 April: opening '
        'stock ₹50,000; purchases ₹1,50,000; sales ₹2,00,000. Gross profit is '
        '25% of sales. Salvage was ₹5,000. Stock was insured for ₹40,000, '
        'with an average clause. Calculate the claim.',
    marks: 6,
    problem: true,
    answer:
        'Memorandum Trading Account (1 April to 30 September)\n'
        '• Cost of goods sold = 2,00,000 × 75% = 1,50,000\n'
        '• Stock on date of fire = 50,000 + 1,50,000 − 1,50,000 = ₹50,000\n'
        '• Loss of stock = 50,000 − 5,000 salvage = ₹45,000\n'
        'Average clause applies, since the sum insured (40,000) is less '
        'than the stock value (50,000):\n'
        '• Claim = 45,000 × 40,000 ÷ 50,000 = ₹36,000',
  ),
  DescriptiveQuestion(
    subjectId: 'i_fa',
    chapter: 'Royalty & Joint Venture',
    text:
        'A lease gives royalty at ₹4 per tonne with a minimum rent of '
        '₹40,000 a year. Short workings can be recouped in the next 2 years. '
        'Output in years 1 to 4 is 6,000, 9,000, 14,000 and 16,000 tonnes. '
        'Show the payment each year.',
    marks: 6,
    problem: true,
    answer:
        'Year 1: royalty 24,000; pay minimum rent 40,000; short workings '
        '(SW) 16,000\n'
        'Year 2: royalty 36,000; pay 40,000; SW 4,000\n'
        'Year 3: royalty 56,000; excess over minimum 16,000; recoup year 1 '
        'SW 16,000 (within 2 years); pay 40,000\n'
        'Year 4: royalty 64,000; excess 24,000; recoup year 2 SW 4,000; pay '
        '60,000\n'
        'Total paid = 1,80,000 = total royalty (24,000 + 36,000 + 56,000 + '
        '64,000), so all short workings were recovered.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_fa',
    chapter: 'Royalty & Joint Venture',
    text:
        'A and B enter a joint venture, sharing profits 3 : 2. A supplies '
        'goods costing ₹50,000 and pays expenses of ₹5,000. B pays expenses '
        'of ₹10,000 and sells all the goods for ₹90,000. B gets 2% '
        'commission on sales. Find the profit and the amount B must pay A.',
    marks: 6,
    problem: true,
    answer:
        'Joint venture profit\n'
        '• Sales: 90,000\n'
        '• Less goods 50,000, A\'s expenses 5,000, B\'s expenses 10,000, '
        'commission 1,800\n'
        '• Profit = ₹23,200: A 13,920; B 9,280\n'
        'Settlement: A must get back his contribution plus his share.\n'
        '• Amount due to A = 50,000 + 5,000 + 13,920 = ₹68,920\n'
        'Check from B\'s side: B received 90,000, spent 10,000, and keeps '
        'commission 1,800 and profit 9,280. 90,000 − 10,000 − 1,800 − 9,280 '
        '= 68,920.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_fa',
    chapter: 'Investment Accounts',
    text:
        '1,000 shares are bought at ₹100 each plus 1% brokerage. Later, '
        'bonus shares are received at 1 for every 5 held. Then 600 shares '
        'are sold at ₹120 each less 1% brokerage. Find the profit on sale '
        'using average cost.',
    marks: 5,
    problem: true,
    answer:
        '• Cost = 1,00,000 + 1% = ₹1,01,000\n'
        '• Bonus shares = 1,000 ÷ 5 = 200, at no cost; total 1,200 shares\n'
        '• Average cost per share = 1,01,000 ÷ 1,200 = ₹84.17\n'
        '• Cost of 600 shares sold = 1,01,000 × 600 ÷ 1,200 = ₹50,500\n'
        '• Net sale proceeds = 600 × 120 = 72,000 − 1% = ₹71,280\n'
        '• Profit on sale = 71,280 − 50,500 = ₹20,780\n'
        'The 600 remaining shares are carried at ₹50,500.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_fa',
    chapter: 'Investment Accounts',
    text:
        '₹2,00,000 of 9% bonds, with interest due on 31 March and 30 '
        'September, are bought on 1 June at ₹97 ex-interest. Find the cost '
        'of the investment, the total amount paid, and the interest income '
        'up to 30 September.',
    marks: 5,
    problem: true,
    answer:
        '• Ex-interest price = 2,00,000 × 97% = ₹1,94,000 (capital cost)\n'
        '• Accrued interest from 1 April to 31 May = 2,00,000 × 9% × 2/12 = '
        '₹3,000, paid separately to the seller\n'
        '• Total paid = 1,94,000 + 3,000 = ₹1,97,000\n'
        'On 30 September, interest received = 2,00,000 × 9% × 6/12 = 9,000\n'
        '• Of this, 3,000 recovers the amount paid to the seller\n'
        '• Interest income for June to September = ₹6,000',
  ),
  DescriptiveQuestion(
    subjectId: 'i_fa',
    chapter: 'Not-for-Profit Organisations',
    text:
        'Find the stationery to charge to the Income and Expenditure '
        'Account: opening stock ₹2,000; closing stock ₹3,000; paid for '
        'stationery ₹10,000; creditors for stationery at the start ₹1,000 '
        'and at the end ₹1,500.',
    marks: 4,
    problem: true,
    answer:
        '• Purchases = Payment − Opening creditors + Closing creditors = '
        '10,000 − 1,000 + 1,500 = ₹10,500\n'
        '• Consumption = Opening stock + Purchases − Closing stock = 2,000 + '
        '10,500 − 3,000 = ₹9,500\n'
        'Charge ₹9,500 to the Income and Expenditure Account. Closing stock '
        'of ₹3,000 is an asset and creditors of ₹1,500 a liability.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_fa',
    chapter: 'Not-for-Profit Organisations',
    text:
        'A club has a Prize Fund of ₹50,000 invested in fixed deposits. '
        'During the year, interest of ₹4,000 is received and prizes of '
        '₹5,000 are awarded. Show the treatment.',
    marks: 4,
    problem: true,
    answer:
        'A specific fund keeps its own income and expenses, which do not '
        'go to the Income and Expenditure Account.\n'
        'Prize Fund in the Balance Sheet:\n'
        '• Opening balance: 50,000\n'
        '• Add interest on prize fund investments: 4,000\n'
        '• Less prizes awarded: (5,000)\n'
        '• Closing balance: ₹49,000\n'
        'Prize Fund Investments of ₹50,000 are shown on the assets side.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_fa',
    chapter: 'Self-Balancing Ledgers',
    text:
        'Prepare the Debtors Ledger Adjustment Account in the general '
        'ledger: opening debtors ₹60,000; credit sales ₹2,00,000; cash '
        'received ₹1,70,000; sales returns ₹6,000; discount allowed ₹4,000; '
        'bad debts ₹2,000; bills receivable ₹20,000; a bill receivable of '
        '₹3,000 dishonoured.',
    marks: 5,
    problem: true,
    answer:
        'Debtors Ledger Adjustment Account (in the general ledger)\n'
        'Debit side:\n'
        '• Opening balance: 60,000\n'
        '• Credit sales: 2,00,000\n'
        '• Bill dishonoured: 3,000\n'
        '• Total: 2,63,000\n'
        'Credit side:\n'
        '• Cash received: 1,70,000\n'
        '• Sales returns: 6,000\n'
        '• Discount allowed: 4,000\n'
        '• Bad debts: 2,000\n'
        '• Bills receivable: 20,000\n'
        '• Closing balance: 61,000\n'
        '• Total: 2,63,000',
  ),
  DescriptiveQuestion(
    subjectId: 'i_fa',
    chapter: 'Self-Balancing Ledgers',
    text:
        'Find the closing balance of the Creditors Ledger Adjustment '
        'Account: opening creditors ₹40,000; credit purchases ₹1,50,000; '
        'payments ₹1,20,000; purchase returns ₹5,000; discount received '
        '₹3,000; bills payable accepted ₹15,000.',
    marks: 4,
    problem: true,
    answer:
        'Creditors increase with credit purchases and decrease with '
        'payments, returns, discounts and bills accepted.\n'
        '• Closing creditors = 40,000 + 1,50,000 − 1,20,000 − 5,000 − 3,000 '
        '− 15,000 = ₹47,000',
  ),
];
