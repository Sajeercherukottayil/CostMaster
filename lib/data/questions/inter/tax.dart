import '../../../models/question.dart';

// Income-tax Act, 1961 as amended by the Finance Act, 2025 (AY 2026-27),
// CGST/IGST Acts and the Customs Act, 1962, for the December 2026 term.
const interTaxQuestions = [
  // Basics & Residential Status
  Question(
    subjectId: 'i_tax',
    chapter: 'Basics & Residential Status',
    text: 'For Assessment Year 2026-27, the previous year is:',
    options: ['2026-27', '2024-25', '2025-26', '2027-28'],
    answerIndex: 2,
    explanation: 'Income earned in the previous year (1 April 2025 to 31 March 2026) '
        'is assessed in the following assessment year, 2026-27.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'Basics & Residential Status',
    text: 'An individual stayed in India for 190 days during the previous '
        'year 2025-26. His residential status is:',
    options: [
      'Cannot be determined',
      'Non-resident',
      'Deemed resident only',
      'Resident',
    ],
    answerIndex: 3,
    explanation: 'Under section 6(1)(a), an individual staying in India for 182 days '
        'or more in the previous year is a resident.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'Basics & Residential Status',
    text: 'A foreign national stayed in India for 70 days in the previous '
        'year and for 400 days in the four preceding years. For the '
        'previous year, he is:',
    options: [
      'A deemed resident under section 6(1A)',
      'Resident in India',
      'Not taxable in India at all',
      'Non-resident',
    ],
    answerIndex: 1,
    explanation: 'He satisfies section 6(1)(c): 60 days or more in the previous year '
        'and 365 days or more in the four preceding years.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'Basics & Residential Status',
    text: 'Agricultural income from land situated in India is exempt under:',
    options: ['Section 10(1)', 'Section 10(10)', 'Section 80C', 'Section 54'],
    answerIndex: 0,
    explanation: 'Section 10(1) exempts agricultural income, though it may be '
        'included for rate purposes under the old regime (partial '
        'integration).',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'Basics & Residential Status',
    text: 'Income accruing outside India from a business controlled from '
        'outside India is taxable in India in the hands of:',
    options: [
      'A non-resident only',
      'A resident and ordinarily resident only',
      'Every assessee',
      'A resident but not ordinarily resident only',
    ],
    answerIndex: 1,
    explanation: 'Under section 5, an ROR is taxed on global income; an RNOR is '
        'taxed on such foreign income only if the business is controlled or '
        'set up in India.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'Basics & Residential Status',
    text: 'Health and Education Cess is levied at:',
    options: [
      '2% of income-tax',
      '1% of income-tax plus surcharge',
      '3% of total income',
      '4% of income-tax plus surcharge',
    ],
    answerIndex: 3,
    explanation: 'Cess at 4% is charged on the amount of income-tax including '
        'surcharge, if any.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'Basics & Residential Status',
    text: 'Under section 6(1A), an Indian citizen who is not liable to tax in '
        'any other country is deemed resident in India if his total income, '
        'other than income from foreign sources, exceeds:',
    options: ['₹50 lakh', '₹15 lakh', '₹10 lakh', '₹5 lakh'],
    answerIndex: 1,
    explanation: 'Such a deemed resident is treated as resident but not ordinarily '
        'resident.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'Basics & Residential Status',
    text: 'A Hindu Undivided Family is assessed under the Income-tax Act as:',
    options: [
      'Part of the karta\'s income',
      'A firm',
      'A company',
      'A separate person',
    ],
    answerIndex: 3,
    explanation: 'Section 2(31) includes a HUF in the definition of person.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'Basics & Residential Status',
    text: 'A company other than an Indian company is resident in India if:',
    options: [
      'Its place of effective management is in India in that year',
      'It has an Indian director',
      'It has any customer in India',
      'It sells goods to India',
    ],
    answerIndex: 0,
    explanation: 'Section 6(3): an Indian company is always resident.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'Basics & Residential Status',
    text: 'Income received in India is taxable:',
    options: [
      'Only for companies',
      'Only for non-residents',
      'For every assessee, whatever the residential status',
      'Only for residents',
    ],
    answerIndex: 2,
    explanation: 'Section 5 includes income received or deemed received in India in '
        'the total income of all assessees.',
  ),

  // Income from Salaries
  Question(
    subjectId: 'i_tax',
    chapter: 'Income from Salaries',
    text: 'For AY 2026-27, the standard deduction from salary under the new '
        'tax regime (section 115BAC) is:',
    options: ['₹1,00,000', '₹75,000', '₹50,000', '₹40,000'],
    answerIndex: 1,
    explanation: 'The Finance (No. 2) Act, 2024 raised the standard deduction under '
        'the default new regime to ₹75,000.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'Income from Salaries',
    text: 'Under the old tax regime, the standard deduction from salary under '
        'section 16(ia) is:',
    options: ['₹50,000', '₹40,000', '₹25,000', '₹75,000'],
    answerIndex: 0,
    explanation: 'The old regime continues with a standard deduction of ₹50,000 or '
        'the salary, whichever is less.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'Income from Salaries',
    text: 'The maximum exemption for gratuity received by a non-government '
        'employee covered by the Payment of Gratuity Act is:',
    options: ['₹3 lakh', '₹10 lakh', '₹25 lakh', '₹20 lakh'],
    answerIndex: 3,
    explanation: 'Section 10(10)(ii) exempts the least of the computed amount, '
        'actual gratuity and ₹20 lakh.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'Income from Salaries',
    text: 'The maximum exemption under section 10(10AA) for leave encashment '
        'at retirement by a non-government employee is:',
    options: ['₹20 lakh', '₹25 lakh', '₹3 lakh', '₹10 lakh'],
    answerIndex: 1,
    explanation: 'The limit was raised from ₹3 lakh to ₹25 lakh with effect from 1 '
        'April 2023.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'Income from Salaries',
    text: 'Under the new tax regime, the deduction under section 80CCD(2) for '
        'a non-government employer\'s contribution to NPS is limited to:',
    options: ['14% of salary', '12% of salary', '₹50,000', '10% of salary'],
    answerIndex: 0,
    explanation: 'From AY 2025-26, the limit under the new regime is 14% of salary '
        'for all employers; under the old regime it remains 10% for '
        'non-government employers.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'Income from Salaries',
    text: 'Under the old regime, tax on employment (professional tax) paid by '
        'an employee is deductible under:',
    options: [
      'Section 80C',
      'Section 24(b)',
      'Section 16(iii)',
      'Section 10(14)',
    ],
    answerIndex: 2,
    explanation: 'Section 16(iii) allows a deduction for professional tax actually '
        'paid; it is not allowed under the new regime.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'Income from Salaries',
    text: 'The deduction for entertainment allowance under section 16(ii) is '
        'available only to:',
    options: [
      'Employees of private companies',
      'Pensioners',
      'Government employees',
      'All employees',
    ],
    answerIndex: 2,
    explanation: 'Under the old regime, it is limited to the least of ₹5,000, 20% of '
        'basic salary and the actual allowance received.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'Income from Salaries',
    text: 'Under section 17(1), "salary" includes:',
    options: [
      'Only perquisites',
      'Only basic pay',
      'Only allowances',
      'Wages, pension, fees, commission, advance salary and leave encashment',
    ],
    answerIndex: 3,
    explanation: 'The definition is inclusive and broad.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'Income from Salaries',
    text: 'The exemption for house rent allowance under section 10(13A) is '
        'available:',
    options: [
      'Only under the new tax regime',
      'Under both regimes',
      'Only to government employees',
      'Only under the old tax regime',
    ],
    answerIndex: 3,
    explanation: 'Section 115BAC does not allow the HRA exemption.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'Income from Salaries',
    text: 'Family pension received by a legal heir of a deceased employee is '
        'taxable under the head:',
    options: [
      'Salaries',
      'Business income',
      'Capital gains',
      'Income from other sources',
    ],
    answerIndex: 3,
    explanation: 'There is no employer-employee relationship; section 57(iia) allows '
        'a deduction.',
  ),

  // Income from House Property
  Question(
    subjectId: 'i_tax',
    chapter: 'Income from House Property',
    text: 'The standard deduction under section 24(a) from the net annual '
        'value of a house property is:',
    options: [
      '30% of the gross annual value',
      '50% of the net annual value',
      'Actual repairs',
      '30% of the net annual value',
    ],
    answerIndex: 3,
    explanation: 'A flat 30% of NAV is allowed, irrespective of actual expenditure '
        'on repairs.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'Income from House Property',
    text: 'Under the old regime, interest on borrowed capital for acquiring '
        'or constructing a self-occupied house (loan taken after 1 April '
        '1999, construction completed within 5 years) is deductible up to:',
    options: ['₹1,50,000', 'No limit', '₹2,00,000', '₹30,000'],
    answerIndex: 2,
    explanation: 'Section 24(b) caps the deduction at ₹2,00,000 per year for '
        'self-occupied properties in these cases.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'Income from House Property',
    text: 'Under the new tax regime, interest on a loan for a self-occupied '
        'house property is:',
    options: [
      'Deductible up to ₹30,000',
      'Deductible up to ₹2,00,000',
      'Not deductible',
      'Deductible without limit',
    ],
    answerIndex: 2,
    explanation: 'Section 115BAC does not allow the section 24(b) deduction for '
        'self-occupied property; it is allowed for let-out property.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'Income from House Property',
    text: 'Gross annual value of a let-out house is ₹3,00,000. The owner paid '
        'municipal taxes of ₹20,000 and interest on a housing loan of '
        '₹50,000. Income from house property is:',
    options: ['₹1,46,000', '₹1,60,000', '₹1,96,000', '₹2,30,000'],
    answerIndex: 0,
    explanation: 'NAV = 3,00,000 − 20,000 = 2,80,000. Less 30% (84,000) and interest '
        '(50,000) = ₹1,46,000.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'Income from House Property',
    text: 'Municipal taxes are deductible from the gross annual value only '
        'when they are:',
    options: [
      'Actually paid by the owner during the previous year',
      'Paid by the tenant',
      'Levied by the State Government',
      'Due, even if unpaid',
    ],
    answerIndex: 0,
    explanation: 'Municipal taxes are allowed on a payment basis, and only if borne '
        'by the owner.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'Income from House Property',
    text: 'Under the old regime, a loss under the head "Income from house '
        'property" can be set off against other heads in the same year up '
        'to:',
    options: ['₹2,00,000', 'Without any limit', '₹50,000', '₹1,50,000'],
    answerIndex: 0,
    explanation: 'Section 71(3A) limits the set-off to ₹2 lakh; the balance is '
        'carried forward for 8 years against house property income.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'Income from House Property',
    text: 'The maximum number of self-occupied house properties whose annual '
        'value can be taken as nil is:',
    options: ['One', 'Two', 'No limit', 'Three'],
    answerIndex: 1,
    explanation: 'Section 23(2) allows the owner to treat up to two houses as '
        'self-occupied with nil annual value.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'Income from House Property',
    text: 'Municipal value is ₹1,20,000, fair rent ₹1,50,000, standard rent '
        '₹1,40,000 and actual rent ₹1,30,000. The gross annual value is:',
    options: ['₹1,30,000', '₹1,20,000', '₹1,40,000', '₹1,50,000'],
    answerIndex: 2,
    explanation: 'Expected rent = higher of MV and FR (1,50,000), capped at SR '
        '(1,40,000). GAV = higher of expected rent and actual rent = '
        '₹1,40,000.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'Income from House Property',
    text: 'Interest on a housing loan for the period before construction is '
        'completed is deductible:',
    options: [
      'Fully in the year it is paid',
      'In five equal instalments starting from the year of completion',
      'Only in the year of sale',
      'Never',
    ],
    answerIndex: 1,
    explanation: 'This is the second proviso to section 24(b).',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'Income from House Property',
    text: 'Unrealised rent recovered later is taxable under section 25A in '
        'the year of receipt, after a deduction of:',
    options: ['Nil', '30%', '50%', '100%'],
    answerIndex: 1,
    explanation: 'It is taxable even if the assessee no longer owns the property.',
  ),

  // Profits & Gains of Business or Profession
  Question(
    subjectId: 'i_tax',
    chapter: 'Profits & Gains of Business or Profession',
    text: 'Under section 44AD, the presumptive income on turnover received '
        'through account payee cheque, bank draft or electronic modes is:',
    options: [
      '10% of such turnover',
      '50% of such turnover',
      '6% of such turnover',
      '8% of such turnover',
    ],
    answerIndex: 2,
    explanation: 'For receipts in cash or other modes, the rate is 8%.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'Profits & Gains of Business or Profession',
    text: 'The turnover limit under section 44AD is ₹3 crore where cash '
        'receipts do not exceed:',
    options: [
      '5% of total turnover',
      '1% of total turnover',
      '10% of total turnover',
      '20% of total turnover',
    ],
    answerIndex: 0,
    explanation: 'Otherwise, the limit is ₹2 crore.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'Profits & Gains of Business or Profession',
    text: 'Under section 44ADA, presumptive income of a specified '
        'professional is taken as:',
    options: [
      '6% of gross receipts',
      '50% of gross receipts',
      '30% of gross receipts',
      '8% of gross receipts',
    ],
    answerIndex: 1,
    explanation: 'Section 44ADA applies to resident professionals with gross '
        'receipts up to ₹50 lakh (₹75 lakh if cash receipts are not more '
        'than 5%).',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'Profits & Gains of Business or Profession',
    text: 'Under section 40A(3), a payment for expenditure otherwise than by '
        'account payee cheque, draft or electronic mode, exceeding ₹10,000 '
        'to a person in a day (other than for transporters), is:',
    options: [
      'Disallowed at 30%',
      'Fully disallowed',
      'Allowed in full',
      'Disallowed at 20%',
    ],
    answerIndex: 1,
    explanation: 'The limit is ₹35,000 for payments to transporters for plying, '
        'hiring or leasing goods carriages.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'Profits & Gains of Business or Profession',
    text: 'An asset acquired and put to use for less than 180 days in the '
        'previous year is eligible for depreciation at:',
    options: [
      '50% of the normal rate',
      'The full normal rate',
      '25% of the normal rate',
      'Nil',
    ],
    answerIndex: 0,
    explanation: 'The second proviso to section 32(1) restricts depreciation to half '
        'in such cases; the balance is allowed in the next year.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'Profits & Gains of Business or Profession',
    text: 'Under section 43B, bonus payable to employees is allowed as a '
        'deduction:',
    options: [
      'Never',
      'If actually paid on or before the due date of filing the return',
      'Only in the year it is declared',
      'Only if paid within the previous year',
    ],
    answerIndex: 1,
    explanation: 'Section 43B allows specified expenses on payment basis, with a '
        'relaxation up to the due date of filing the return.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'Profits & Gains of Business or Profession',
    text: 'Business loss (other than speculation loss) can be carried forward '
        'for a maximum of:',
    options: [
      '8 assessment years',
      '15 assessment years',
      '4 assessment years',
      'Indefinitely',
    ],
    answerIndex: 0,
    explanation: 'Section 72 allows 8 years; speculation losses are carried forward '
        'for 4 years and unabsorbed depreciation indefinitely.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'Profits & Gains of Business or Profession',
    text: 'Depreciation on goodwill of a business is:',
    options: [
      'Not allowed',
      'Allowed at 40%',
      'Allowed at 25%',
      'Allowed at 15%',
    ],
    answerIndex: 0,
    explanation: 'Goodwill has been excluded from depreciable intangible assets '
        'since AY 2021-22.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'Profits & Gains of Business or Profession',
    text: 'Additional depreciation under section 32(1)(iia) on new plant and '
        'machinery acquired by a manufacturing undertaking is generally:',
    options: [
      '10% of actual cost',
      '35% of actual cost',
      'Nil',
      '20% of actual cost',
    ],
    answerIndex: 3,
    explanation: 'It is not available to assessees opting for concessional regimes '
        'such as sections 115BAA or 115BAC.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'Profits & Gains of Business or Profession',
    text: 'Under section 44AE, presumptive income from a goods carriage other '
        'than a heavy goods vehicle is:',
    options: [
      '₹1,000 per month',
      '8% of gross receipts',
      '₹7,500 per month or part of a month',
      '₹5,000 per month',
    ],
    answerIndex: 2,
    explanation: 'For heavy goods vehicles it is ₹1,000 per tonne of gross vehicle '
        'weight per month.',
  ),

  // Capital Gains & Other Sources
  Question(
    subjectId: 'i_tax',
    chapter: 'Capital Gains & Other Sources',
    text: 'Listed equity shares are short-term capital assets if held for not '
        'more than:',
    options: ['36 months', '12 months', '6 months', '24 months'],
    answerIndex: 1,
    explanation: 'From 23 July 2024, listed securities have a 12-month holding '
        'period; most other assets have 24 months.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'Capital Gains & Other Sources',
    text: 'For transfers on or after 23 July 2024, long-term capital gains '
        'under section 112A are taxed at:',
    options: [
      '15% on the full gain',
      '10% on gains exceeding ₹1 lakh',
      '12.5% on gains exceeding ₹1.25 lakh',
      '20% with indexation',
    ],
    answerIndex: 2,
    explanation: 'The Finance (No. 2) Act, 2024 changed the rate to 12.5% and raised '
        'the exemption to ₹1.25 lakh.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'Capital Gains & Other Sources',
    text: 'For transfers on or after 23 July 2024, short-term capital gains '
        'under section 111A are taxed at:',
    options: ['30%', '20%', 'Normal slab rates', '15%'],
    answerIndex: 1,
    explanation: 'Section 111A applies to STT-paid equity shares and equity-oriented '
        'fund units.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'Capital Gains & Other Sources',
    text: 'Land or a building is a long-term capital asset if held for more '
        'than:',
    options: ['12 months', '24 months', '60 months', '36 months'],
    answerIndex: 1,
    explanation: 'Immovable property becomes long-term after 24 months.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'Capital Gains & Other Sources',
    text: 'A resident individual has long-term capital gains of ₹3,25,000 on '
        'STT-paid listed shares, all transferred after 23 July 2024. Tax '
        'under section 112A (before cess) is:',
    options: ['₹40,625', '₹20,000', '₹25,000', '₹32,500'],
    answerIndex: 2,
    explanation: '(3,25,000 − 1,25,000) × 12.5% = ₹25,000.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'Capital Gains & Other Sources',
    text: 'A sum of money received without consideration from a non-relative, '
        'exceeding ₹50,000 in aggregate during the year, is taxable as:',
    options: [
      'Exempt income',
      'Income from other sources on the whole amount',
      'Capital gains',
      'Income from other sources only above ₹50,000',
    ],
    answerIndex: 1,
    explanation: 'Under section 56(2)(x), once the aggregate exceeds ₹50,000, the '
        'entire amount is taxable.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'Capital Gains & Other Sources',
    text: 'Winnings from lotteries are taxed under section 115BB at:',
    options: ['10%', '20%', '30%', 'Normal slab rates'],
    answerIndex: 2,
    explanation: 'No deduction or basic exemption is allowed against such winnings.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'Capital Gains & Other Sources',
    text: 'For exemption under section 54, the cost of the new residential '
        'house taken into account is capped at:',
    options: ['₹10 crore', 'No limit', '₹2 crore', '₹5 crore'],
    answerIndex: 0,
    explanation: 'The cap was introduced from AY 2024-25.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'Capital Gains & Other Sources',
    text: 'Agricultural land in a specified rural area is:',
    options: [
      'Stock-in-trade',
      'A short-term capital asset',
      'Always a long-term capital asset',
      'Not a capital asset, so its sale is not taxed as capital gains',
    ],
    answerIndex: 3,
    explanation: 'Section 2(14) excludes rural agricultural land from capital '
        'assets.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'Capital Gains & Other Sources',
    text: 'Dividend from an Indian company is taxable in the hands of a '
        'resident shareholder under:',
    options: [
      'Capital gains',
      'Exempt income',
      'Income from other sources, at normal rates',
      'Salaries',
    ],
    answerIndex: 2,
    explanation: 'Since AY 2021-22, dividends are taxable in the hands of '
        'shareholders.',
  ),

  // Deductions & Tax Liability
  Question(
    subjectId: 'i_tax',
    chapter: 'Deductions & Tax Liability',
    text: 'Under the new tax regime for AY 2026-27, the income slab taxed at '
        'nil rate is up to:',
    options: ['₹4,00,000', '₹7,00,000', '₹3,00,000', '₹2,50,000'],
    answerIndex: 0,
    explanation: 'The Finance Act, 2025 slabs: up to ₹4 lakh nil, then 5%, 10%, 15%, '
        '20% and 25% for each ₹4 lakh, and 30% above ₹24 lakh.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'Deductions & Tax Liability',
    text: 'Under the new tax regime for AY 2026-27, rebate under section 87A '
        'is available to a resident individual whose total income does not '
        'exceed:',
    options: ['₹5,00,000', '₹15,00,000', '₹7,00,000', '₹12,00,000'],
    answerIndex: 3,
    explanation: 'The rebate is up to ₹60,000; it does not cover tax on special-rate '
        'incomes such as capital gains under sections 111A and 112A.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'Deductions & Tax Liability',
    text: 'A resident individual opts for the new regime and has a total '
        'income of ₹10,00,000 for AY 2026-27 (no special-rate income). Tax '
        'before rebate and cess is:',
    options: ['₹50,000', '₹40,000', '₹60,000', '₹20,000'],
    answerIndex: 1,
    explanation: '₹4–8 lakh at 5% = ₹20,000; ₹8–10 lakh at 10% = ₹20,000; total '
        '₹40,000. Rebate under 87A then makes the tax nil.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'Deductions & Tax Liability',
    text: 'Under the old regime, the maximum deduction under section 80C is:',
    options: ['₹2,50,000', '₹2,00,000', '₹1,50,000', '₹1,00,000'],
    answerIndex: 2,
    explanation: 'The aggregate limit of sections 80C, 80CCC and 80CCD(1) is '
        '₹1,50,000.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'Deductions & Tax Liability',
    text: 'Under the old regime, the deduction under section 80D for health '
        'insurance premium for self, spouse and children (all below 60) is '
        'up to:',
    options: ['₹1,00,000', '₹50,000', '₹15,000', '₹25,000'],
    answerIndex: 3,
    explanation: 'The limit is ₹50,000 if the insured person is a senior citizen.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'Deductions & Tax Liability',
    text: 'Which deduction is available under the new tax regime (section '
        '115BAC)?',
    options: [
      'Section 80G',
      'Section 80D',
      'Section 80CCD(2) – employer\'s contribution to NPS',
      'Section 80C',
    ],
    answerIndex: 2,
    explanation: 'Most Chapter VI-A deductions are not allowed under the new regime; '
        '80CCD(2), 80CCH and 80JJAA are exceptions.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'Deductions & Tax Liability',
    text: 'Under the old regime, the basic exemption limit for a resident '
        'individual aged 60 years or more but less than 80 years is:',
    options: ['₹4,00,000', '₹5,00,000', '₹3,00,000', '₹2,50,000'],
    answerIndex: 2,
    explanation: 'It is ₹2,50,000 below 60 years and ₹5,00,000 for very senior '
        'citizens (80 years or more).',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'Deductions & Tax Liability',
    text: 'Under the old regime, the deduction under section 80TTA for '
        'interest on savings bank accounts (for a non-senior individual) is '
        'up to:',
    options: ['₹50,000', '₹25,000', '₹10,000', '₹5,000'],
    answerIndex: 2,
    explanation: 'Senior citizens claim section 80TTB instead.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'Deductions & Tax Liability',
    text: 'Under section 80TTB, a resident senior citizen can claim a '
        'deduction for interest on deposits of up to:',
    options: ['₹10,000', '₹50,000', '₹1,00,000', '₹25,000'],
    answerIndex: 1,
    explanation: 'It covers interest on savings and fixed deposits with banks, '
        'co-operative banks and post offices.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'Deductions & Tax Liability',
    text: 'Under the new regime for AY 2026-27, the maximum rebate under '
        'section 87A is:',
    options: ['₹60,000', '₹12,500', '₹75,000', '₹25,000'],
    answerIndex: 0,
    explanation: 'It is available where total income does not exceed ₹12 lakh, with '
        'marginal relief just above the limit.',
  ),

  // GST: Concepts, Levy & Supply
  Question(
    subjectId: 'i_tax',
    chapter: 'GST: Concepts, Levy & Supply',
    text: 'GST was implemented in India from:',
    options: [
      '8 September 2016',
      '1 April 2016',
      '1 April 2017',
      '1 July 2017',
    ],
    answerIndex: 3,
    explanation: 'GST was introduced by the Constitution (101st Amendment) Act, 2016 '
        'and rolled out on 1 July 2017.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'GST: Concepts, Levy & Supply',
    text: 'An inter-State supply of goods attracts:',
    options: ['Customs duty', 'CGST and SGST', 'IGST', 'SGST only'],
    answerIndex: 2,
    explanation: 'IGST is levied by the Centre on inter-State supplies and is '
        'apportioned between the Centre and the destination State.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'GST: Concepts, Levy & Supply',
    text: 'An intra-State supply of goods attracts:',
    options: [
      'CGST and SGST (or UTGST)',
      'CGST only',
      'IGST and SGST',
      'IGST only',
    ],
    answerIndex: 0,
    explanation: 'When the supplier and the place of supply are in the same State, '
        'both CGST and SGST are levied.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'GST: Concepts, Levy & Supply',
    text: 'A composite supply is taxed at the rate applicable to:',
    options: [
      'The average of all items',
      'The item with the highest rate',
      'The item with the lowest rate',
      'The principal supply',
    ],
    answerIndex: 3,
    explanation: 'Section 8(a) of the CGST Act; for example, goods sold with packing '
        'and insurance are taxed as the goods.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'GST: Concepts, Levy & Supply',
    text: 'A mixed supply is taxed at the rate applicable to:',
    options: [
      'The item with the lowest rate',
      'Each item separately',
      'The principal supply',
      'The item with the highest rate of tax',
    ],
    answerIndex: 3,
    explanation: 'Section 8(b): items not naturally bundled but sold for one price '
        'are taxed at the highest rate among them.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'GST: Concepts, Levy & Supply',
    text: 'Under Schedule III of the CGST Act, which of the following is '
        'treated as neither a supply of goods nor a supply of services?',
    options: [
      'Services by an employee to the employer in the course of employment',
      'Renting of a commercial building',
      'Sale of goods by a dealer',
      'Transport of goods by a GTA',
    ],
    answerIndex: 0,
    explanation: 'Schedule III also covers services by courts, sale of land and of '
        'completed buildings (subject to conditions), among others.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'GST: Concepts, Levy & Supply',
    text: 'Gifts by an employer to an employee not exceeding what value in a '
        'financial year are not treated as a supply?',
    options: ['₹50,000', '₹25,000', '₹10,000', '₹1,00,000'],
    answerIndex: 0,
    explanation: 'This follows the proviso to Schedule I, paragraph 2, which covers '
        'supplies between related persons.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'GST: Concepts, Levy & Supply',
    text: 'Alcoholic liquor for human consumption is:',
    options: [
      'Exempt from GST but within its levy',
      'Taxed only under IGST',
      'Taxed at the highest GST rate',
      'Outside the levy of GST',
    ],
    answerIndex: 3,
    explanation: 'Section 9(1) of the CGST Act excludes alcoholic liquor for human '
        'consumption; States continue to levy VAT and excise on it.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'GST: Concepts, Levy & Supply',
    text: 'GST is best described as a:',
    options: [
      'Origin-based production tax',
      'Tax on income',
      'Tax on wealth',
      'Destination-based consumption tax',
    ],
    answerIndex: 3,
    explanation: 'Tax revenue goes to the State where the goods or services are '
        'consumed.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'GST: Concepts, Levy & Supply',
    text: 'Import of services for consideration is treated as a supply:',
    options: [
      'Only if it is in the course of business',
      'Whether or not it is in the course or furtherance of business',
      'Only if the value exceeds ₹1 crore',
      'Never',
    ],
    answerIndex: 1,
    explanation: 'Section 7(1)(b) of the CGST Act.',
  ),

  // GST: Registration, Time & Place of Supply
  Question(
    subjectId: 'i_tax',
    chapter: 'GST: Registration, Time & Place of Supply',
    text: 'The registration threshold for a person exclusively supplying '
        'goods in a normal category State (that has adopted the higher '
        'limit) is aggregate turnover exceeding:',
    options: ['₹1.5 crore', '₹40 lakh', '₹10 lakh', '₹20 lakh'],
    answerIndex: 1,
    explanation: 'The threshold is ₹20 lakh for service providers in normal category '
        'States.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'GST: Registration, Time & Place of Supply',
    text: 'The registration threshold for a supplier of services in a normal '
        'category State is aggregate turnover exceeding:',
    options: ['₹20 lakh', '₹50 lakh', '₹10 lakh', '₹40 lakh'],
    answerIndex: 0,
    explanation: 'The threshold is ₹10 lakh in some special category States.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'GST: Registration, Time & Place of Supply',
    text: 'The turnover limit for the composition scheme under section 10(1) '
        'for suppliers of goods in normal category States is:',
    options: ['₹1.5 crore', '₹2 crore', '₹50 lakh', '₹75 lakh'],
    answerIndex: 0,
    explanation: 'The limit is ₹75 lakh in specified special category States.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'GST: Registration, Time & Place of Supply',
    text: 'A person registered under the composition scheme cannot:',
    options: [
      'Collect tax from recipients or claim input tax credit',
      'Supply goods within the State',
      'File returns',
      'Issue a bill of supply',
    ],
    answerIndex: 0,
    explanation: 'A composition taxpayer pays tax at a concessional rate, issues a '
        'bill of supply and cannot make inter-State outward supplies of '
        'goods.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'GST: Registration, Time & Place of Supply',
    text: 'Under section 12(2) of the CGST Act, the time of supply of goods '
        'under forward charge is the:',
    options: [
      'Date of issue of the invoice or the last date by which it should have been issued, whichever is earlier',
      'Date of receipt of payment',
      'End of the month',
      'Date of entry in the books',
    ],
    answerIndex: 0,
    explanation: 'Tax on advances for supply of goods is not payable by normal '
        'taxpayers under Notification 66/2017-CT.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'GST: Registration, Time & Place of Supply',
    text: 'Under the IGST Act, the place of supply of services directly '
        'relating to immovable property is the:',
    options: [
      'Place where payment is made',
      'Location of the supplier',
      'Location of the recipient',
      'Location of the immovable property',
    ],
    answerIndex: 3,
    explanation: 'Section 12(3) of the IGST Act covers services such as renting, '
        'construction and hotel accommodation.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'GST: Registration, Time & Place of Supply',
    text: 'Where a supply involves movement of goods, the place of supply is '
        'the:',
    options: [
      'Location of the supplier',
      'Place where the goods were made',
      'Place where the invoice is issued',
      'Location where the movement terminates for delivery to the recipient',
    ],
    answerIndex: 3,
    explanation: 'This rule is in section 10(1)(a) of the IGST Act.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'GST: Registration, Time & Place of Supply',
    text: 'A GST Identification Number (GSTIN) consists of:',
    options: [
      '16 characters',
      '10 characters',
      '12 characters',
      '15 characters',
    ],
    answerIndex: 3,
    explanation: 'It is made up of the State code (2), the PAN (10), the entity '
        'number (1), a default \'Z\' and a check digit.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'GST: Registration, Time & Place of Supply',
    text: 'A casual taxable person must apply for registration at least how '
        'many days before starting business?',
    options: ['5 days', '30 days', '1 day', '15 days'],
    answerIndex: 0,
    explanation: 'Section 27 also requires an advance deposit of the estimated tax '
        'liability.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'GST: Registration, Time & Place of Supply',
    text: 'A person liable to registration must apply within:',
    options: [
      '7 days',
      '30 days from the date of becoming liable',
      'One year',
      '90 days',
    ],
    answerIndex: 1,
    explanation: 'Section 25(1) of the CGST Act.',
  ),

  // GST: Input Tax Credit, Returns & Payment
  Question(
    subjectId: 'i_tax',
    chapter: 'GST: Input Tax Credit, Returns & Payment',
    text: 'If a recipient fails to pay the supplier the value of supply plus '
        'tax within how many days of the invoice date, the input tax credit '
        'availed must be reversed?',
    options: ['30 days', '90 days', '180 days', '365 days'],
    answerIndex: 2,
    explanation: 'This is the second proviso to section 16(2). The credit can be '
        're-availed when the payment is made.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'GST: Input Tax Credit, Returns & Payment',
    text: 'Under section 17(5), input tax credit is generally blocked on:',
    options: [
      'Goods purchased for resale',
      'Food and beverages',
      'Raw materials used in manufacturing',
      'Machinery used in the business',
    ],
    answerIndex: 1,
    explanation: 'Exceptions apply where the same category is supplied onward, as '
        'part of a composite or mixed supply, or where it is obligatory for '
        'an employer to provide.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'GST: Input Tax Credit, Returns & Payment',
    text: 'Credit of IGST in the electronic credit ledger must first be used '
        'to pay:',
    options: ['Interest and penalty', 'IGST', 'SGST only', 'CGST only'],
    answerIndex: 1,
    explanation: 'After IGST, the balance may be used to pay CGST and SGST in any '
        'order or proportion (section 49(5) and rule 88A).',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'GST: Input Tax Credit, Returns & Payment',
    text: 'Credit of CGST can be used to pay:',
    options: ['CGST and SGST', 'SGST only', 'CGST and IGST', 'SGST and IGST'],
    answerIndex: 2,
    explanation: 'CGST credit cannot be used for SGST or UTGST, and SGST credit '
        'cannot be used for CGST.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'GST: Input Tax Credit, Returns & Payment',
    text: 'Details of outward supplies are furnished in Form:',
    options: ['GSTR-1', 'GSTR-9', 'GSTR-3B', 'GSTR-2B'],
    answerIndex: 0,
    explanation: 'GSTR-3B is the summary return with tax payment, GSTR-9 is the '
        'annual return and GSTR-2B is an auto-drafted ITC statement.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'GST: Input Tax Credit, Returns & Payment',
    text: 'Interest on delayed payment of GST under section 50(1) is charged '
        'at:',
    options: [
      '1% per month',
      '18% per annum',
      '24% per annum',
      '12% per annum',
    ],
    answerIndex: 1,
    explanation: 'Interest at 18% per annum runs from the day after the due date '
        'until the tax is paid.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'GST: Input Tax Credit, Returns & Payment',
    text: 'An e-way bill is generally required for movement of goods where '
        'the consignment value exceeds:',
    options: ['₹1,00,000', '₹50,000', '₹25,000', '₹10,000'],
    answerIndex: 1,
    explanation: 'This is under rule 138 of the CGST Rules, subject to specified '
        'exceptions.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'GST: Input Tax Credit, Returns & Payment',
    text: 'The GST annual return is filed in Form:',
    options: ['GSTR-4', 'GSTR-9', 'GSTR-1', 'GSTR-3B'],
    answerIndex: 1,
    explanation: 'GSTR-4 is the annual return for composition taxpayers.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'GST: Input Tax Credit, Returns & Payment',
    text: 'Under section 16(4), input tax credit for invoices of FY 2025-26 '
        'can be claimed up to:',
    options: [
      'Any time',
      '30 November 2026 or the date of filing the annual return, whichever is earlier',
      '31 December 2027',
      '31 March 2026',
    ],
    answerIndex: 1,
    explanation: 'Credit not claimed by this date lapses.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'GST: Input Tax Credit, Returns & Payment',
    text: 'The electronic cash ledger is used to pay:',
    options: [
      'Tax, interest, penalty, fees and other amounts',
      'Only interest',
      'Only late fees',
      'Only output tax',
    ],
    answerIndex: 0,
    explanation: 'The electronic credit ledger can be used only for output tax.',
  ),

  // Customs Law
  Question(
    subjectId: 'i_tax',
    chapter: 'Customs Law',
    text: 'Basic customs duty is levied under:',
    options: [
      'Section 3 of the Customs Tariff Act, 1975',
      'Section 12 of the Customs Act, 1962',
      'Section 5 of the IGST Act, 2017',
      'Section 9 of the CGST Act, 2017',
    ],
    answerIndex: 1,
    explanation: 'Section 12 is the charging section; the rates are given in the '
        'Customs Tariff Act, 1975.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'Customs Law',
    text: 'The rates of basic customs duty on imports are specified in the:',
    options: [
      'First Schedule to the Customs Tariff Act, 1975',
      'IGST Act, 2017',
      'Second Schedule to the Customs Tariff Act, 1975',
      'Customs Act, 1962',
    ],
    answerIndex: 0,
    explanation: 'The Second Schedule specifies export duty rates.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'Customs Law',
    text: 'For computing the assessable value of imported goods, if freight '
        'cost is not ascertainable, it is taken as:',
    options: [
      '20% of the FOB value',
      '10% of the FOB value',
      '1.125% of the FOB value',
      'Nil',
    ],
    answerIndex: 0,
    explanation: 'This is under the Customs Valuation (Determination of Value of '
        'Imported Goods) Rules, 2007.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'Customs Law',
    text: 'For computing the assessable value of imported goods, if insurance '
        'cost is not ascertainable, it is taken as:',
    options: [
      '1% of the CIF value',
      '2% of the FOB value',
      '1.125% of the FOB value',
      '20% of the FOB value',
    ],
    answerIndex: 2,
    explanation: 'Rule 10(2) of the Customs Valuation Rules, 2007 provides this '
        'deemed rate.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'Customs Law',
    text: 'Assessable value of imported goods is ₹1,00,000, basic customs '
        'duty is 10% and Social Welfare Surcharge is 10% of BCD. The total '
        'of BCD and SWS is:',
    options: ['₹11,000', '₹20,000', '₹12,000', '₹10,000'],
    answerIndex: 0,
    explanation: 'BCD = ₹10,000; SWS = 10% of 10,000 = ₹1,000; total = ₹11,000.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'Customs Law',
    text: 'The document filed by an importer for clearance of imported goods '
        'is the:',
    options: ['Shipping Bill', 'Bill of Entry', 'E-way bill', 'Bill of Lading'],
    answerIndex: 1,
    explanation: 'A Shipping Bill is filed for exports; the Bill of Lading is issued '
        'by the carrier.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'Customs Law',
    text: 'Under section 15 of the Customs Act, the rate of duty for goods '
        'cleared for home consumption is the rate in force on the date of:',
    options: [
      'Shipment from the foreign port',
      'Payment to the foreign supplier',
      'Presentation of the bill of entry, or entry inwards of the vessel if later',
      'Purchase order',
    ],
    answerIndex: 2,
    explanation: 'If the bill of entry is filed before entry inwards, the date of '
        'entry inwards is taken.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'Customs Law',
    text: 'Anti-dumping duty on imports is levied under:',
    options: [
      'Section 9A of the Customs Tariff Act, 1975',
      'Section 25 of the Customs Act, 1962',
      'Section 12 of the Customs Act, 1962',
      'Section 5 of the IGST Act',
    ],
    answerIndex: 0,
    explanation: 'It is imposed when goods are exported to India below their normal '
        'value and harm domestic industry.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'Customs Law',
    text: 'Duty drawback under section 75 of the Customs Act is:',
    options: [
      'An exemption for baggage',
      'A penalty on importers',
      'A refund of duty paid on inputs used in manufacturing exported goods',
      'A duty on exports',
    ],
    answerIndex: 2,
    explanation: 'It prevents taxes on inputs from being exported.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'Customs Law',
    text: 'For calculating the assessable value of imported goods, the rate '
        'of exchange applied is the rate:',
    options: [
      'Chosen by the importer',
      'Notified by the CBIC, in force on the date the bill of entry is filed',
      'Of the day the goods were shipped',
      'Fixed once a year by the RBI',
    ],
    answerIndex: 1,
    explanation: 'Section 14 of the Customs Act read with notifications issued by '
        'the CBIC.',
  ),
];
