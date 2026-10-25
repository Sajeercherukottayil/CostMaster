import '../../../models/question.dart';

// Income-tax Act, 1961 as amended by the Finance Act, 2025 (AY 2026-27),
// CGST/IGST Acts and the Customs Act, 1962, for the December 2026 term.
// Review every term.
const interTaxDescriptive = [
  DescriptiveQuestion(
    subjectId: 'i_tax',
    chapter: 'Basics & Residential Status',
    text:
        'Explain the basic conditions for deciding whether an individual is '
        'resident in India for Assessment Year 2026-27. When is a resident '
        'treated as "not ordinarily resident"?',
    marks: 6,
    answer:
        'Under section 6(1), an individual is resident in India for the '
        'previous year 2025-26 if they meet either basic condition:\n'
        '• They are in India for 182 days or more in the previous year; or\n'
        '• They are in India for 60 days or more in the previous year and '
        '365 days or more in the 4 years before it.\n'
        'For an Indian citizen leaving India for employment or as a ship\'s '
        'crew member, and for an Indian citizen or person of Indian origin '
        'visiting India, the 60 days in the second condition becomes 182 '
        'days (120 days for a visitor whose Indian income exceeds ₹15 lakh).\n'
        'A person who meets neither condition is a non-resident.\n'
        'A resident is "not ordinarily resident" (RNOR) if they were '
        'non-resident in 9 out of the 10 preceding years, or were in India '
        'for 729 days or less in the 7 preceding years. Otherwise they are '
        'resident and ordinarily resident (ROR). Some individuals with high '
        'Indian income who are visitors or deemed residents are also '
        'treated as RNOR.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_tax',
    chapter: 'Income from Salaries',
    text:
        'Explain the deductions allowed under section 16 from income '
        'chargeable under the head "Salaries" for Assessment Year 2026-27.',
    marks: 5,
    answer:
        '• Standard deduction, section 16(ia): ₹75,000 or the amount of '
        'salary, whichever is less, under the new tax regime (section '
        '115BAC). Under the old regime it is ₹50,000 or salary, whichever is '
        'less.\n'
        '• Entertainment allowance, section 16(ii): only for government '
        'employees, and only under the old regime. The deduction is the '
        'least of ₹5,000, one-fifth of basic salary, and the actual '
        'allowance received.\n'
        '• Professional tax, section 16(iii): tax on employment actually paid '
        'during the year, allowed only under the old regime. If the employer '
        'pays it, it is first added to salary as a perquisite and then '
        'deducted.\n'
        'Under the new regime, only the standard deduction is available.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_tax',
    chapter: 'Income from House Property',
    text:
        'How is the income from a let-out house property computed for '
        'Assessment Year 2026-27?',
    marks: 6,
    answer:
        '1. Gross Annual Value (GAV) is the higher of:\n'
        '• Expected rent: the higher of municipal value and fair rent, but '
        'not more than the standard rent under the Rent Control Act; and\n'
        '• Actual rent received or receivable, after excluding rent for '
        'vacant periods and unrealised rent where the conditions are met.\n'
        '2. Less: municipal taxes paid by the owner during the year.\n'
        '3. The result is the Net Annual Value (NAV).\n'
        '4. Less deductions under section 24:\n'
        '• Standard deduction of 30% of NAV, whatever the actual expenses.\n'
        '• Interest on money borrowed for buying, building, repairing or '
        'renewing the property. Pre-construction interest is allowed in five '
        'equal instalments from the year construction is completed.\n'
        '5. The balance is income from house property.\n'
        'For a let-out property, interest is allowed without limit under '
        'both regimes. But under the new regime, a loss under this head '
        'cannot be set off against other heads.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_tax',
    chapter: 'Profits & Gains of Business or Profession',
    text:
        'Which expenses are allowed only on actual payment under section '
        '43B? What is the time limit for payment?',
    marks: 5,
    answer:
        'Section 43B allows certain expenses only in the year they are '
        'actually paid, even if the business follows the mercantile system:\n'
        '• Taxes, duties, cess or fees under any law.\n'
        '• Employer\'s contribution to provident fund, superannuation fund, '
        'gratuity fund or other employee welfare funds.\n'
        '• Bonus or commission to employees.\n'
        '• Interest on loans from public financial institutions, state '
        'financial corporations, scheduled banks, co-operative banks and '
        'certain NBFCs.\n'
        '• Leave encashment paid to employees.\n'
        '• Payments to Indian Railways for use of railway assets.\n'
        '• Amounts payable to micro or small enterprises beyond the time '
        'limit in section 15 of the MSMED Act, 2006.\n'
        'Time limit: except for payments to micro and small enterprises, the '
        'expense is allowed in the year it was incurred if it is paid on or '
        'before the due date for filing the return under section 139(1). '
        'Otherwise it is allowed in the year of payment. Payments to micro '
        'and small enterprises are allowed only in the year of actual '
        'payment, unless paid within the MSMED Act time limit.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_tax',
    chapter: 'Capital Gains & Other Sources',
    text:
        'How are capital assets classified as short-term or long-term for '
        'transfers made in the previous year 2025-26? State the tax rates on '
        'listed equity shares.',
    marks: 5,
    answer:
        'For transfers on or after 23 July 2024:\n'
        '• Listed securities (such as shares listed on a recognised stock '
        'exchange) and units of equity-oriented funds are long-term if held '
        'for more than 12 months.\n'
        '• All other capital assets, including land, buildings and unlisted '
        'shares, are long-term if held for more than 24 months.\n'
        '• Otherwise, the asset is short-term.\n'
        '• Specified mutual funds and market-linked debentures are always '
        'treated as short-term (section 50AA).\n'
        'Tax on listed equity shares where STT is paid:\n'
        '• Short-term capital gains under section 111A: 20%.\n'
        '• Long-term capital gains under section 112A: 12.5% on gains above '
        '₹1,25,000 in a year, without indexation.\n'
        'Other long-term capital gains are taxed at 12.5% without indexation '
        'under section 112.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_tax',
    chapter: 'Deductions & Tax Liability',
    text:
        'Explain the main features of the new tax regime under section '
        '115BAC for individuals for Assessment Year 2026-27.',
    marks: 6,
    answer:
        '• Default: the new regime applies unless the individual opts out '
        'for the old regime.\n'
        '• Slab rates: income up to ₹4,00,000 is nil; ₹4–8 lakh at 5%; '
        '₹8–12 lakh at 10%; ₹12–16 lakh at 15%; ₹16–20 lakh at 20%; '
        '₹20–24 lakh at 25%; above ₹24 lakh at 30%.\n'
        '• Rebate under section 87A: a resident individual with total income '
        'up to ₹12,00,000 gets a rebate of up to ₹60,000, so no tax is '
        'payable. Marginal relief applies just above ₹12 lakh. The rebate is '
        'not available on tax on special-rate income such as capital gains '
        'under sections 111A and 112A.\n'
        '• Deductions not allowed: most Chapter VI-A deductions, such as '
        '80C and 80D, and exemptions such as HRA and LTA. Allowed: standard '
        'deduction of ₹75,000, employer\'s NPS contribution under 80CCD(2), '
        '80CCH and 80JJAA.\n'
        '• Opting out: an individual without business income can choose the '
        'old regime each year in a return filed by the due date. With '
        'business income, the option is exercised in Form 10-IEA and can be '
        'withdrawn only once.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_tax',
    chapter: 'GST: Concepts, Levy & Supply',
    text:
        'Distinguish between a composite supply and a mixed supply under '
        'the CGST Act, 2017, with examples.',
    marks: 5,
    answer:
        '• Meaning: a composite supply consists of two or more supplies '
        'that are naturally bundled and supplied together in the ordinary '
        'course of business, one of which is the principal supply (section '
        '2(30)). A mixed supply consists of two or more individual supplies '
        'made together for a single price, which are not naturally bundled '
        'and can be supplied separately (section 2(74)).\n'
        '• Tax treatment (section 8): a composite supply is taxed at the '
        'rate of the principal supply; a mixed supply is taxed at the rate '
        'of the item with the highest rate.\n'
        '• Example of composite supply: goods sold with packing, transport '
        'and insurance; the goods are the principal supply.\n'
        '• Example of mixed supply: a gift pack of sweets, chocolates, dry '
        'fruits and a cold drink sold for one price.\n'
        'The test is whether the items would normally be supplied together. '
        'If they are only grouped for convenience, the supply is mixed.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_tax',
    chapter: 'GST: Registration, Time & Place of Supply',
    text:
        'Who must register under GST compulsorily, whatever their '
        'turnover, under section 24 of the CGST Act, 2017?',
    marks: 5,
    answer:
        'Normally, registration is required when aggregate turnover '
        'exceeds the threshold (₹20 lakh, or ₹40 lakh for suppliers of only '
        'goods in most States; lower limits apply in some special category '
        'States). Section 24 lists persons who must register even below the '
        'threshold, including:\n'
        '• Persons making inter-State taxable supplies (with exceptions, '
        'such as service providers below the threshold).\n'
        '• Casual taxable persons and non-resident taxable persons.\n'
        '• Persons liable to pay tax under reverse charge.\n'
        '• Persons required to deduct tax at source (TDS) or collect tax at '
        'source (TCS), including e-commerce operators who must collect TCS.\n'
        '• Input Service Distributors.\n'
        '• Persons supplying on behalf of other taxable persons, as agents.\n'
        '• Persons supplying goods or services through an e-commerce '
        'operator who must collect TCS (with certain exceptions).\n'
        '• Persons supplying online information and database access or '
        'retrieval services from outside India to unregistered persons in '
        'India.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_tax',
    chapter: 'GST: Input Tax Credit, Returns & Payment',
    text:
        'State the conditions for claiming input tax credit under section '
        '16 of the CGST Act, 2017.',
    marks: 6,
    answer:
        'A registered person can claim ITC on goods or services used, or '
        'meant to be used, in the course of business, if all these '
        'conditions are met:\n'
        '• They hold a tax invoice, debit note or other prescribed document.\n'
        '• The supplier has furnished the details of the invoice in their '
        'outward supply statement (GSTR-1), and the details appear in the '
        'recipient\'s auto-generated statement (GSTR-2B).\n'
        '• They have received the goods or services. Goods delivered to '
        'another person on their direction count as received.\n'
        '• The tax charged has actually been paid to the government by the '
        'supplier.\n'
        '• They have filed their return (GSTR-3B).\n'
        'Other rules:\n'
        '• If goods come in lots, ITC is taken on receipt of the last lot.\n'
        '• If the supplier is not paid within 180 days of the invoice date, '
        'the ITC must be reversed with interest; it can be re-claimed on '
        'payment.\n'
        '• Time limit (section 16(4)): ITC for a year must be claimed by 30 '
        'November of the next year or the date of filing the annual return, '
        'whichever is earlier.\n'
        '• No ITC is allowed on depreciation claimed on the tax component.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_tax',
    chapter: 'Customs Law',
    text:
        'Explain the types of customs duties levied on goods imported '
        'into India.',
    marks: 5,
    answer:
        '• Basic Customs Duty (BCD): levied under section 12 of the '
        'Customs Act, 1962 at rates in the First Schedule to the Customs '
        'Tariff Act, 1975.\n'
        '• Integrated tax (IGST): levied on imports under section 3(7) of the '
        'Customs Tariff Act, on the assessable value plus BCD and other '
        'duties. GST compensation cess applies to certain goods.\n'
        '• Social Welfare Surcharge: levied as a percentage of the customs '
        'duties.\n'
        '• Agriculture Infrastructure and Development Cess: on specified '
        'goods.\n'
        '• Trade remedy duties under the Customs Tariff Act:\n'
        '  – Countervailing duty on subsidised articles (section 9).\n'
        '  – Anti-dumping duty on goods sold below their normal value '
        '(section 9A).\n'
        '  – Safeguard duty when a surge in imports causes serious injury to '
        'domestic industry (section 8B).\n'
        '• Protective duty, to protect domestic industry on the '
        'recommendation of the Tariff Commission (section 6).\n'
        'Export duty is also levied on certain goods exported from India.',
  ),
];
