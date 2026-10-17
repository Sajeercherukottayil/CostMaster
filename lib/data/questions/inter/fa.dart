import '../../../models/question.dart';

const interFaQuestions = [
  // Accounting Standards
  Question(
    subjectId: 'i_fa',
    chapter: 'Accounting Standards',
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
    chapter: 'Accounting Standards',
    text: 'Under AS 2, inventory costing ₹50,000 with a net realisable value of '
        '₹45,000 is valued at:',
    options: ['₹50,000', '₹45,000', '₹47,500', '₹95,000'],
    answerIndex: 1,
    explanation: 'Inventories are valued at the lower of cost and net realisable '
        'value, which is ₹45,000.',
  ),
  Question(
    subjectId: 'i_fa',
    chapter: 'Accounting Standards',
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
    chapter: 'Accounting Standards',
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
  Question(
    subjectId: 'i_fa',
    chapter: 'Accounting Standards',
    text: 'Under AS 9, revenue from the sale of goods is recognised when:',
    options: [
      'Cash is received',
      'Significant risks and rewards of ownership are transferred to the buyer',
      'The order is received',
      'The goods are manufactured',
    ],
    answerIndex: 1,
    explanation: 'AS 9 recognises revenue when risks and rewards pass and there is '
        'no significant uncertainty about collection.',
  ),
  Question(
    subjectId: 'i_fa',
    chapter: 'Accounting Standards',
    text: 'Under AS 4, an event after the balance sheet date that gives more '
        'evidence about a condition existing at the balance sheet date is:',
    options: [
      'A non-adjusting event',
      'A contingent liability',
      'An adjusting event',
      'An extraordinary item',
    ],
    answerIndex: 2,
    explanation: 'Adjusting events, such as insolvency of a debtor known after the '
        'year end, require amounts in the financial statements to be '
        'adjusted.',
  ),
  Question(
    subjectId: 'i_fa',
    chapter: 'Accounting Standards',
    text: 'Under AS 5, prior period items are:',
    options: [
      'Changes in accounting estimates',
      'All items of the previous year',
      'Income or expenses arising in the current period from errors or omissions in earlier periods',
      'Extraordinary items',
    ],
    answerIndex: 2,
    explanation: 'Prior period items are disclosed separately so that the current '
        'period\'s results are not distorted.',
  ),
  Question(
    subjectId: 'i_fa',
    chapter: 'Accounting Standards',
    text: 'Under AS 10, which of the following is included in the cost of an '
        'item of property, plant and equipment?',
    options: [
      'Import duties and directly attributable installation costs',
      'General administrative overheads',
      'Advertising for the new product',
      'Costs of opening a new facility',
    ],
    answerIndex: 0,
    explanation: 'Cost includes purchase price, non-refundable duties and costs of '
        'bringing the asset to working condition.',
  ),
  Question(
    subjectId: 'i_fa',
    chapter: 'Accounting Standards',
    text: 'Under AS 2, which cost formula is NOT permitted for valuing '
        'inventories?',
    options: [
      'Specific identification',
      'FIFO',
      'LIFO',
      'Weighted average cost',
    ],
    answerIndex: 2,
    explanation: 'AS 2 allows FIFO or weighted average (and specific identification '
        'in suitable cases); LIFO is not allowed.',
  ),
  Question(
    subjectId: 'i_fa',
    chapter: 'Accounting Standards',
    text: 'Under AS 12, a government grant related to a depreciable asset may '
        'be:',
    options: [
      'Deducted from the asset\'s cost or treated as deferred income',
      'Ignored',
      'Treated as share capital',
      'Credited to capital reserve only',
    ],
    answerIndex: 0,
    explanation: 'Either method results in the grant being recognised over the '
        'asset\'s useful life.',
  ),

  // Special transactions
  Question(
    subjectId: 'i_fa',
    chapter: 'Hire Purchase',
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
    chapter: 'Hire Purchase',
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
    chapter: 'Hire Purchase',
    text: 'In the books of the hirer, an asset bought on hire purchase is '
        'recorded at its:',
    options: [
      'Total hire purchase price',
      'Market value on each instalment date',
      'Down payment only',
      'Cash price',
    ],
    answerIndex: 3,
    explanation: 'The asset is capitalised at cash price; the interest element is '
        'charged to Profit and Loss as it accrues.',
  ),
  Question(
    subjectId: 'i_fa',
    chapter: 'Hire Purchase',
    text: 'The interest included in hire purchase instalments is treated by '
        'the hirer as:',
    options: [
      'Part of the cost of the asset',
      'A revenue expense charged to Profit and Loss',
      'A deduction from capital',
      'A current asset',
    ],
    answerIndex: 1,
    explanation: 'Interest is a finance cost of the period and does not form part of '
        'the asset\'s cost.',
  ),
  Question(
    subjectId: 'i_fa',
    chapter: 'Hire Purchase',
    text: 'When the hirer defaults and the hire vendor takes back all the '
        'goods, it is called:',
    options: [
      'Bailment',
      'Instalment sale',
      'Partial repossession',
      'Complete repossession',
    ],
    answerIndex: 3,
    explanation: 'Under complete repossession the vendor takes back all the goods '
        'and the hirer loses the instalments already paid.',
  ),
  Question(
    subjectId: 'i_fa',
    chapter: 'Hire Purchase',
    text: 'Under an instalment payment (purchase) system, ownership of the '
        'goods passes to the buyer:',
    options: [
      'Immediately when the agreement is made',
      'Only on payment of the last instalment',
      'Never',
      'Only on payment of half the price',
    ],
    answerIndex: 0,
    explanation: 'Unlike hire purchase, an instalment sale is a sale on credit, so '
        'ownership passes at once.',
  ),
  Question(
    subjectId: 'i_fa',
    chapter: 'Hire Purchase',
    text: 'The cash price of an asset is ₹50,000 and the total hire purchase '
        'price ₹60,000. The total interest is:',
    options: ['₹10,000', '₹5,000', '₹60,000', '₹50,000'],
    answerIndex: 0,
    explanation: 'Total interest = Hire purchase price − Cash price = ₹10,000.',
  ),
  Question(
    subjectId: 'i_fa',
    chapter: 'Hire Purchase',
    text: 'In the hirer\'s books, the loss on partial repossession is '
        'calculated as:',
    options: [
      'Agreed value − Cash price',
      'Cash price − Down payment',
      'Book value of goods repossessed − Value agreed by the vendor',
      'Total instalments − Cash price',
    ],
    answerIndex: 2,
    explanation: 'The difference is charged to the Profit and Loss Account.',
  ),
  Question(
    subjectId: 'i_fa',
    chapter: 'Hire Purchase',
    text: 'The down payment in a hire purchase agreement:',
    options: [
      'Is refundable',
      'Contains no interest',
      'Contains interest for the first year',
      'Is the last instalment',
    ],
    answerIndex: 1,
    explanation: 'Interest is charged only on the outstanding cash price after the '
        'down payment.',
  ),
  Question(
    subjectId: 'i_fa',
    chapter: 'Hire Purchase',
    text: 'Cash price is ₹1,00,000, down payment ₹25,000 and interest 10% '
        'p.a. on the outstanding balance. The interest in the first annual '
        'instalment is:',
    options: ['₹12,500', '₹7,500', '₹10,000', '₹2,500'],
    answerIndex: 1,
    explanation: 'Interest = (1,00,000 − 25,000) × 10% = ₹7,500.',
  ),
  Question(
    subjectId: 'i_fa',
    chapter: 'Branch & Departmental Accounts',
    text: 'Goods are sent to a branch at an invoice price of ₹1,20,000, which is '
        'cost plus 20%. The loading included in the invoice price is:',
    options: ['₹24,000', '₹20,000', '₹1,00,000', '₹16,667'],
    answerIndex: 1,
    explanation: 'Cost plus 20% means loading is 20/120 of invoice price: '
        '1,20,000 × 20/120 = ₹20,000.',
  ),
  Question(
    subjectId: 'i_fa',
    chapter: 'Insurance Claims',
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
    chapter: 'Insurance Claims',
    text: 'Stock on the date of fire was ₹2,00,000 and the loss ₹80,000. The '
        'policy is for ₹1,50,000 and contains an average clause. The claim '
        'is:',
    options: ['₹40,000', '₹1,50,000', '₹60,000', '₹80,000'],
    answerIndex: 2,
    explanation: 'Claim = Loss × Policy value ÷ Value of stock = 80,000 × 1,50,000 ÷ '
        '2,00,000 = ₹60,000.',
  ),
  Question(
    subjectId: 'i_fa',
    chapter: 'Insurance Claims',
    text: 'In a loss of stock claim, the value of stock salvaged is:',
    options: [
      'Added to the claim',
      'Treated as income',
      'Deducted from the stock on the date of fire to find the loss',
      'Ignored',
    ],
    answerIndex: 2,
    explanation: 'Loss of stock = Stock on the date of fire − Value of salvage.',
  ),
  Question(
    subjectId: 'i_fa',
    chapter: 'Insurance Claims',
    text: 'Stock on the date of fire is usually estimated by preparing a:',
    options: [
      'Profit and Loss Account',
      'Memorandum Trading Account',
      'Cash Flow Statement',
      'Balance Sheet',
    ],
    answerIndex: 1,
    explanation: 'A Memorandum Trading Account uses the normal gross profit ratio to '
        'estimate closing stock on the date of the fire.',
  ),
  Question(
    subjectId: 'i_fa',
    chapter: 'Insurance Claims',
    text: 'Opening stock is ₹40,000, purchases ₹1,60,000 and sales ₹2,00,000. '
        'Gross profit is 25% of sales. The estimated stock on the date of '
        'fire is:',
    options: ['₹1,50,000', '₹0', '₹50,000', '₹40,000'],
    answerIndex: 2,
    explanation: 'Cost of sales = 2,00,000 × 75% = ₹1,50,000. Stock = 40,000 + '
        '1,60,000 − 1,50,000 = ₹50,000.',
  ),
  Question(
    subjectId: 'i_fa',
    chapter: 'Insurance Claims',
    text: 'A loss of profit (consequential loss) policy covers:',
    options: [
      'Loss of profit and standing charges due to interruption of business',
      'Only personal accidents of workers',
      'Only the building damaged',
      'Only the stock destroyed',
    ],
    answerIndex: 0,
    explanation: 'It compensates for reduced turnover and continuing fixed costs '
        'during the indemnity period after a fire.',
  ),
  Question(
    subjectId: 'i_fa',
    chapter: 'Insurance Claims',
    text: 'The average clause in a fire insurance policy applies when:',
    options: [
      'The stock is over-insured',
      'There is no loss',
      'The stock is insured for less than its value',
      'The loss exceeds the policy value',
    ],
    answerIndex: 2,
    explanation: 'The insured bears a share of the loss in proportion to the '
        'under-insurance.',
  ),
  Question(
    subjectId: 'i_fa',
    chapter: 'Insurance Claims',
    text: 'Stock on the date of fire is ₹80,000, the loss ₹50,000 and the '
        'policy ₹1,00,000 with an average clause. The claim is:',
    options: ['₹62,500', '₹50,000', '₹40,000', '₹1,00,000'],
    answerIndex: 1,
    explanation: 'The policy exceeds the value of stock, so the average clause does '
        'not apply; the full loss is payable.',
  ),
  Question(
    subjectId: 'i_fa',
    chapter: 'Insurance Claims',
    text: 'In a loss of profit policy, the indemnity period is the:',
    options: [
      'Period during which business results are affected by the damage, up to the limit in the policy',
      'Period before the fire',
      'Policy year',
      'Period of the fire',
    ],
    answerIndex: 0,
    explanation: 'The claim covers the reduction in turnover during the indemnity '
        'period.',
  ),
  Question(
    subjectId: 'i_fa',
    chapter: 'Insurance Claims',
    text: 'When the stock includes abnormal (slow-moving) items, the '
        'memorandum trading account is prepared:',
    options: [
      'Only for abnormal items',
      'Without using the gross profit ratio',
      'Separately for normal and abnormal items',
      'Ignoring the abnormal items',
    ],
    answerIndex: 2,
    explanation: 'Abnormal items do not earn the normal gross profit, so they are '
        'dealt with separately.',
  ),
  Question(
    subjectId: 'i_fa',
    chapter: 'Branch & Departmental Accounts',
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
    chapter: 'Branch & Departmental Accounts',
    text: 'Goods are sent to a branch at invoice price ₹60,000, which is cost '
        'plus 25%. The loading is:',
    options: ['₹15,000', '₹48,000', '₹10,000', '₹12,000'],
    answerIndex: 3,
    explanation: 'Loading = 60,000 × 25 ÷ 125 = ₹12,000.',
  ),
  Question(
    subjectId: 'i_fa',
    chapter: 'Branch & Departmental Accounts',
    text: 'Under the Debtors System of branch accounting, the profit or loss '
        'of the branch is found from the:',
    options: [
      'Goods Sent to Branch Account',
      'Branch Cash Account',
      'Branch Debtors Account',
      'Branch Account',
    ],
    answerIndex: 3,
    explanation: 'The Branch Account is debited with assets and goods sent and '
        'credited with remittances and closing assets; the balance is '
        'profit or loss.',
  ),
  Question(
    subjectId: 'i_fa',
    chapter: 'Branch & Departmental Accounts',
    text: 'In departmental accounts, advertising expenses are usually '
        'apportioned on the basis of:',
    options: [
      'Number of employees',
      'Value of fixed assets',
      'Sales of each department',
      'Floor area',
    ],
    answerIndex: 2,
    explanation: 'Advertising helps generate sales, so departmental sales is the '
        'usual basis.',
  ),
  Question(
    subjectId: 'i_fa',
    chapter: 'Branch & Departmental Accounts',
    text: 'When goods are transferred between departments at a profit, the '
        'unrealised profit in the closing stock is:',
    options: [
      'Eliminated by creating a stock reserve',
      'Added to the profit of the receiving department',
      'Ignored',
      'Credited to Capital Account',
    ],
    answerIndex: 0,
    explanation: 'Profit is not earned until goods are sold outside the business, so '
        'unrealised profit in stock is eliminated.',
  ),
  Question(
    subjectId: 'i_fa',
    chapter: 'Branch & Departmental Accounts',
    text: 'Under the Stock and Debtors System, the gross profit of the branch '
        'is shown by the:',
    options: [
      'Branch Stock Account',
      'Branch Expenses Account',
      'Branch Debtors Account',
      'Branch Adjustment Account',
    ],
    answerIndex: 3,
    explanation: 'The Branch Adjustment Account records the loading, so its balance '
        'shows gross profit.',
  ),
  Question(
    subjectId: 'i_fa',
    chapter: 'Branch & Departmental Accounts',
    text: 'An independent branch:',
    options: [
      'Maintains a complete set of books',
      'Keeps no books',
      'Only keeps a cash book',
      'Only sends cash to head office',
    ],
    answerIndex: 0,
    explanation: 'Its trial balance is incorporated in the head office books at the '
        'year end.',
  ),
  Question(
    subjectId: 'i_fa',
    chapter: 'Branch & Departmental Accounts',
    text: 'Goods are sent to a branch at cost plus 25%. Closing stock at the '
        'branch is ₹20,000 at invoice price. The stock reserve is:',
    options: ['₹2,500', '₹4,000', '₹5,000', '₹16,000'],
    answerIndex: 1,
    explanation: 'Stock reserve = 20,000 × 25 ÷ 125 = ₹4,000.',
  ),
  Question(
    subjectId: 'i_fa',
    chapter: 'Branch & Departmental Accounts',
    text: 'In departmental accounts, canteen and staff welfare expenses are '
        'usually apportioned on the basis of:',
    options: ['Number of employees', 'Value of stock', 'Sales', 'Floor area'],
    answerIndex: 0,
    explanation: 'Welfare costs relate to staff, so employee numbers is the fairest '
        'basis.',
  ),
  Question(
    subjectId: 'i_fa',
    chapter: 'Royalty & Joint Venture',
    text: 'Minimum rent under a royalty agreement is ₹50,000. Royalty earned on '
        'actual production is ₹35,000. Short workings are:',
    options: ['₹35,000', '₹50,000', '₹15,000', '₹85,000'],
    answerIndex: 2,
    explanation: 'Short workings = Minimum rent − Actual royalty = 50,000 − 35,000 = ₹15,000.',
  ),
  Question(
    subjectId: 'i_fa',
    chapter: 'Royalty & Joint Venture',
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
    chapter: 'Royalty & Joint Venture',
    text: 'In royalty accounts, short workings are:',
    options: [
      'The excess of actual royalty over minimum rent',
      'The excess of minimum rent over the actual royalty',
      'The royalty received from a sub-lessee',
      'The royalty paid in advance',
    ],
    answerIndex: 1,
    explanation: 'When royalty on actual output is less than minimum rent, the '
        'shortfall is a short working, often recoverable in later years.',
  ),
  Question(
    subjectId: 'i_fa',
    chapter: 'Royalty & Joint Venture',
    text: 'Royalty on actual production is ₹30,000 and the minimum rent is '
        '₹40,000. The short working is:',
    options: ['₹10,000', '₹40,000', '₹30,000', '₹70,000'],
    answerIndex: 0,
    explanation: 'Short working = Minimum rent − Actual royalty = 40,000 − 30,000 = '
        '₹10,000.',
  ),
  Question(
    subjectId: 'i_fa',
    chapter: 'Royalty & Joint Venture',
    text: 'Sub-lease royalty is the royalty:',
    options: [
      'Paid by the landlord to the lessee',
      'Paid by the lessee to the landlord',
      'Received by the lessee from a sub-lessee',
      'Paid to the government',
    ],
    answerIndex: 2,
    explanation: 'When the lessee sub-lets the right to a sub-lessee, the lessee '
        'receives sub-lease royalty.',
  ),
  Question(
    subjectId: 'i_fa',
    chapter: 'Royalty & Joint Venture',
    text: 'A joint venture differs from a partnership mainly because it:',
    options: [
      'Always has a firm name',
      'Is formed for a specific venture and ends on its completion',
      'Must be registered',
      'Has unlimited members',
    ],
    answerIndex: 1,
    explanation: 'A joint venture is a temporary arrangement for one particular '
        'venture, usually without a firm name.',
  ),
  Question(
    subjectId: 'i_fa',
    chapter: 'Royalty & Joint Venture',
    text: 'Recoupment of short workings in royalty accounts is possible:',
    options: [
      'Only in the year they arise',
      'Never',
      'At any time without limit',
      'Only as allowed by the agreement, usually within a specified period',
    ],
    answerIndex: 3,
    explanation: 'Short workings not recouped within the allowed period are written '
        'off.',
  ),
  Question(
    subjectId: 'i_fa',
    chapter: 'Royalty & Joint Venture',
    text: 'In the lessee\'s books, the Royalty Account is closed by transfer '
        'to the:',
    options: [
      'Capital Account',
      'Landlord\'s Account',
      'Short Workings Account',
      'Profit and Loss Account (or Manufacturing Account)',
    ],
    answerIndex: 3,
    explanation: 'Royalty is an expense of production or business.',
  ),
  Question(
    subjectId: 'i_fa',
    chapter: 'Royalty & Joint Venture',
    text: 'When a separate set of books is kept for a joint venture, the '
        'profit is found from the:',
    options: [
      'Joint Venture Account',
      'Memorandum Joint Venture Account',
      'Joint Bank Account',
      'Co-venturers\' Capital Accounts',
    ],
    answerIndex: 0,
    explanation: 'The memorandum method is used when no separate set of books is '
        'kept.',
  ),
  Question(
    subjectId: 'i_fa',
    chapter: 'Royalty & Joint Venture',
    text: 'Minimum rent is ₹50,000. Royalty is ₹40,000 in year 1 and ₹65,000 '
        'in year 2. Short workings are recoverable out of later excess '
        'royalty. The amount payable in year 2 is:',
    options: ['₹75,000', '₹55,000', '₹65,000', '₹50,000'],
    answerIndex: 1,
    explanation: 'Short working of year 1 = ₹10,000. Year 2 payment = 65,000 − '
        '10,000 = ₹55,000.',
  ),
  Question(
    subjectId: 'i_fa',
    chapter: 'Investment Accounts',
    text: '₹1,00,000 of 6% debentures are bought at 98 cum-interest, when '
        'interest for 3 months has accrued. The cost of the investment is:',
    options: ['₹98,000', '₹96,500', '₹99,500', '₹97,000'],
    answerIndex: 1,
    explanation: 'Accrued interest = 1,00,000 × 6% × 3/12 = ₹1,500, which is '
        'revenue. Cost = 98,000 − 1,500 = ₹96,500.',
  ),
  Question(
    subjectId: 'i_fa',
    chapter: 'Investment Accounts',
    text: 'Under AS 13, current investments are carried in the financial '
        'statements at:',
    options: [
      'Fair value always',
      'Cost always',
      'Face value',
      'The lower of cost and fair value',
    ],
    answerIndex: 3,
    explanation: 'Current investments are shown at the lower of cost and fair value, '
        'determined category-wise or individually.',
  ),
  Question(
    subjectId: 'i_fa',
    chapter: 'Investment Accounts',
    text: 'Under AS 13, long-term investments are carried at:',
    options: [
      'Market value',
      'Face value',
      'Cost, less provision for a decline other than temporary',
      'Lower of cost and market value',
    ],
    answerIndex: 2,
    explanation: 'A provision is made only for a permanent decline in value.',
  ),
  Question(
    subjectId: 'i_fa',
    chapter: 'Investment Accounts',
    text: 'An ex-interest price of a debenture means that the price:',
    options: [
      'Includes accrued interest',
      'Is paid without brokerage',
      'Is the face value',
      'Does not include interest accrued since the last interest date',
    ],
    answerIndex: 3,
    explanation: 'In an ex-interest quotation, the buyer pays accrued interest '
        'separately in addition to the quoted price.',
  ),
  Question(
    subjectId: 'i_fa',
    chapter: 'Investment Accounts',
    text: 'When bonus shares are received on an investment, the total cost of '
        'the holding:',
    options: [
      'Increases by the face value of the bonus shares',
      'Stays the same, while the number of shares increases',
      'Is credited to Profit and Loss',
      'Decreases',
    ],
    answerIndex: 1,
    explanation: 'No money is paid for bonus shares, so total cost is unchanged and '
        'the average cost per share falls.',
  ),
  Question(
    subjectId: 'i_fa',
    chapter: 'Investment Accounts',
    text: '₹50,000 of 9% debentures are bought at 96 ex-interest when 4 '
        'months\' interest has accrued. The total amount paid is:',
    options: ['₹49,500', '₹48,000', '₹46,500', '₹50,000'],
    answerIndex: 0,
    explanation: 'Price = 50,000 × 96% = ₹48,000; accrued interest = 50,000 × 9% × '
        '4/12 = ₹1,500; total paid = ₹49,500.',
  ),
  Question(
    subjectId: 'i_fa',
    chapter: 'Investment Accounts',
    text: 'A cum-interest price of a security:',
    options: [
      'Excludes accrued interest',
      'Includes brokerage only',
      'Is always the face value',
      'Includes interest accrued up to the date of purchase',
    ],
    answerIndex: 3,
    explanation: 'The interest element is separated and credited to Interest Account '
        'when recording the purchase.',
  ),
  Question(
    subjectId: 'i_fa',
    chapter: 'Investment Accounts',
    text: 'Under AS 13, investments are classified as:',
    options: [
      'Quoted and unquoted only',
      'Fixed and floating investments',
      'Equity and debt only',
      'Current investments and long-term investments',
    ],
    answerIndex: 3,
    explanation: 'Current investments are readily realisable and intended to be held '
        'for not more than a year.',
  ),
  Question(
    subjectId: 'i_fa',
    chapter: 'Investment Accounts',
    text: 'Dividend received on shares out of profits earned before the '
        'shares were bought is:',
    options: [
      'Added to the cost of the investment',
      'Credited fully to Profit and Loss',
      'Deducted from the cost of the investment',
      'Treated as capital reserve',
    ],
    answerIndex: 2,
    explanation: 'Under AS 13, dividends for pre-acquisition periods are a recovery '
        'of cost.',
  ),
  Question(
    subjectId: 'i_fa',
    chapter: 'Investment Accounts',
    text: '100 shares are bought at ₹50 and another 100 at ₹60. 50 shares are '
        'sold. Using the weighted average cost, the cost of shares sold is:',
    options: ['₹3,000', '₹2,500', '₹5,500', '₹2,750'],
    answerIndex: 3,
    explanation: 'Average cost = 11,000 ÷ 200 = ₹55; cost of 50 shares = ₹2,750.',
  ),
  Question(
    subjectId: 'i_fa',
    chapter: 'Not-for-Profit Organisations',
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
    chapter: 'Not-for-Profit Organisations',
    text: 'A donation received for a specific purpose (for example, a '
        'building fund) is:',
    options: [
      'Ignored',
      'Debited to the Capital Fund',
      'Credited to that specific fund and shown in the Balance Sheet',
      'Credited to the Income and Expenditure Account',
    ],
    answerIndex: 2,
    explanation: 'Specific (earmarked) donations are capital receipts and are shown '
        'as a separate fund on the liabilities side.',
  ),
  Question(
    subjectId: 'i_fa',
    chapter: 'Not-for-Profit Organisations',
    text: 'Sale proceeds of old furniture by a club are:',
    options: [
      'A capital receipt; only any profit or loss on sale goes to Income and Expenditure',
      'Added to subscriptions',
      'Wholly revenue income',
      'A revenue expense',
    ],
    answerIndex: 0,
    explanation: 'Sale of a fixed asset is a capital receipt; the profit or loss on '
        'sale is taken to the Income and Expenditure Account.',
  ),
  Question(
    subjectId: 'i_fa',
    chapter: 'Not-for-Profit Organisations',
    text: 'A club\'s stock of sports material was ₹5,000 at the start, '
        'purchases ₹20,000 and closing stock ₹3,000. The sports material '
        'consumed is:',
    options: ['₹20,000', '₹28,000', '₹18,000', '₹22,000'],
    answerIndex: 3,
    explanation: 'Consumption = Opening stock + Purchases − Closing stock = 5,000 + '
        '20,000 − 3,000 = ₹22,000.',
  ),
  Question(
    subjectId: 'i_fa',
    chapter: 'Not-for-Profit Organisations',
    text: 'Honorarium paid to the secretary of a club is:',
    options: [
      'A revenue expense shown in the Income and Expenditure Account',
      'A capital expenditure',
      'Deducted from the Capital Fund',
      'A liability',
    ],
    answerIndex: 0,
    explanation: 'Honorarium is a payment for services rendered and is a recurring '
        'revenue expense.',
  ),
  Question(
    subjectId: 'i_fa',
    chapter: 'Not-for-Profit Organisations',
    text: 'Income from investments of a specific fund (for example, a prize '
        'fund) is:',
    options: [
      'Credited to the Income and Expenditure Account',
      'Treated as subscription',
      'Credited to the Capital Fund',
      'Added to that specific fund',
    ],
    answerIndex: 3,
    explanation: 'Income earned on specific fund investments belongs to that fund, '
        'and expenses for that purpose are charged to it.',
  ),
  Question(
    subjectId: 'i_fa',
    chapter: 'Not-for-Profit Organisations',
    text: 'Receipts for an endowment fund are:',
    options: [
      'Expenses',
      'Revenue income',
      'Current liabilities',
      'Capital receipts',
    ],
    answerIndex: 3,
    explanation: 'Endowment funds are kept permanently, and only the income from '
        'them is used.',
  ),
  Question(
    subjectId: 'i_fa',
    chapter: 'Not-for-Profit Organisations',
    text: 'A deficit in the Income and Expenditure Account is:',
    options: [
      'Deducted from the Capital Fund',
      'Ignored',
      'Added to the Capital Fund',
      'Shown as an asset',
    ],
    answerIndex: 0,
    explanation: 'A deficit reduces the accumulated fund, just as a loss reduces '
        'capital.',
  ),
  Question(
    subjectId: 'i_fa',
    chapter: 'Not-for-Profit Organisations',
    text: 'Salary paid during the year is ₹30,000. Salary outstanding was '
        '₹2,000 at the start and ₹3,000 at the end. Salary expense for the '
        'year is:',
    options: ['₹30,000', '₹29,000', '₹31,000', '₹35,000'],
    answerIndex: 2,
    explanation: 'Expense = 30,000 − 2,000 + 3,000 = ₹31,000.',
  ),
  Question(
    subjectId: 'i_fa',
    chapter: 'Not-for-Profit Organisations',
    text: 'A Receipts and Payments Account is in the nature of a:',
    options: [
      'Nominal account',
      'Balance sheet',
      'Personal account',
      'Real account (summary of the cash book)',
    ],
    answerIndex: 3,
    explanation: 'It records all cash receipts and payments, capital or revenue, of '
        'any period.',
  ),
  Question(
    subjectId: 'i_fa',
    chapter: 'Self-Balancing Ledgers',
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
  Question(
    subjectId: 'i_fa',
    chapter: 'Self-Balancing Ledgers',
    text: 'Under the self-balancing system, the Debtors (Sales) Ledger '
        'contains a:',
    options: [
      'General Ledger Adjustment Account',
      'Suspense Account',
      'Capital Account',
      'Debtors Ledger Adjustment Account',
    ],
    answerIndex: 0,
    explanation: 'Each subsidiary ledger has a General Ledger Adjustment Account so '
        'that the ledger can balance on its own.',
  ),
  Question(
    subjectId: 'i_fa',
    chapter: 'Self-Balancing Ledgers',
    text: 'In the General Ledger, the account that represents all debtors is '
        'the:',
    options: [
      'Bills Receivable Account',
      'Debtors Ledger Adjustment Account',
      'Sales Account',
      'General Ledger Adjustment Account',
    ],
    answerIndex: 1,
    explanation: 'The Debtors (Sales) Ledger Adjustment Account in the General '
        'Ledger is a total account of all individual debtors.',
  ),
  Question(
    subjectId: 'i_fa',
    chapter: 'Self-Balancing Ledgers',
    text: 'Sectional balancing means:',
    options: [
      'No ledger is balanced',
      'Only one ledger, usually the debtors or creditors ledger, is balanced through a total account',
      'Only the cash book is balanced',
      'All ledgers are made self-balancing',
    ],
    answerIndex: 1,
    explanation: 'Under sectional balancing, a total account is kept in the General '
        'Ledger only for the chosen section.',
  ),
  Question(
    subjectId: 'i_fa',
    chapter: 'Self-Balancing Ledgers',
    text: 'Total credit sales for the month are posted in the Debtors Ledger '
        'Adjustment Account (in the General Ledger) on the:',
    options: ['Not posted at all', 'Debit side', 'Either side', 'Credit side'],
    answerIndex: 1,
    explanation: 'Credit sales increase debtors, so the total is debited to the '
        'Debtors Ledger Adjustment Account in the General Ledger.',
  ),
  Question(
    subjectId: 'i_fa',
    chapter: 'Self-Balancing Ledgers',
    text: 'The main advantage of self-balancing ledgers is that:',
    options: [
      'Fewer transactions are recorded',
      'Errors can be located in a particular ledger',
      'No trial balance is needed',
      'Double entry is not required',
    ],
    answerIndex: 1,
    explanation: 'Since each ledger balances independently, an error can be traced '
        'to the ledger in which it occurred.',
  ),
  Question(
    subjectId: 'i_fa',
    chapter: 'Self-Balancing Ledgers',
    text: 'The General Ledger Adjustment Account in the Creditors (Bought) '
        'Ledger normally has a:',
    options: [
      'Debit balance equal to total creditors',
      'Nil balance',
      'Credit balance equal to total creditors',
      'Balance equal to total debtors',
    ],
    answerIndex: 0,
    explanation: 'It is the mirror of the individual creditor accounts, which have '
        'credit balances.',
  ),
  Question(
    subjectId: 'i_fa',
    chapter: 'Self-Balancing Ledgers',
    text: 'Cash received from debtors is posted in the Debtors Ledger '
        'Adjustment Account (in the General Ledger) on the:',
    options: ['Either side', 'Not posted', 'Debit side', 'Credit side'],
    answerIndex: 3,
    explanation: 'Receipts reduce debtors, so the total is credited.',
  ),
  Question(
    subjectId: 'i_fa',
    chapter: 'Self-Balancing Ledgers',
    text: 'When a debtor\'s balance is set off against his balance in the '
        'Creditors Ledger, the transfer requires:',
    options: [
      'No entry',
      'An entry only in the Cash Book',
      'An entry only in the Debtors Ledger',
      'Entries in both adjustment accounts',
    ],
    answerIndex: 3,
    explanation: 'Both the Debtors and Creditors Ledger Adjustment Accounts must be '
        'adjusted.',
  ),
  Question(
    subjectId: 'i_fa',
    chapter: 'Self-Balancing Ledgers',
    text: 'Bills receivable received from debtors are posted in the Debtors '
        'Ledger Adjustment Account (in the General Ledger) on the:',
    options: ['Debit side', 'Not posted', 'Credit side', 'Either side'],
    answerIndex: 2,
    explanation: 'Bills received reduce the amount due from debtors.',
  ),
];
