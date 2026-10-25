import '../../../../models/question.dart';

const interFaMoreQuestions = [
  // Accounting Standards
  Question(
    subjectId: 'i_fa',
    chapter: 'Accounting Standards',
    text:
        'Under AS 3, interest paid by a manufacturing company is '
        'classified as:',
    options: [
      'Operating activity',
      'Investing activity',
      'Financing activity',
      'Not shown',
    ],
    answerIndex: 2,
    explanation:
        'For non-financial enterprises, interest and dividends paid '
        'are financing cash flows. For financial enterprises, interest paid '
        'is operating.',
  ),
  Question(
    subjectId: 'i_fa',
    chapter: 'Accounting Standards',
    text:
        'Under AS 16, borrowing costs are capitalised when they relate to '
        'a qualifying asset, which is one that:',
    options: [
      'Costs more than ₹1 crore',
      'Necessarily takes a substantial period of time to get ready for '
          'use or sale',
      'Is bought on credit',
      'Is held for trading',
    ],
    answerIndex: 1,
    explanation:
        'A substantial period is ordinarily 12 months or more. Other '
        'borrowing costs are expensed.',
  ),
  Question(
    subjectId: 'i_fa',
    chapter: 'Accounting Standards',
    text: 'Under AS 19, a finance lease is one that:',
    options: [
      'Is for less than one year',
      'Transfers substantially all the risks and rewards of ownership',
      'Is cancellable at any time',
      'Has no rent payments',
    ],
    answerIndex: 1,
    explanation:
        'Title may or may not pass. All other leases are operating '
        'leases.',
  ),
  Question(
    subjectId: 'i_fa',
    chapter: 'Accounting Standards',
    text: 'Under AS 22, deferred tax arises from:',
    options: [
      'Permanent differences',
      'Timing differences between accounting income and taxable income',
      'Tax paid late',
      'Dividend distribution',
    ],
    answerIndex: 1,
    explanation:
        'Timing differences originate in one period and reverse '
        'later, such as different depreciation for books and tax.',
  ),
  Question(
    subjectId: 'i_fa',
    chapter: 'Accounting Standards',
    text: 'Under AS 26, expenditure on research is:',
    options: [
      'Capitalised as an intangible asset',
      'Recognised as an expense when incurred',
      'Deferred for 5 years',
      'Added to inventory',
    ],
    answerIndex: 1,
    explanation:
        'Research costs are always expensed. Development costs may be '
        'capitalised if specific conditions, such as technical feasibility, '
        'are met.',
  ),
  Question(
    subjectId: 'i_fa',
    chapter: 'Accounting Standards',
    text:
        'Under AS 29, a provision is recognised when there is a present '
        'obligation, a probable outflow of resources, and:',
    options: [
      'A reliable estimate of the amount',
      'Approval by shareholders',
      'Cash in the bank',
      'A court order',
    ],
    answerIndex: 0,
    explanation:
        'All three conditions must be met. If not, the item may be '
        'disclosed as a contingent liability.',
  ),
  Question(
    subjectId: 'i_fa',
    chapter: 'Accounting Standards',
    text: 'Under AS 29, a contingent asset is:',
    options: [
      'Recognised in the balance sheet',
      'Not recognised in the financial statements',
      'Shown as a current asset',
      'Added to reserves',
    ],
    answerIndex: 1,
    explanation:
        'Recognising a contingent asset could mean recognising income '
        'that may never be realised. It is recognised only when realisation '
        'is virtually certain, at which point it is no longer contingent.',
  ),
  Question(
    subjectId: 'i_fa',
    chapter: 'Accounting Standards',
    text:
        'Under AS 11, foreign currency monetary items (such as trade '
        'payables) are reported at the balance sheet date using the:',
    options: [
      'Historical rate',
      'Closing rate',
      'Average rate for the year',
      'Rate chosen by management',
    ],
    answerIndex: 1,
    explanation:
        'Exchange differences on settlement or translation of monetary '
        'items are generally taken to profit and loss.',
  ),
  Question(
    subjectId: 'i_fa',
    chapter: 'Accounting Standards',
    text:
        'Under AS 20, basic EPS is net profit attributable to equity '
        'shareholders divided by:',
    options: [
      'Shares at the year end',
      'The weighted average number of equity shares outstanding',
      'Authorised shares',
      'Preference shares',
    ],
    answerIndex: 1,
    explanation:
        'Shares issued during the year are weighted for the time they '
        'were outstanding.',
  ),
  Question(
    subjectId: 'i_fa',
    chapter: 'Accounting Standards',
    text:
        'Under AS 28, the recoverable amount of an asset is the higher '
        'of:',
    options: [
      'Cost and market value',
      'Net selling price and value in use',
      'Book value and replacement cost',
      'Fair value and historical cost',
    ],
    answerIndex: 1,
    explanation:
        'An impairment loss is recognised when carrying amount exceeds '
        'recoverable amount.',
  ),

  // Hire Purchase
  Question(
    subjectId: 'i_fa',
    chapter: 'Hire Purchase',
    text:
        'Total HP interest is ₹9,000, payable over 3 equal annual '
        'instalments. Using the sum-of-digits method, interest in year 1 '
        'is:',
    options: ['₹3,000', '₹4,500', '₹6,000', '₹1,500'],
    answerIndex: 1,
    explanation:
        'Sum of digits = 3 + 2 + 1 = 6. Year 1 = 9,000 × 3/6 = '
        '₹4,500.',
  ),
  Question(
    subjectId: 'i_fa',
    chapter: 'Hire Purchase',
    text:
        'The last HP instalment is ₹33,000, including interest at 10% on '
        'the balance outstanding. The interest in it is:',
    options: ['₹3,300', '₹3,000', '₹30,000', '₹2,700'],
    answerIndex: 1,
    explanation:
        'The instalment = principal × 1.10, so interest = 33,000 × '
        '10/110 = ₹3,000.',
  ),
  Question(
    subjectId: 'i_fa',
    chapter: 'Hire Purchase',
    text:
        'The outstanding balance is ₹1,00,000 and an instalment of ₹40,000 '
        'is paid at the year end. Interest is 10%. The principal repaid is:',
    options: ['₹40,000', '₹30,000', '₹36,000', '₹10,000'],
    answerIndex: 1,
    explanation:
        'Interest = 1,00,000 × 10% = 10,000. Principal = 40,000 − '
        '10,000 = ₹30,000.',
  ),
  Question(
    subjectId: 'i_fa',
    chapter: 'Hire Purchase',
    text:
        'The hirer charges depreciation on an asset bought on hire '
        'purchase on:',
    options: [
      'The total HP price',
      'The cash price',
      'Only the instalments paid',
      'Nothing until ownership passes',
    ],
    answerIndex: 1,
    explanation:
        'The asset is capitalised at cash price, and depreciation is '
        'charged on that, even before ownership passes.',
  ),
  Question(
    subjectId: 'i_fa',
    chapter: 'Hire Purchase',
    text:
        'The hire purchase trading account method is used by vendors who '
        'sell:',
    options: [
      'A few high-value items',
      'Many low-value items',
      'Only land',
      'Services',
    ],
    answerIndex: 1,
    explanation:
        'Recording each small sale separately would be impractical, '
        'so totals are recorded through an HP trading account.',
  ),
  Question(
    subjectId: 'i_fa',
    chapter: 'Hire Purchase',
    text:
        'In the HP trading account, the loading (profit) on instalments not '
        'yet due is:',
    options: [
      'Credited to Profit and Loss',
      'Kept as a stock reserve',
      'Added to cash',
      'Ignored',
    ],
    answerIndex: 1,
    explanation:
        'Profit is recognised only as instalments fall due, so the '
        'loading on goods with customers is reserved.',
  ),
  Question(
    subjectId: 'i_fa',
    chapter: 'Hire Purchase',
    text:
        'On complete repossession, the hirer closes the asset account by '
        'transferring its balance to:',
    options: [
      'Capital Account',
      'The hire vendor\'s account',
      'Sales Account',
      'Depreciation Account',
    ],
    answerIndex: 1,
    explanation:
        'The vendor takes the asset in settlement. Any balance left in '
        'the vendor\'s account is a profit or loss on repossession.',
  ),
  Question(
    subjectId: 'i_fa',
    chapter: 'Hire Purchase',
    text:
        'At the start of an HP agreement, the hirer credits the hire '
        'vendor\'s account with:',
    options: [
      'The total HP price',
      'The cash price',
      'The down payment',
      'The first instalment',
    ],
    answerIndex: 1,
    explanation:
        'Asset A/c Dr To Hire Vendor A/c with the cash price. '
        'Interest is credited to the vendor as it falls due.',
  ),
  Question(
    subjectId: 'i_fa',
    chapter: 'Hire Purchase',
    text:
        'A key difference between hire purchase and an operating lease is '
        'that under hire purchase:',
    options: [
      'The user never gets ownership',
      'The hirer gets ownership on paying all instalments',
      'No interest is charged',
      'The lessor depreciates the asset',
    ],
    answerIndex: 1,
    explanation:
        'Under an operating lease, ownership usually stays with the '
        'lessor, and the lessee simply pays rent.',
  ),
  Question(
    subjectId: 'i_fa',
    chapter: 'Hire Purchase',
    text:
        'Cash price ₹60,000; down payment ₹15,000; two equal annual '
        'instalments of principal plus 10% interest on the balance. Interest '
        'in the second instalment is:',
    options: ['₹4,500', '₹2,250', '₹3,000', '₹1,500'],
    answerIndex: 1,
    explanation:
        'Balance 45,000; principal 22,500 a year. After year 1, the '
        'balance is 22,500, so year 2 interest = 22,500 × 10% = ₹2,250.',
  ),

  // Branch & Departmental Accounts
  Question(
    subjectId: 'i_fa',
    chapter: 'Branch & Departmental Accounts',
    text:
        'Under the debtors system: goods sent ₹40,000, expenses paid by '
        'head office ₹4,000, cash remitted by branch ₹50,000, closing stock '
        '₹8,000 (no other balances). Branch profit is:',
    options: ['₹6,000', '₹14,000', '₹18,000', '₹10,000'],
    answerIndex: 1,
    explanation:
        'Credits 50,000 + 8,000 = 58,000; debits 40,000 + 4,000 = '
        '44,000. Profit = ₹14,000.',
  ),
  Question(
    subjectId: 'i_fa',
    chapter: 'Branch & Departmental Accounts',
    text:
        'Department A transfers goods to B at cost plus 25%. B\'s closing '
        'stock includes such goods worth ₹10,000. The unrealised profit is:',
    options: ['₹2,500', '₹2,000', '₹1,250', '₹8,000'],
    answerIndex: 1,
    explanation:
        'Loading = 10,000 × 25/125 = ₹2,000. It is deducted from '
        'closing stock and from profit.',
  ),
  Question(
    subjectId: 'i_fa',
    chapter: 'Branch & Departmental Accounts',
    text:
        'In departmental accounts, power for running machines is usually '
        'apportioned on the basis of:',
    options: [
      'Floor area',
      'Horsepower of machines and hours used',
      'Number of light points',
      'Sales',
    ],
    answerIndex: 1,
    explanation:
        'Power use depends on machine capacity and running time. '
        'Lighting is apportioned on light points.',
  ),
  Question(
    subjectId: 'i_fa',
    chapter: 'Branch & Departmental Accounts',
    text:
        'In departmental accounts, selling expenses such as salesmen\'s '
        'commission are apportioned on the basis of:',
    options: ['Sales', 'Purchases', 'Floor area', 'Number of workers'],
    answerIndex: 0,
    explanation: 'Selling effort is linked to sales made by each department.',
  ),
  Question(
    subjectId: 'i_fa',
    chapter: 'Branch & Departmental Accounts',
    text:
        'Goods are sent to a branch at cost plus 33⅓%. The loading as a '
        'percentage of invoice price is:',
    options: ['33⅓%', '25%', '20%', '50%'],
    answerIndex: 1,
    explanation:
        'Loading on cost of 1/3 = loading on invoice of 1/4, since '
        'invoice = 4/3 of cost. So 25% of invoice.',
  ),
  Question(
    subjectId: 'i_fa',
    chapter: 'Branch & Departmental Accounts',
    text:
        'Under the stock and debtors system, the loading on goods sent to '
        'the branch is credited to the:',
    options: [
      'Branch Stock Account',
      'Branch Adjustment Account',
      'Branch Debtors Account',
      'Head Office Account',
    ],
    answerIndex: 1,
    explanation:
        'The Branch Adjustment Account collects loading, and its '
        'balance after adjusting for closing stock is the branch gross '
        'profit.',
  ),
  Question(
    subjectId: 'i_fa',
    chapter: 'Branch & Departmental Accounts',
    text:
        'Department X has sales of ₹2,00,000 and gross profit of ₹50,000. '
        'Its gross profit ratio is:',
    options: ['20%', '25%', '33⅓%', '40%'],
    answerIndex: 1,
    explanation: 'GP ratio = 50,000 ÷ 2,00,000 × 100 = 25%.',
  ),
  Question(
    subjectId: 'i_fa',
    chapter: 'Branch & Departmental Accounts',
    text:
        'In head office books, Goods Sent to Branch Account is closed by '
        'transfer to:',
    options: [
      'Branch Account',
      'Purchases (or Trading) Account',
      'Sales Account',
      'Capital Account',
    ],
    answerIndex: 1,
    explanation:
        'Goods sent to the branch are not sales, so they are '
        'deducted from purchases to avoid double counting.',
  ),
  Question(
    subjectId: 'i_fa',
    chapter: 'Branch & Departmental Accounts',
    text:
        'At the year end, cash remitted by an independent branch has not '
        'yet reached the head office. The head office records it as:',
    options: [
      'Branch expenses',
      'Cash in transit',
      'A bad debt',
      'Branch sales',
    ],
    answerIndex: 1,
    explanation:
        'Cash in Transit A/c Dr To Branch A/c, so that the branch and '
        'head office accounts agree.',
  ),
  Question(
    subjectId: 'i_fa',
    chapter: 'Branch & Departmental Accounts',
    text:
        'An independent branch differs from a dependent branch mainly '
        'because it:',
    options: [
      'Sells only for cash',
      'Keeps a complete set of books of its own',
      'Has no expenses',
      'Gets goods only from outside suppliers',
    ],
    answerIndex: 1,
    explanation:
        'An independent branch prepares its own trial balance, which '
        'the head office incorporates at the year end.',
  ),

  // Insurance Claims
  Question(
    subjectId: 'i_fa',
    chapter: 'Insurance Claims',
    text: 'Under-insurance means that:',
    options: [
      'The sum insured is more than the value of the property',
      'The sum insured is less than the value of the property',
      'The premium was not paid',
      'The policy has expired',
    ],
    answerIndex: 1,
    explanation:
        'With under-insurance, the average clause reduces the claim '
        'in proportion.',
  ),
  Question(
    subjectId: 'i_fa',
    chapter: 'Insurance Claims',
    text: 'In a loss of profit policy, "gross profit" means:',
    options: [
      'Sales − cost of goods sold',
      'Net profit + insured standing charges',
      'Net profit only',
      'Sales − all expenses',
    ],
    answerIndex: 1,
    explanation:
        'The policy covers the profit lost and the fixed costs that '
        'continue while turnover falls.',
  ),
  Question(
    subjectId: 'i_fa',
    chapter: 'Insurance Claims',
    text: '"Short sales" in a loss of profit claim means:',
    options: [
      'Sales on credit',
      'Standard turnover minus actual turnover in the indemnity period',
      'Sales below cost',
      'Returns from customers',
    ],
    answerIndex: 1,
    explanation:
        'The fall in turnover caused by the fire, times the rate of '
        'gross profit, is the main loss claimed.',
  ),
  Question(
    subjectId: 'i_fa',
    chapter: 'Insurance Claims',
    text:
        'Net profit is ₹1,00,000, insured standing charges ₹1,50,000 and '
        'turnover ₹10,00,000. The rate of gross profit for a loss of profit '
        'claim is:',
    options: ['10%', '15%', '25%', '40%'],
    answerIndex: 2,
    explanation: 'Rate = (1,00,000 + 1,50,000) ÷ 10,00,000 × 100 = 25%.',
  ),
  Question(
    subjectId: 'i_fa',
    chapter: 'Insurance Claims',
    text:
        'Short sales are ₹2,00,000 and the rate of gross profit is 20%. The '
        'loss of gross profit is:',
    options: ['₹20,000', '₹40,000', '₹1,60,000', '₹2,40,000'],
    answerIndex: 1,
    explanation: 'Loss = 2,00,000 × 20% = ₹40,000.',
  ),
  Question(
    subjectId: 'i_fa',
    chapter: 'Insurance Claims',
    text:
        'In a loss of profit claim, increased cost of working is allowed '
        'only up to:',
    options: [
      'The full amount spent',
      'The gross profit on the sales saved by that expenditure',
      'The sum insured',
      'Half of the amount spent',
    ],
    answerIndex: 1,
    explanation:
        'This is the economic limit: extra costs are covered only to '
        'the extent they reduce the loss of profit.',
  ),
  Question(
    subjectId: 'i_fa',
    chapter: 'Insurance Claims',
    text:
        'Adjusted annual turnover is ₹12,00,000 and the gross profit rate '
        '25%. The policy for loss of profit is ₹2,40,000. The proportion of '
        'the claim payable under the average clause is:',
    options: ['100%', '80%', '75%', '25%'],
    answerIndex: 1,
    explanation:
        'Insurable gross profit = 12,00,000 × 25% = 3,00,000. Ratio = '
        '2,40,000 ÷ 3,00,000 = 80%.',
  ),
  Question(
    subjectId: 'i_fa',
    chapter: 'Insurance Claims',
    text: 'An insurance claim can never be more than:',
    options: [
      'The sum insured or the actual loss, whichever is lower',
      'Twice the premium',
      'The value of total stock',
      'The cost of goods sold',
    ],
    answerIndex: 0,
    explanation:
        'Insurance is a contract of indemnity: it restores the loss '
        'and no more, within the sum insured.',
  ),
  Question(
    subjectId: 'i_fa',
    chapter: 'Insurance Claims',
    text:
        'The memorandum trading account for a stock claim covers the '
        'period:',
    options: [
      'Of the whole previous year',
      'From the start of the current year to the date of the fire',
      'After the fire',
      'Of the indemnity period',
    ],
    answerIndex: 1,
    explanation:
        'It estimates stock on the date of the fire using opening '
        'stock, purchases and sales up to that date.',
  ),
  Question(
    subjectId: 'i_fa',
    chapter: 'Insurance Claims',
    text:
        'The "standard turnover" in a loss of profit policy is the '
        'turnover:',
    options: [
      'Of the whole previous year',
      'In the period of the previous year matching the indemnity period',
      'In the current year to date',
      'Expected next year',
    ],
    answerIndex: 1,
    explanation:
        'It is adjusted for trends to estimate what turnover would '
        'have been without the fire.',
  ),

  // Royalty & Joint Venture
  Question(
    subjectId: 'i_fa',
    chapter: 'Royalty & Joint Venture',
    text:
        'In the lessor\'s (landlord\'s) books, royalty receivable is '
        'recorded by:',
    options: [
      'Royalty A/c Dr To Lessee',
      'Lessee Dr To Royalty Receivable A/c',
      'Bank Dr To Landlord',
      'Short Workings A/c Dr To Royalty',
    ],
    answerIndex: 1,
    explanation:
        'The lessee owes the royalty, so the lessee is debited and '
        'royalty income is credited.',
  ),
  Question(
    subjectId: 'i_fa',
    chapter: 'Royalty & Joint Venture',
    text: 'A strike or lockout clause in a lease usually provides that:',
    options: [
      'Royalty is doubled',
      'Minimum rent is reduced in proportion to the period lost',
      'The lease ends',
      'Short workings cannot be recouped',
    ],
    answerIndex: 1,
    explanation:
        'Since production stopped for reasons beyond the lessee\'s '
        'control, the minimum rent is reduced.',
  ),
  Question(
    subjectId: 'i_fa',
    chapter: 'Royalty & Joint Venture',
    text:
        'Short workings that can still be recouped are shown in the '
        'lessee\'s balance sheet as:',
    options: ['A liability', 'An asset', 'An expense', 'A reserve'],
    answerIndex: 1,
    explanation:
        'They represent amounts paid in advance that will reduce '
        'future payments.',
  ),
  Question(
    subjectId: 'i_fa',
    chapter: 'Royalty & Joint Venture',
    text:
        'Royalty is ₹3 per tonne. Output is 12,000 tonnes and the minimum '
        'rent is ₹40,000. The amount payable is:',
    options: ['₹36,000', '₹40,000', '₹4,000', '₹76,000'],
    answerIndex: 1,
    explanation:
        'Royalty = 36,000, less than the minimum rent, so ₹40,000 is '
        'paid. Short workings = ₹4,000.',
  ),
  Question(
    subjectId: 'i_fa',
    chapter: 'Royalty & Joint Venture',
    text: 'Short workings that can no longer be recouped are:',
    options: [
      'Carried forward forever',
      'Written off to Profit and Loss',
      'Added to capital',
      'Refunded by the lessor',
    ],
    answerIndex: 1,
    explanation:
        'Once the recoupment period expires, they are a loss to the '
        'lessee.',
  ),
  Question(
    subjectId: 'i_fa',
    chapter: 'Royalty & Joint Venture',
    text:
        'When a separate set of books is kept for a joint venture, cash '
        'contributed by co-venturers is usually paid into a:',
    options: [
      'Joint Bank Account',
      'Personal account of one venturer',
      'Suspense Account',
      'Capital Reserve',
    ],
    answerIndex: 0,
    explanation:
        'All receipts and payments of the venture pass through the '
        'joint bank account.',
  ),
  Question(
    subjectId: 'i_fa',
    chapter: 'Royalty & Joint Venture',
    text:
        'Unsold goods taken over by a co-venturer at an agreed value are '
        'credited to:',
    options: [
      'The co-venturer\'s account',
      'Joint Venture Account',
      'Joint Bank Account',
      'Profit and Loss Account',
    ],
    answerIndex: 1,
    explanation:
        'Joint Venture A/c is credited (like a sale) and the '
        'co-venturer\'s account is debited.',
  ),
  Question(
    subjectId: 'i_fa',
    chapter: 'Royalty & Joint Venture',
    text: 'If there is no agreement, joint venture profit is shared:',
    options: [
      'In the ratio of capital contributed',
      'Equally',
      'By the managing venturer only',
      'In proportion to sales made',
    ],
    answerIndex: 1,
    explanation:
        'As with a partnership, profits are shared equally in the '
        'absence of agreement.',
  ),
  Question(
    subjectId: 'i_fa',
    chapter: 'Royalty & Joint Venture',
    text: 'A royalty paid to the owner of a patent is usually based on:',
    options: [
      'The number of employees',
      'Units produced or sold using the patent',
      'Floor area',
      'Share capital',
    ],
    answerIndex: 1,
    explanation:
        'The patentee is paid for each unit made or sold, often with '
        'a minimum amount.',
  ),
  Question(
    subjectId: 'i_fa',
    chapter: 'Royalty & Joint Venture',
    text:
        'Under the memorandum method, each co-venturer records in his own '
        'books:',
    options: [
      'All transactions of the venture',
      'Only transactions he carried out himself, through a Joint Venture '
          'with Co-venturer Account',
      'Nothing at all',
      'Only the final profit',
    ],
    answerIndex: 1,
    explanation:
        'A Memorandum Joint Venture Account combining everyone\'s '
        'transactions is prepared outside the books to find the profit.',
  ),

  // Investment Accounts
  Question(
    subjectId: 'i_fa',
    chapter: 'Investment Accounts',
    text: 'Under AS 13, the cost of an investment includes:',
    options: [
      'Only the purchase price',
      'Purchase price plus brokerage, fees and duties',
      'Market value at the year end',
      'Accrued interest included in a cum-interest price',
    ],
    answerIndex: 1,
    explanation:
        'Acquisition charges are part of cost. Accrued interest in a '
        'cum-interest price is treated as income, not cost.',
  ),
  Question(
    subjectId: 'i_fa',
    chapter: 'Investment Accounts',
    text:
        'If an investor sells his rights entitlement instead of '
        'subscribing, the sale proceeds are:',
    options: [
      'Deducted from the cost of the shares held',
      'Credited to Profit and Loss',
      'Added to capital reserve',
      'Ignored',
    ],
    answerIndex: 1,
    explanation:
        'Under AS 13, proceeds from selling rights are taken to the '
        'Profit and Loss Account. If the shares are bought cum-rights and '
        'their value falls, the cost may be reduced instead.',
  ),
  Question(
    subjectId: 'i_fa',
    chapter: 'Investment Accounts',
    text:
        'When a current investment is reclassified as long-term, it is '
        'transferred at:',
    options: [
      'Cost',
      'Fair value',
      'The lower of cost and fair value',
      'The higher of cost and fair value',
    ],
    answerIndex: 2,
    explanation:
        'AS 13 requires the lower of cost and fair value on the date '
        'of transfer.',
  ),
  Question(
    subjectId: 'i_fa',
    chapter: 'Investment Accounts',
    text:
        'A long-term investment is written down when its value has '
        'declined:',
    options: [
      'Temporarily',
      'Other than temporarily',
      'By any amount',
      'Never',
    ],
    answerIndex: 1,
    explanation:
        'Long-term investments are carried at cost, less provision '
        'for a decline that is other than temporary.',
  ),
  Question(
    subjectId: 'i_fa',
    chapter: 'Investment Accounts',
    text:
        '₹1,00,000 of 8% bonds (interest on 31 March and 30 September) are '
        'bought ex-interest at 99 on 1 August. The total amount paid is:',
    options: ['₹99,000', '₹1,01,667', '₹1,00,333', '₹96,333'],
    answerIndex: 1,
    explanation:
        'Accrued interest for April to July = 1,00,000 × 8% × 4/12 = '
        '2,667. Total = 99,000 + 2,667 = ₹1,01,667.',
  ),
  Question(
    subjectId: 'i_fa',
    chapter: 'Investment Accounts',
    text:
        '₹50,000 of 12% debentures (interest on 30 June) are sold on 31 '
        'December at 101 cum-interest. The amount credited to the capital '
        'column is:',
    options: ['₹50,500', '₹47,500', '₹53,500', '₹50,000'],
    answerIndex: 1,
    explanation:
        'Accrued interest for July to December = 50,000 × 12% × 6/12 '
        '= 3,000 (income). Capital = 50,500 − 3,000 = ₹47,500.',
  ),
  Question(
    subjectId: 'i_fa',
    chapter: 'Investment Accounts',
    text:
        'An investment account for fixed-income securities usually has '
        'three columns for:',
    options: [
      'Cost, market value and profit',
      'Nominal value, income and capital (amount)',
      'Date, price and quantity',
      'Opening, closing and average',
    ],
    answerIndex: 1,
    explanation:
        'The columns separate the face value held, interest income and '
        'the capital cost.',
  ),
  Question(
    subjectId: 'i_fa',
    chapter: 'Investment Accounts',
    text:
        'On disposal of part of a holding of identical investments, AS 13 '
        'allocates the carrying amount using:',
    options: [
      'The highest cost',
      'The average carrying amount of the total holding',
      'The latest purchase price',
      'Market value',
    ],
    answerIndex: 1,
    explanation:
        'The average carrying amount is used to work out profit or '
        'loss on the part sold.',
  ),
  Question(
    subjectId: 'i_fa',
    chapter: 'Investment Accounts',
    text:
        'Interest received for the period before a cum-interest purchase '
        'is credited to the:',
    options: [
      'Income column',
      'Capital (amount) column, reducing cost',
      'Profit and Loss Account as income',
      'Share capital',
    ],
    answerIndex: 1,
    explanation:
        'It recovers part of the price paid, so it reduces the cost '
        'of the investment rather than being income.',
  ),
  Question(
    subjectId: 'i_fa',
    chapter: 'Investment Accounts',
    text:
        'Under AS 13, an investment in land or buildings not intended for '
        'use in operations is accounted for as:',
    options: [
      'Inventory',
      'A long-term investment',
      'A current asset',
      'Property, plant and equipment',
    ],
    answerIndex: 1,
    explanation:
        'AS 13 treats such investment property as a long-term '
        'investment.',
  ),

  // Not-for-Profit Organisations
  Question(
    subjectId: 'i_fa',
    chapter: 'Not-for-Profit Organisations',
    text:
        'Life membership fees of ₹50,000 are received. The club\'s policy '
        'is to spread them over an expected membership life of 10 years. '
        'The amount credited to income each year is:',
    options: ['₹50,000', '₹5,000', '₹10,000', 'Nil'],
    answerIndex: 1,
    explanation:
        '50,000 ÷ 10 = ₹5,000 a year. The rest stays in a Life '
        'Membership Fund.',
  ),
  Question(
    subjectId: 'i_fa',
    chapter: 'Not-for-Profit Organisations',
    text:
        'Entrance fees of ₹20,000 are received, and the club\'s policy is '
        'to capitalise 50%. Income for the year from entrance fees is:',
    options: ['₹20,000', '₹10,000', 'Nil', '₹5,000'],
    answerIndex: 1,
    explanation:
        'Half (₹10,000) goes to the Capital Fund; the other half is '
        'income.',
  ),
  Question(
    subjectId: 'i_fa',
    chapter: 'Not-for-Profit Organisations',
    text:
        'A tournament fund has ₹30,000. Tournament expenses are ₹36,000. '
        'The excess of ₹6,000 is:',
    options: [
      'Shown as a negative fund balance',
      'Charged to the Income and Expenditure Account',
      'Deducted from subscriptions',
      'Shown as an asset',
    ],
    answerIndex: 1,
    explanation:
        'The fund is closed, and the shortfall becomes an expense of '
        'the general fund.',
  ),
  Question(
    subjectId: 'i_fa',
    chapter: 'Not-for-Profit Organisations',
    text:
        'Opening stock of medicines in a hospital is ₹15,000, purchases '
        '₹94,000 and closing stock ₹12,000. Medicines consumed are:',
    options: ['₹97,000', '₹91,000', '₹1,21,000', '₹82,000'],
    answerIndex: 0,
    explanation: 'Consumption = 15,000 + 94,000 − 12,000 = ₹97,000.',
  ),
  Question(
    subjectId: 'i_fa',
    chapter: 'Not-for-Profit Organisations',
    text:
        'A government grant received by an NGO to build a school building '
        'is:',
    options: [
      'Revenue income',
      'A capital receipt, credited to a building or capital fund',
      'An expense',
      'Ignored',
    ],
    answerIndex: 1,
    explanation: 'It is for a capital purpose, so it is capitalised.',
  ),
  Question(
    subjectId: 'i_fa',
    chapter: 'Not-for-Profit Organisations',
    text:
        'Subscriptions of ₹2,000 outstanding from last year are found to '
        'be irrecoverable. They are:',
    options: [
      'Added to capital fund',
      'Written off as an expense in the Income and Expenditure Account',
      'Credited to subscriptions',
      'Shown as an asset',
    ],
    answerIndex: 1,
    explanation:
        'The asset recorded last year no longer exists, so it is '
        'written off like a bad debt.',
  ),
  Question(
    subjectId: 'i_fa',
    chapter: 'Not-for-Profit Organisations',
    text: 'Fund-based accounting in a not-for-profit organisation means:',
    options: [
      'Only one fund is kept',
      'Restricted funds are accounted for separately, with their own '
          'income and expenses',
      'Funds are shown as assets',
      'All funds are merged into income',
    ],
    answerIndex: 1,
    explanation:
        'It ensures money given for a purpose is used only for that '
        'purpose, and that this can be seen from the accounts.',
  ),
  Question(
    subjectId: 'i_fa',
    chapter: 'Not-for-Profit Organisations',
    text: 'Interest accrued on prize fund investments is:',
    options: [
      'Credited to the general Income and Expenditure Account',
      'Added to the Prize Fund',
      'Deducted from capital fund',
      'Ignored until received',
    ],
    answerIndex: 1,
    explanation:
        'Income from a specific fund\'s investments belongs to that '
        'fund.',
  ),
  Question(
    subjectId: 'i_fa',
    chapter: 'Not-for-Profit Organisations',
    text:
        'Rent of ₹18,000 was paid, of which ₹1,500 relates to next year. '
        'Rent charged to the Income and Expenditure Account is:',
    options: ['₹18,000', '₹16,500', '₹19,500', '₹1,500'],
    answerIndex: 1,
    explanation:
        'Only the current year\'s rent is charged: 18,000 − 1,500 = '
        '₹16,500. The prepaid ₹1,500 is an asset.',
  ),
  Question(
    subjectId: 'i_fa',
    chapter: 'Not-for-Profit Organisations',
    text:
        'Interest of ₹6,000 was received during the year and ₹1,000 more '
        'has accrued at the year end (none at the start). Interest income is:',
    options: ['₹6,000', '₹7,000', '₹5,000', '₹1,000'],
    answerIndex: 1,
    explanation:
        'Income = received + accrued = ₹7,000. The accrued ₹1,000 is '
        'an asset.',
  ),

  // Self-Balancing Ledgers
  Question(
    subjectId: 'i_fa',
    chapter: 'Self-Balancing Ledgers',
    text:
        'Opening debtors ₹50,000; credit sales ₹2,00,000; cash received '
        '₹1,60,000; returns ₹5,000; discount allowed ₹3,000. The closing '
        'balance of the Debtors Ledger Adjustment Account (in the General '
        'Ledger) is:',
    options: ['₹82,000', '₹92,000', '₹72,000', '₹88,000'],
    answerIndex: 0,
    explanation:
        '50,000 + 2,00,000 − 1,60,000 − 5,000 − 3,000 = ₹82,000 '
        '(debit).',
  ),
  Question(
    subjectId: 'i_fa',
    chapter: 'Self-Balancing Ledgers',
    text:
        'Opening creditors ₹30,000; credit purchases ₹1,00,000; payments '
        '₹80,000; returns ₹2,000; discount received ₹1,000; bills payable '
        'accepted ₹10,000. Closing creditors are:',
    options: ['₹47,000', '₹37,000', '₹40,000', '₹27,000'],
    answerIndex: 1,
    explanation:
        '30,000 + 1,00,000 − 80,000 − 2,000 − 1,000 − 10,000 = '
        '₹37,000.',
  ),
  Question(
    subjectId: 'i_fa',
    chapter: 'Self-Balancing Ledgers',
    text:
        'In the General Ledger, bad debts written off are posted to the '
        'Debtors Ledger Adjustment Account on the:',
    options: ['Debit side', 'Credit side', 'Both sides', 'Neither side'],
    answerIndex: 1,
    explanation:
        'Bad debts reduce total debtors, so they are credited, like '
        'cash received.',
  ),
  Question(
    subjectId: 'i_fa',
    chapter: 'Self-Balancing Ledgers',
    text:
        'A dishonoured bill receivable is posted to the Debtors Ledger '
        'Adjustment Account (in the General Ledger) on the:',
    options: ['Debit side', 'Credit side', 'Not posted', 'Both sides'],
    answerIndex: 0,
    explanation: 'The debtor owes the amount again, so total debtors rise.',
  ),
  Question(
    subjectId: 'i_fa',
    chapter: 'Self-Balancing Ledgers',
    text: 'Cash sales are posted to the adjustment accounts:',
    options: [
      'On the debit side',
      'On the credit side',
      'Not at all',
      'Only at the year end',
    ],
    answerIndex: 2,
    explanation:
        'Cash sales do not affect any debtor\'s personal account, so '
        'they do not go to the adjustment accounts.',
  ),
  Question(
    subjectId: 'i_fa',
    chapter: 'Self-Balancing Ledgers',
    text:
        'Discount received from suppliers is posted to the Creditors Ledger '
        'Adjustment Account (in the General Ledger) on the:',
    options: ['Debit side', 'Credit side', 'Not posted', 'Both sides'],
    answerIndex: 0,
    explanation: 'Discount received reduces total creditors, so it is debited.',
  ),
  Question(
    subjectId: 'i_fa',
    chapter: 'Self-Balancing Ledgers',
    text:
        'Sales returns are posted to the Debtors Ledger Adjustment Account '
        '(in the General Ledger) on the:',
    options: ['Debit side', 'Credit side', 'Not posted', 'Both sides'],
    answerIndex: 1,
    explanation:
        'Returns reduce what debtors owe, so the total debtors account '
        'is credited.',
  ),
  Question(
    subjectId: 'i_fa',
    chapter: 'Self-Balancing Ledgers',
    text:
        'The debit balance of the Debtors Ledger Adjustment Account in the '
        'General Ledger represents:',
    options: [
      'Total sales',
      'Total amount owed by all debtors',
      'Cash received',
      'Bad debts',
    ],
    answerIndex: 1,
    explanation:
        'It should equal the total of the balances in the Debtors '
        'Ledger.',
  ),
  Question(
    subjectId: 'i_fa',
    chapter: 'Self-Balancing Ledgers',
    text:
        'The General Ledger Adjustment Account in the Debtors Ledger is a '
        'mirror of the Debtors Ledger Adjustment Account in the General '
        'Ledger, so its balance is normally:',
    options: ['A debit', 'A credit', 'Zero', 'Equal to sales'],
    answerIndex: 1,
    explanation:
        'Entries appear on opposite sides in the two accounts, so the '
        'debit balance in one is a credit balance in the other.',
  ),
  Question(
    subjectId: 'i_fa',
    chapter: 'Self-Balancing Ledgers',
    text: 'Self-balancing ledgers are most useful in a business that:',
    options: [
      'Has very few transactions',
      'Has many ledgers and many accounting staff',
      'Keeps only a cash book',
      'Has no credit customers',
    ],
    answerIndex: 1,
    explanation:
        'Dividing the ledger helps share work and quickly find which '
        'section contains an error.',
  ),
];
