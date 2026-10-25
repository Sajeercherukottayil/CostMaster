import '../../../../models/question.dart';

const interFaMoreDescriptive = [
  // Accounting Standards
  DescriptiveQuestion(
    subjectId: 'i_fa',
    chapter: 'Accounting Standards',
    text:
        'Under AS 29, distinguish between a provision and a contingent '
        'liability.',
    marks: 5,
    answer:
        '• Obligation: a provision is a present obligation; a contingent '
        'liability is a possible obligation whose existence depends on '
        'uncertain future events, or a present obligation that does not '
        'meet the recognition criteria.\n'
        '• Probability: for a provision, an outflow of resources is probable; '
        'for a contingent liability, it is not probable, or cannot be '
        'measured reliably.\n'
        '• Measurement: a provision can be reliably estimated.\n'
        '• Treatment: a provision is recognised in the balance sheet; a '
        'contingent liability is only disclosed in the notes, unless the '
        'possibility of outflow is remote.\n'
        '• Examples: a provision for warranties; a contingent liability for '
        'a lawsuit the company expects to win.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_fa',
    chapter: 'Accounting Standards',
    text:
        'A company charges book depreciation of ₹1,00,000, while tax '
        'depreciation is ₹1,50,000. Profit before depreciation and tax is '
        '₹10,00,000 and the tax rate is 25%. Find current tax, deferred tax '
        'and the total tax expense under AS 22.',
    marks: 5,
    problem: true,
    answer:
        '• Accounting profit = 10,00,000 − 1,00,000 = 9,00,000\n'
        '• Taxable income = 10,00,000 − 1,50,000 = 8,50,000\n'
        '• Current tax = 8,50,000 × 25% = ₹2,12,500\n'
        '• Timing difference = 1,50,000 − 1,00,000 = 50,000, which will '
        'reverse later, so it creates a deferred tax liability\n'
        '• Deferred tax = 50,000 × 25% = ₹12,500 (liability)\n'
        '• Total tax expense = 2,12,500 + 12,500 = ₹2,25,000, which is 25% of '
        'accounting profit of ₹9,00,000.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_fa',
    chapter: 'Accounting Standards',
    text:
        'Net profit for the year is ₹12,00,000 and preference dividend is '
        '₹2,00,000. There were 1,00,000 equity shares at the start of the '
        'year, and 50,000 more were issued for cash on 1 October. The year '
        'ends on 31 March. Calculate basic EPS under AS 20.',
    marks: 4,
    problem: true,
    answer:
        '• Profit for equity shareholders = 12,00,000 − 2,00,000 = '
        '₹10,00,000\n'
        '• Weighted shares = 1,00,000 + 50,000 × 6/12 = 1,25,000\n'
        '• Basic EPS = 10,00,000 ÷ 1,25,000 = ₹8\n'
        'The new shares are counted only for the 6 months they were '
        'outstanding.',
  ),

  // Hire Purchase
  DescriptiveQuestion(
    subjectId: 'i_fa',
    chapter: 'Hire Purchase',
    text:
        'Explain the methods a hire vendor may use to account for hire '
        'purchase sales of high-value goods.',
    marks: 4,
    answer:
        '• Sales method (full cash price method): the cash price is '
        'credited to sales when the agreement is made, and the hirer is '
        'debited. Interest is credited to profit and loss as it falls due. '
        'Profit on sale is recognised at once.\n'
        '• Interest suspense method: the total HP price is debited to the '
        'hirer, with the cash price credited to sales and the total interest '
        'credited to an Interest Suspense Account. Each year\'s interest is '
        'transferred from suspense to profit and loss.\n'
        'Both show the same profit each year; they differ only in how '
        'interest is recorded. For many small items, an HP trading account '
        'is used instead.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_fa',
    chapter: 'Hire Purchase',
    text:
        'A hirer buys 3 machines with a cash price of ₹50,000 each, and '
        'depreciates them at 10% a year on WDV. After one year he defaults. '
        'The vendor repossesses one machine, valuing it at cost less 25%. '
        'Find the loss on repossession in the hirer\'s books.',
    marks: 5,
    problem: true,
    answer:
        '• Book value of one machine after one year = 50,000 − 10% = '
        '₹45,000\n'
        '• Agreed value taken by the vendor = 50,000 − 25% = ₹37,500\n'
        '• Loss on repossession = 45,000 − 37,500 = ₹7,500\n'
        'Entries in the hirer\'s books:\n'
        '• Hire Vendor A/c Dr 37,500; Loss on Repossession A/c Dr 7,500; To '
        'Machinery A/c 45,000\n'
        'The other two machines remain in the books at ₹90,000.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_fa',
    chapter: 'Hire Purchase',
    text:
        'Total HP interest of ₹18,000 is included in three equal annual '
        'instalments, but the rate is not given. Allocate the interest using '
        'the sum-of-digits method, and explain why the method is used.',
    marks: 4,
    problem: true,
    answer:
        'Sum of digits = 3 + 2 + 1 = 6\n'
        '• Year 1: 18,000 × 3/6 = ₹9,000\n'
        '• Year 2: 18,000 × 2/6 = ₹6,000\n'
        '• Year 3: 18,000 × 1/6 = ₹3,000\n'
        'Interest is charged on the outstanding balance, which is highest in '
        'the first year and falls as instalments are paid. The sum-of-digits '
        'method approximates this falling pattern when the rate is not '
        'known.',
  ),

  // Branch & Departmental Accounts
  DescriptiveQuestion(
    subjectId: 'i_fa',
    chapter: 'Branch & Departmental Accounts',
    text:
        'Goods are sent to a branch at invoice price ₹1,20,000 (cost plus '
        '20%). Branch sales are ₹60,000 cash and ₹50,000 credit. Closing '
        'stock at invoice price is ₹12,000. Branch expenses are ₹8,000. '
        'There is no opening stock. Under the stock and debtors system, find '
        'the branch gross profit and net profit.',
    marks: 6,
    problem: true,
    answer:
        'Loading = 20/120 = 1/6 of invoice price.\n'
        '• Goods sold at invoice price = 1,20,000 − 12,000 = 1,08,000\n'
        '• Actual sales = 1,10,000, so there is a surplus over invoice price '
        'of 2,000\n'
        'Branch Adjustment Account\n'
        '• Loading on goods sent = 20,000\n'
        '• Less loading on closing stock = 2,000\n'
        '• Loading on goods sold = 18,000\n'
        '• Add surplus on sales = 2,000\n'
        '• Gross profit = ₹20,000\n'
        'Net profit = 20,000 − 8,000 = ₹12,000\n'
        'Check: cost of goods sold = 1,08,000 ÷ 1.2 = 90,000; 1,10,000 − '
        '90,000 = 20,000.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_fa',
    chapter: 'Branch & Departmental Accounts',
    text:
        'Department A transfers goods to department B at cost plus 25%. At '
        'the year end, B\'s stock includes goods from A worth ₹25,000 at '
        'transfer price. The profits shown are A ₹80,000 and B ₹60,000. Find '
        'the correct total profit and pass the entry.',
    marks: 4,
    problem: true,
    answer:
        '• Unrealised profit = 25,000 × 25/125 = ₹5,000\n'
        '• This profit was recorded by A but the goods are still in the '
        'business, so it is not yet earned\n'
        '• Entry: Profit and Loss A/c Dr 5,000 To Stock Reserve A/c 5,000\n'
        '• Correct total profit = 80,000 + 60,000 − 5,000 = ₹1,35,000\n'
        'B\'s closing stock is shown in the balance sheet at cost: 25,000 − '
        '5,000 = 20,000 for these goods.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_fa',
    chapter: 'Branch & Departmental Accounts',
    text:
        'Why do the Branch Account in head office books and the Head '
        'Office Account in an independent branch\'s books sometimes not '
        'agree? How is this corrected?',
    marks: 4,
    answer:
        'Reasons:\n'
        '• Goods sent by head office but not yet received by the branch.\n'
        '• Cash sent by the branch but not yet received by head office.\n'
        '• Expenses or income recorded by one side but not the other, such '
        'as depreciation of branch assets kept in head office books.\n'
        '• Errors in either set of books.\n'
        'Correction: before combining the accounts, adjustment entries are '
        'passed, usually in head office books. For example, Goods in Transit '
        'A/c Dr To Branch A/c, and Cash in Transit A/c Dr To Branch A/c. '
        'Once the two balances agree, they cancel out on consolidation.',
  ),

  // Insurance Claims
  DescriptiveQuestion(
    subjectId: 'i_fa',
    chapter: 'Insurance Claims',
    text:
        'Explain these terms in a loss of profit policy: indemnity period, '
        'standard turnover, annual turnover, rate of gross profit and '
        'increased cost of working.',
    marks: 5,
    answer:
        '• Indemnity period: the period after the fire, not more than '
        'the period stated in the policy, during which results are affected '
        'by the damage.\n'
        '• Standard turnover: turnover in the period of the previous year '
        'that matches the indemnity period, adjusted for trends.\n'
        '• Annual turnover: turnover in the 12 months just before the fire, '
        'adjusted for trends. It is used for the average clause.\n'
        '• Rate of gross profit: (net profit + insured standing charges) ÷ '
        'turnover, usually from the last financial year.\n'
        '• Increased cost of working: extra costs incurred to reduce the fall '
        'in turnover, such as renting other premises. They are covered up '
        'to the gross profit on the sales they save.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_fa',
    chapter: 'Insurance Claims',
    text:
        'A fire on 1 January 2026 disrupts business for 3 months. Sales '
        'for January to March 2025 were ₹6,00,000; sales are trending up by '
        '10%. Actual sales for January to March 2026 were ₹2,60,000. Annual '
        'turnover for the 12 months before the fire was ₹25,00,000. The rate '
        'of gross profit is 20%. Increased cost of working was ₹10,000 (all '
        'allowable). The loss of profit policy is for ₹4,40,000. Calculate '
        'the claim.',
    marks: 8,
    problem: true,
    answer:
        '• Standard turnover = 6,00,000 + 10% = 6,60,000\n'
        '• Short sales = 6,60,000 − 2,60,000 = 4,00,000\n'
        '• Loss of gross profit = 4,00,000 × 20% = 80,000\n'
        '• Add increased cost of working = 10,000\n'
        '• Total = 90,000\n'
        'Average clause:\n'
        '• Adjusted annual turnover = 25,00,000 + 10% = 27,50,000\n'
        '• Insurable gross profit = 27,50,000 × 20% = 5,50,000\n'
        '• Ratio = 4,40,000 ÷ 5,50,000 = 0.8\n'
        'Claim = 90,000 × 0.8 = ₹72,000',
  ),
  DescriptiveQuestion(
    subjectId: 'i_fa',
    chapter: 'Insurance Claims',
    text:
        'A fire destroys stock. Opening stock of ₹80,000 includes '
        'slow-moving items costing ₹10,000. Purchases are ₹3,00,000. Sales '
        'are ₹3,90,000, including slow-moving items costing ₹8,000 sold for '
        '₹6,000. The remaining slow-moving items are valued at 50% of cost. '
        'Normal gross profit is 25% of sales. Salvage is ₹5,000. The policy '
        'is ₹66,400 with an average clause. Calculate the claim.',
    marks: 8,
    problem: true,
    answer:
        'Prepare the memorandum trading account for normal items only.\n'
        '• Normal opening stock = 80,000 − 10,000 = 70,000\n'
        '• Normal sales = 3,90,000 − 6,000 = 3,84,000\n'
        '• Normal cost of sales = 3,84,000 × 75% = 2,88,000\n'
        '• Normal stock on date of fire = 70,000 + 3,00,000 − 2,88,000 = '
        '82,000\n'
        'Slow-moving items left = 10,000 − 8,000 = 2,000 at cost, valued at '
        '50% = 1,000\n'
        '• Total stock on date of fire = 82,000 + 1,000 = 83,000\n'
        '• Loss = 83,000 − 5,000 salvage = 78,000\n'
        '• Average clause: claim = 78,000 × 66,400 ÷ 83,000 = ₹62,400',
  ),
  DescriptiveQuestion(
    subjectId: 'i_fa',
    chapter: 'Insurance Claims',
    text: 'State the steps in calculating a claim for loss of stock.',
    marks: 4,
    answer:
        '1. Prepare a memorandum trading account from the start of the '
        'year to the date of the fire, using last year\'s gross profit rate, '
        'to estimate the stock on the date of the fire.\n'
        '2. Adjust for abnormal items, such as slow-moving stock or goods '
        'with a different margin, by dealing with them separately.\n'
        '3. Deduct the value of stock salvaged to find the loss of stock.\n'
        '4. If the policy has an average clause and the sum insured is less '
        'than the stock value on the date of the fire, reduce the claim: '
        'Loss × Sum insured ÷ Value of stock.\n'
        '5. The claim cannot exceed the sum insured or the actual loss.',
  ),

  // Royalty & Joint Venture
  DescriptiveQuestion(
    subjectId: 'i_fa',
    chapter: 'Royalty & Joint Venture',
    text:
        'Royalty is ₹2 per tonne, with a minimum rent of ₹60,000. Short '
        'workings can be recouped within the next 2 years. If there is a '
        'strike, the minimum rent is reduced in proportion to the time lost. '
        'Output: year 1, 20,000 tonnes; year 2, 25,000 tonnes (strike for 3 '
        'months); year 3, 40,000 tonnes. Show the payment each year.',
    marks: 6,
    problem: true,
    answer:
        'Year 1: royalty 40,000; minimum rent 60,000; pay 60,000; short '
        'workings 20,000\n'
        'Year 2: minimum rent reduced to 60,000 × 9/12 = 45,000; royalty '
        '50,000; excess over minimum 5,000 recoups year 1 short workings; '
        'pay 45,000; 15,000 short workings left\n'
        'Year 3: royalty 80,000; excess over minimum 20,000; recoup the '
        'remaining 15,000 (last year for year 1 short workings); pay 65,000\n'
        'Total paid = 1,70,000 = total royalty (40,000 + 50,000 + 80,000).',
  ),
  DescriptiveQuestion(
    subjectId: 'i_fa',
    chapter: 'Royalty & Joint Venture',
    text:
        'A and B share a joint venture equally. They open a joint bank '
        'account: A pays in ₹30,000 and B ₹20,000. Goods costing ₹45,000 are '
        'bought and expenses of ₹3,000 paid from the account. Sales are '
        '₹70,000, banked. B takes over the unsold goods at ₹2,000. Find the '
        'profit and the final settlement.',
    marks: 6,
    problem: true,
    answer:
        'Joint Venture Account\n'
        '• Credits: sales 70,000 + goods taken by B 2,000 = 72,000\n'
        '• Debits: goods 45,000 + expenses 3,000 = 48,000\n'
        '• Profit = ₹24,000, so A 12,000 and B 12,000\n'
        'Joint bank balance = 50,000 − 45,000 − 3,000 + 70,000 = ₹72,000\n'
        'Settlement from the bank:\n'
        '• A: 30,000 + 12,000 = ₹42,000\n'
        '• B: 20,000 + 12,000 − 2,000 (goods taken) = ₹30,000\n'
        'Check: 42,000 + 30,000 = 72,000, which closes the bank account.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_fa',
    chapter: 'Royalty & Joint Venture',
    text: 'Distinguish between a joint venture and a consignment.',
    marks: 4,
    answer:
        '• Relationship: co-venturers are like partners for the venture; '
        'a consignor and consignee are principal and agent.\n'
        '• Ownership: goods in a joint venture belong jointly to the '
        'venturers; consigned goods belong to the consignor.\n'
        '• Profit: joint venture profit is shared in the agreed ratio; in a '
        'consignment, the consignor keeps the profit and the consignee gets '
        'commission.\n'
        '• Risk: co-venturers share risk; in a consignment, the consignor '
        'bears it.\n'
        '• Statements: a consignee sends an Account Sales; co-venturers '
        'exchange accounts of their transactions.',
  ),

  // Investment Accounts
  DescriptiveQuestion(
    subjectId: 'i_fa',
    chapter: 'Investment Accounts',
    text:
        'An investor holds 12% debentures with interest on 30 June and 31 '
        'December. On 1 March he buys ₹60,000 (face value) at 98 '
        'cum-interest. On 1 September he sells ₹30,000 at 101 ex-interest. '
        'Find the cost, the profit on sale (average cost) and the interest '
        'income for the year to 31 December.',
    marks: 8,
    problem: true,
    answer:
        'Purchase on 1 March\n'
        '• Price = 60,000 × 98% = 58,800, which includes accrued interest '
        'for January and February = 60,000 × 12% × 2/12 = 1,200\n'
        '• Cost (capital) = 58,800 − 1,200 = ₹57,600\n'
        'Interest on 30 June = 60,000 × 6% = 3,600\n'
        'Sale on 1 September (ex-interest)\n'
        '• Capital received = 30,000 × 101% = 30,300\n'
        '• Accrued interest for July and August received = 30,000 × 12% × '
        '2/12 = 600\n'
        '• Cost of half sold = 28,800, so profit on sale = ₹1,500\n'
        'Interest on 31 December on ₹30,000 = 1,800\n'
        'Interest income = 3,600 + 600 + 1,800 − 1,200 = ₹4,800\n'
        'Check: 60,000 held for 6 months + 30,000 for 4 months = 3,600 + '
        '1,200 = 4,800.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_fa',
    chapter: 'Investment Accounts',
    text:
        'Explain the classification and valuation of investments under '
        'AS 13.',
    marks: 5,
    answer:
        'Classification:\n'
        '• Current investments: readily realisable and intended to be held '
        'for not more than one year from the date of purchase.\n'
        '• Long-term investments: all other investments.\n'
        'Valuation:\n'
        '• Current investments: at the lower of cost and fair value, '
        'individually or by category, not on a total portfolio basis.\n'
        '• Long-term investments: at cost, less provision for any decline in '
        'value that is other than temporary.\n'
        'Other points:\n'
        '• Cost includes brokerage, fees and duties.\n'
        '• Reclassification from current to long-term is at the lower of '
        'cost and fair value; from long-term to current, at the lower of '
        'cost and carrying amount.\n'
        '• Investment property is treated as a long-term investment.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_fa',
    chapter: 'Investment Accounts',
    text:
        'An investor holds 1,000 shares costing ₹1,20,000. The company '
        'offers rights of 1 share for every 4 held at ₹80. (a) Find the '
        'total cost if the investor subscribes. (b) How is it treated if he '
        'instead sells the rights for ₹10 per right share?',
    marks: 4,
    problem: true,
    answer:
        '• Right shares = 1,000 ÷ 4 = 250\n'
        '(a) Subscribing: cost of right shares = 250 × 80 = 20,000\n'
        '• Total holding = 1,250 shares at a cost of ₹1,40,000, an average '
        'of ₹112 per share\n'
        '(b) Selling the rights: proceeds = 250 × 10 = ₹2,500\n'
        '• Under AS 13, this is credited to the Profit and Loss Account. The '
        'holding stays at 1,000 shares costing ₹1,20,000, unless the shares '
        'were bought cum-rights and their value has fallen, in which case '
        'the proceeds may reduce cost.',
  ),

  // Not-for-Profit Organisations
  DescriptiveQuestion(
    subjectId: 'i_fa',
    chapter: 'Not-for-Profit Organisations',
    text:
        'Receipts: subscriptions ₹1,20,000 (includes ₹8,000 for last year '
        'and ₹5,000 for next year; ₹10,000 is outstanding for this year); '
        'general donations ₹20,000; entrance fees ₹10,000 (policy: '
        'capitalise 50%); interest ₹6,000 (₹1,000 more accrued). Payments: '
        'salaries ₹48,000 (₹4,000 outstanding); rent ₹18,000 (₹1,500 '
        'prepaid); electricity ₹7,000. Depreciation is ₹9,000. Find the '
        'surplus or deficit.',
    marks: 8,
    problem: true,
    answer:
        'Income\n'
        '• Subscriptions = 1,20,000 − 8,000 − 5,000 + 10,000 = 1,17,000\n'
        '• Donations = 20,000\n'
        '• Entrance fees (50%) = 5,000\n'
        '• Interest = 6,000 + 1,000 = 7,000\n'
        '• Total income = 1,49,000\n'
        'Expenditure\n'
        '• Salaries = 48,000 + 4,000 = 52,000\n'
        '• Rent = 18,000 − 1,500 = 16,500\n'
        '• Electricity = 7,000\n'
        '• Depreciation = 9,000\n'
        '• Total expenditure = 84,500\n'
        'Surplus = 1,49,000 − 84,500 = ₹64,500',
  ),
  DescriptiveQuestion(
    subjectId: 'i_fa',
    chapter: 'Not-for-Profit Organisations',
    text:
        'A hospital paid ₹90,000 to suppliers of medicines. Creditors for '
        'medicines were ₹10,000 at the start and ₹14,000 at the end. Stock '
        'of medicines was ₹15,000 at the start and ₹12,000 at the end. Find '
        'the medicines consumed.',
    marks: 4,
    problem: true,
    answer:
        '• Purchases = Payment − Opening creditors + Closing creditors = '
        '90,000 − 10,000 + 14,000 = ₹94,000\n'
        '• Consumption = Opening stock + Purchases − Closing stock = 15,000 '
        '+ 94,000 − 12,000 = ₹97,000\n'
        'Charge ₹97,000 to the Income and Expenditure Account. Show stock '
        'of ₹12,000 as an asset and creditors of ₹14,000 as a liability.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_fa',
    chapter: 'Not-for-Profit Organisations',
    text:
        'What is fund-based accounting in not-for-profit organisations? '
        'Explain the treatment of restricted and unrestricted funds.',
    marks: 4,
    answer:
        'Fund-based accounting records resources by the purpose for which '
        'they may be used, so that donors\' conditions are respected.\n'
        '• Unrestricted (general) fund: can be used for any purpose of the '
        'organisation. The Income and Expenditure Account relates to this '
        'fund, and the surplus is added to the capital (general) fund.\n'
        '• Restricted funds: given for a specific purpose, such as a '
        'building fund or prize fund. Each is shown separately. Income from '
        'its investments is added to the fund, and spending for its purpose '
        'is deducted from it.\n'
        '• Endowment funds: the capital must be kept intact, and only the '
        'income may be spent.\n'
        'If spending exceeds a restricted fund, the excess is charged to the '
        'general fund.',
  ),

  // Self-Balancing Ledgers
  DescriptiveQuestion(
    subjectId: 'i_fa',
    chapter: 'Self-Balancing Ledgers',
    text:
        'Prepare the General Ledger Adjustment Account in the Debtors '
        'Ledger: opening debtors ₹40,000; credit sales ₹1,50,000; cash '
        'received ₹1,20,000; returns ₹4,000; bad debts ₹1,000; transfer to '
        'creditors ledger ₹2,000.',
    marks: 5,
    problem: true,
    answer:
        'This account is the mirror image of the Debtors Ledger '
        'Adjustment Account in the General Ledger, so items appear on the '
        'opposite sides.\n'
        'Credit side:\n'
        '• Opening balance: 40,000\n'
        '• Credit sales: 1,50,000\n'
        '• Total: 1,90,000\n'
        'Debit side:\n'
        '• Cash received: 1,20,000\n'
        '• Returns: 4,000\n'
        '• Bad debts: 1,000\n'
        '• Transfer to creditors ledger: 2,000\n'
        '• Closing balance c/d: 63,000\n'
        '• Total: 1,90,000\n'
        'The closing credit balance of ₹63,000 equals total debtors.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_fa',
    chapter: 'Self-Balancing Ledgers',
    text:
        'X owes the firm ₹5,000 as a customer and is owed ₹3,000 as a '
        'supplier. The balances are set off. Pass the entries in all three '
        'ledgers under the self-balancing system.',
    marks: 4,
    problem: true,
    answer:
        'Set-off amount = ₹3,000 (the smaller balance).\n'
        'Personal accounts:\n'
        '• Creditors ledger: X\'s account Dr 3,000\n'
        '• Debtors ledger: X\'s account Cr 3,000\n'
        'Adjustment accounts:\n'
        '• General Ledger: Creditors Ledger Adjustment A/c Dr 3,000 To '
        'Debtors Ledger Adjustment A/c 3,000\n'
        '• Debtors ledger: General Ledger Adjustment A/c Dr 3,000\n'
        '• Creditors ledger: General Ledger Adjustment A/c Cr 3,000\n'
        'After this, X owes ₹2,000 as a debtor and nothing as a creditor.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_fa',
    chapter: 'Self-Balancing Ledgers',
    text: 'Distinguish between self-balancing and sectional balancing.',
    marks: 4,
    answer:
        '• Adjustment accounts: under self-balancing, each subsidiary '
        'ledger has a General Ledger Adjustment Account, and the general '
        'ledger has matching accounts; under sectional balancing, only the '
        'general ledger has total (control) accounts.\n'
        '• Trial balance: each ledger can produce its own trial balance '
        'under self-balancing; under sectional balancing, only the general '
        'ledger can, and subsidiary ledgers are checked against the control '
        'accounts.\n'
        '• Double entry: self-balancing is complete double entry in each '
        'ledger; sectional balancing is not.\n'
        '• Use: self-balancing suits large businesses with many ledgers; '
        'sectional balancing is simpler for smaller ones.',
  ),
];
