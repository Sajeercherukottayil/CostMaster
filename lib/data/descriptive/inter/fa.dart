import '../../../models/question.dart';

const interFaDescriptive = [
  DescriptiveQuestion(
    subjectId: 'i_fa',
    chapter: 'Accounting Standards',
    text:
        'Explain how inventories are valued under AS 2. Which costs are '
        'excluded from the cost of inventories?',
    marks: 5,
    answer:
        'Under AS 2, inventories are valued at the lower of cost and net '
        'realisable value (NRV). NRV is the estimated selling price less the '
        'estimated costs of completion and of making the sale.\n'
        'Cost includes:\n'
        '• Costs of purchase: price, import duties, non-recoverable taxes, '
        'freight and handling, less trade discounts and rebates.\n'
        '• Costs of conversion: direct labour and a systematic allocation of '
        'fixed and variable production overheads, with fixed overheads based '
        'on normal capacity.\n'
        '• Other costs incurred to bring the inventory to its present '
        'location and condition.\n'
        'Excluded costs:\n'
        '• Abnormal amounts of wasted material, labour or other costs.\n'
        '• Storage costs, unless needed in the production process.\n'
        '• Administrative overheads that do not help bring inventory to its '
        'present location and condition.\n'
        '• Selling and distribution costs.\n'
        'Cost is assigned using specific identification where items are not '
        'interchangeable, and otherwise FIFO or weighted average.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_fa',
    chapter: 'Hire Purchase',
    text:
        'Distinguish between a hire purchase agreement and an instalment '
        'sale.',
    marks: 4,
    answer:
        '• Ownership: under hire purchase, ownership passes to the hirer '
        'only when the last instalment is paid; under an instalment sale, it '
        'passes at once when the agreement is made.\n'
        '• Nature: hire purchase is a contract of hiring with an option to '
        'buy; an instalment sale is a sale.\n'
        '• Default: on default in hire purchase, the vendor can take back the '
        'goods and keep the instalments paid as hire charges; in an '
        'instalment sale, the seller can only sue for the balance due.\n'
        '• Resale by buyer: a hirer cannot sell the goods before paying all '
        'instalments; an instalment buyer can.\n'
        '• Risk: in hire purchase, the vendor bears the risk of loss unless '
        'the hirer is negligent; in an instalment sale, the buyer bears it.\n'
        'In both cases, the buyer usually records the asset at cash price and '
        'charges the interest element to profit and loss.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_fa',
    chapter: 'Branch & Departmental Accounts',
    text: 'Explain the methods of keeping accounts of a dependent branch.',
    marks: 5,
    answer:
        'A dependent branch does not keep a full set of books; the head '
        'office records its transactions. The main methods are:\n'
        '• Debtors system: the head office opens a Branch Account for each '
        'branch. It is debited with goods sent, expenses paid and opening '
        'balances, and credited with remittances and closing balances. The '
        'balance is the branch profit or loss. It suits small branches.\n'
        '• Stock and debtors system: separate accounts are kept for branch '
        'stock, debtors, expenses, adjustment (for loading on goods sent at '
        'invoice price) and branch profit and loss. It gives better control '
        'over stock and debtors and suits larger branches.\n'
        '• Final accounts system: a branch Trading and Profit & Loss Account '
        'is prepared at the head office to show the branch\'s gross and net '
        'profit.\n'
        'When goods are sent at invoice price, the loading is removed so '
        'that branch profit is based on cost.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_fa',
    chapter: 'Insurance Claims',
    text:
        'What is the average clause in a fire insurance policy? Stock '
        'worth ₹1,00,000 on the date of a fire was insured for ₹60,000, and '
        'the loss was ₹40,000. Calculate the claim if the policy has an '
        'average clause.',
    marks: 5,
    answer:
        'The average clause discourages under-insurance. If the sum '
        'insured is less than the value of the stock on the date of the '
        'fire, the insured is treated as their own insurer for the uninsured '
        'part, and the claim is reduced in proportion.\n'
        'Claim = Loss × Sum insured ÷ Value of stock on the date of fire\n'
        '= 40,000 × 60,000 ÷ 1,00,000 = ₹24,000\n'
        'Without the average clause, the full loss of ₹40,000 would be '
        'payable, since it is less than the sum insured. The remaining '
        '₹16,000 is borne by the business.',
    problem: true,
  ),
  DescriptiveQuestion(
    subjectId: 'i_fa',
    chapter: 'Royalty & Joint Venture',
    text:
        'Explain minimum rent, short workings and recoupment of short '
        'workings in royalty accounts.',
    marks: 5,
    answer:
        '• Minimum rent (dead rent): the lowest amount the lessee must '
        'pay the lessor each period, whatever the actual royalty. It protects '
        'the lessor if output is low.\n'
        '• Short workings: when the actual royalty based on output is less '
        'than the minimum rent, the shortfall is called short workings. The '
        'lessee pays the minimum rent.\n'
        '• Recoupment: if the agreement allows, short workings can be '
        'recovered in later years when actual royalty is more than the '
        'minimum rent. The lessee then pays only the excess after deducting '
        'the short workings carried forward.\n'
        'Recoupment is allowed only within the period stated in the '
        'agreement. Short workings that can no longer be recouped are '
        'written off to the Profit & Loss Account.\n'
        'Example: minimum rent ₹50,000, royalty ₹30,000 in year 1 (short '
        'workings ₹20,000), royalty ₹65,000 in year 2. Only the excess over '
        'minimum rent, ₹15,000, can be recouped, so the lessee pays ₹50,000 '
        'in year 2 and carries ₹5,000 of short workings forward if allowed.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_fa',
    chapter: 'Investment Accounts',
    text:
        'Explain cum-interest and ex-interest purchases of fixed-income '
        'securities. ₹1,00,000 of 12% debentures, with interest payable on '
        '30 June and 31 December, are bought on 31 July at ₹98 cum-interest. '
        'Show the split between capital and income.',
    marks: 5,
    answer:
        '• Cum-interest: the price includes interest accrued since the '
        'last interest date. The buyer will receive the full next interest, '
        'so the accrued part is treated as income paid, not cost of the '
        'investment.\n'
        '• Ex-interest: the price excludes accrued interest. The buyer pays '
        'the accrued interest to the seller separately.\n'
        'Calculation:\n'
        '• Price paid = 1,00,000 × 98% = ₹98,000\n'
        '• Accrued interest from 1 July to 31 July = 1,00,000 × 12% × 1/12 '
        '= ₹1,000\n'
        '• Cost of investment (capital) = 98,000 − 1,000 = ₹97,000\n'
        '• Income column debit = ₹1,000\n'
        'On 31 December the buyer receives ₹6,000 interest, of which ₹5,000 '
        'is income earned for August to December.',
    problem: true,
  ),
  DescriptiveQuestion(
    subjectId: 'i_fa',
    chapter: 'Not-for-Profit Organisations',
    text:
        'How are legacies, entrance fees, life membership fees and '
        'specific donations treated in the accounts of a not-for-profit '
        'organisation?',
    marks: 5,
    answer:
        '• Legacies: amounts received under a will are usually treated as '
        'capital receipts and added to the capital fund.\n'
        '• Entrance (admission) fees: treated as revenue income unless the '
        'rules require them to be capitalised. Where they are large and not '
        'recurring, they may be capitalised.\n'
        '• Life membership fees: capital receipts, since members pay once '
        'and are not charged again. They are shown in the balance sheet, '
        'and a portion may be transferred to income over the expected life '
        'of membership.\n'
        '• Specific donations: donations for a particular purpose, such as a '
        'building fund, are credited to that fund and shown as a liability. '
        'Expenses for the purpose are charged to the fund, not to the Income '
        'and Expenditure Account.\n'
        '• General donations are revenue income unless they are large, in '
        'which case they may be capitalised.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_fa',
    chapter: 'Self-Balancing Ledgers',
    text: 'What is the self-balancing ledger system? State its advantages.',
    marks: 5,
    answer:
        'Under the self-balancing system, the ledger is divided into the '
        'general ledger, the debtors (sales) ledger and the creditors '
        '(bought) ledger. Each subsidiary ledger has an adjustment account '
        'that records, in total, the entries made in the individual accounts. '
        'A matching adjustment account is kept in the general ledger. So '
        'each ledger can produce its own trial balance.\n'
        '• The debtors ledger has a General Ledger Adjustment Account, and '
        'the general ledger has a Debtors Ledger Adjustment Account.\n'
        '• The creditors ledger and general ledger have corresponding '
        'adjustment accounts.\n'
        'Advantages:\n'
        '• Errors can be traced to a particular ledger, so they are found '
        'faster.\n'
        '• Work can be divided among staff, and each person is responsible '
        'for their ledger.\n'
        '• Interim accounts can be prepared quickly from the totals.\n'
        '• It acts as an internal check, reducing the chance of fraud.',
  ),
];
