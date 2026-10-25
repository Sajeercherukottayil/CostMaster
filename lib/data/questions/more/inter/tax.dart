import '../../../../models/question.dart';

// Income-tax Act, 1961 as amended by the Finance Act, 2025 (AY 2026-27),
// CGST/IGST Acts and the Customs Act, 1962, for the December 2026 term.
// Review every term.
const interTaxMoreQuestions = [
  // Basics & Residential Status
  Question(
    subjectId: 'i_tax',
    chapter: 'Basics & Residential Status',
    text:
        'Which of the following is NOT a separate "person" under section '
        '2(31)?',
    options: [
      'A Hindu Undivided Family',
      'A branch of a company',
      'A local authority',
      'An association of persons',
    ],
    answerIndex: 1,
    explanation:
        'A branch is part of the company, not a separate person. '
        'Individuals, HUFs, companies, firms, AOPs/BOIs, local authorities '
        'and artificial juridical persons are persons.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'Basics & Residential Status',
    text:
        'A partnership firm is resident in India in a previous year '
        'unless:',
    options: [
      'All partners are non-residents',
      'The control and management of its affairs is wholly outside India',
      'It has a branch abroad',
      'It earns foreign income',
    ],
    answerIndex: 1,
    explanation:
        'Under section 6(2), a firm, AOP or HUF is resident if even '
        'part of its control and management is in India.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'Basics & Residential Status',
    text:
        'Whether a resident HUF is "ordinarily resident" depends on the '
        'residential history of its:',
    options: ['Members', 'Karta', 'Oldest member', 'Place of business'],
    answerIndex: 1,
    explanation:
        'A resident HUF is RNOR if the karta was non-resident in 9 of '
        'the 10 preceding years, or in India for 729 days or less in the 7 '
        'preceding years.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'Basics & Residential Status',
    text: 'Salary earned for services rendered in India is:',
    options: [
      'Taxable only if received in India',
      'Deemed to accrue or arise in India, whoever pays it',
      'Exempt for non-residents',
      'Taxable only for residents',
    ],
    answerIndex: 1,
    explanation:
        'Section 9(1)(ii) treats salary for services rendered in '
        'India as earned in India, so it is taxable even for a '
        'non-resident.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'Basics & Residential Status',
    text:
        'Foreign income of an earlier year, not taxed then, brought into '
        'India in the current year is:',
    options: [
      'Taxable for all assessees',
      'Not taxable in the current year',
      'Taxable only for RNOR',
      'Taxable at 30%',
    ],
    answerIndex: 1,
    explanation:
        'Remittance of past income is not income of the current '
        'previous year, so it is not taxable now.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'Basics & Residential Status',
    text:
        'For an individual, surcharge on income-tax where total income '
        'exceeds ₹50 lakh but not ₹1 crore is:',
    options: ['5%', '10%', '15%', '25%'],
    answerIndex: 1,
    explanation:
        'Surcharge is 10% above ₹50 lakh, 15% above ₹1 crore and 25% '
        'above ₹2 crore. Under the new regime the maximum is 25%; under the '
        'old regime a 37% rate applies above ₹5 crore.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'Basics & Residential Status',
    text:
        'Under section 288A, total income is rounded off to the nearest '
        'multiple of:',
    options: ['₹1', '₹10', '₹100', '₹1,000'],
    answerIndex: 1,
    explanation:
        'Total income is rounded to the nearest ₹10. Tax payable is '
        'also rounded to the nearest ₹10 under section 288B.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'Basics & Residential Status',
    text: 'A resident and ordinarily resident individual is taxed on:',
    options: [
      'Indian income only',
      'Global income',
      'Income received in India only',
      'Foreign income only',
    ],
    answerIndex: 1,
    explanation:
        'An ROR is taxed on income from all sources in India and '
        'abroad.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'Basics & Residential Status',
    text:
        'Under section 4, income-tax is charged on the total income of '
        'the:',
    options: [
      'Assessment year, at previous year rates',
      'Previous year, at rates in force for the assessment year',
      'Calendar year',
      'Year of payment',
    ],
    answerIndex: 1,
    explanation:
        'Income of the previous year is taxed in the following '
        'assessment year at that year\'s rates, with some exceptions.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'Basics & Residential Status',
    text: 'A company incorporated outside India is resident in India if:',
    options: [
      'It has Indian shareholders',
      'Its place of effective management is in India in that year',
      'It sells goods in India',
      'It has an Indian bank account',
    ],
    answerIndex: 1,
    explanation:
        'An Indian company is always resident. A foreign company is '
        'resident only if its POEM, where key management decisions are '
        'made, is in India.',
  ),

  // Income from Salaries
  Question(
    subjectId: 'i_tax',
    chapter: 'Income from Salaries',
    text:
        'For an employee covered by the Payment of Gratuity Act, the '
        'formula-based exempt gratuity is:',
    options: [
      '15/26 × last drawn salary × completed years of service',
      'Half month\'s salary × years of service',
      '1 month\'s salary × years of service',
      '10 months\' average salary',
    ],
    answerIndex: 0,
    explanation:
        'Exemption is the least of this formula, ₹20 lakh, and the '
        'gratuity actually received. Service of more than 6 months in the '
        'last year counts as a full year.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'Income from Salaries',
    text:
        'A non-government employee who also receives gratuity can claim '
        'exemption on commuted pension of:',
    options: [
      'The full commuted value',
      '1/3 of the full value of pension',
      '1/2 of the full value of pension',
      'Nil',
    ],
    answerIndex: 1,
    explanation:
        'Under section 10(10A), it is 1/3 of the full value if '
        'gratuity is received, and 1/2 if not. Government employees get a '
        'full exemption.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'Income from Salaries',
    text:
        'From 1 September 2024, the value of rent-free accommodation owned '
        'by a private employer in a city with population above 40 lakh '
        '(2011 census) is:',
    options: [
      '15% of salary',
      '10% of salary',
      '7.5% of salary',
      '5% of salary',
    ],
    answerIndex: 1,
    explanation:
        'Revised rates are 10% (above 40 lakh), 7.5% (15 to 40 lakh) '
        'and 5% (other places), less any rent paid by the employee.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'Income from Salaries',
    text:
        'The employer\'s contribution to a recognised provident fund is '
        'taxable to the extent it exceeds:',
    options: ['10% of salary', '12% of salary', '₹1,50,000', '₹2,50,000'],
    answerIndex: 1,
    explanation:
        'The excess over 12% of salary is taxable. Separately, total '
        'employer contributions to PF, NPS and superannuation above ₹7.5 '
        'lakh are a taxable perquisite.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'Income from Salaries',
    text:
        'The aggregate employer contribution to PF, NPS and superannuation '
        'fund that is a taxable perquisite is the amount exceeding:',
    options: ['₹2.5 lakh', '₹5 lakh', '₹7.5 lakh', '₹10 lakh'],
    answerIndex: 2,
    explanation:
        'Section 17(2)(vii) taxes contributions above ₹7.5 lakh in a '
        'year, along with the related income on them.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'Income from Salaries',
    text:
        'Under the old regime, exemption for leave travel concession is '
        'available for:',
    options: [
      'Any number of journeys',
      'Two journeys in a block of four calendar years',
      'One journey a year',
      'Foreign travel only',
    ],
    answerIndex: 1,
    explanation:
        'Section 10(5) covers travel within India only, for two '
        'journeys in a block. It is not available under the new regime.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'Income from Salaries',
    text: 'Salary is taxable on:',
    options: [
      'Receipt basis only',
      'Due or receipt basis, whichever is earlier',
      'Due basis only',
      'Payment by employer to the government',
    ],
    answerIndex: 1,
    explanation:
        'Section 15 taxes salary when due or when received, whichever '
        'is earlier. Advance salary is taxed on receipt.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'Income from Salaries',
    text:
        'Relief for arrears of salary that push income into a higher tax '
        'bracket is available under:',
    options: ['Section 80C', 'Section 89', 'Section 10(14)', 'Section 16'],
    answerIndex: 1,
    explanation: 'Section 89 relief is claimed using Form 10E.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'Income from Salaries',
    text:
        'Compensation received from an employer on termination of '
        'employment is taxable as:',
    options: [
      'Capital gains',
      'Profits in lieu of salary under section 17(3)',
      'Income from other sources',
      'Exempt income',
    ],
    answerIndex: 1,
    explanation:
        'Compensation connected with termination or change in terms '
        'of employment is profits in lieu of salary.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'Income from Salaries',
    text:
        'Under the old regime, children education allowance is exempt up '
        'to:',
    options: [
      '₹100 a month per child, up to 2 children',
      '₹300 a month per child',
      '₹1,000 a month per child',
      'Fully exempt',
    ],
    answerIndex: 0,
    explanation:
        'Rule 2BB allows ₹100 a month per child for up to two '
        'children (hostel allowance: ₹300 a month).',
  ),

  // Income from House Property
  Question(
    subjectId: 'i_tax',
    chapter: 'Income from House Property',
    text:
        'A taxpayer occupies three houses for his own residence. Under '
        'section 23(4):',
    options: [
      'All three have nil annual value',
      'He may treat any two as self-occupied; the third is deemed to be '
          'let out',
      'Only one is self-occupied',
      'All three are taxed as let out',
    ],
    answerIndex: 1,
    explanation:
        'Up to two houses can have nil annual value. Others are '
        'deemed let out, with expected rent as annual value.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'Income from House Property',
    text:
        'For houses held as stock-in-trade and not let out, annual value '
        'is taken as nil for:',
    options: [
      '1 year',
      '2 years from the end of the financial year in which the completion '
          'certificate is obtained',
      '5 years',
      'Forever',
    ],
    answerIndex: 1,
    explanation:
        'Section 23(5) gives builders a 2-year relief for unsold '
        'flats.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'Income from House Property',
    text:
        'Where a house is owned by co-owners with definite shares, the '
        'income is:',
    options: [
      'Taxed in the hands of the eldest co-owner',
      'Assessed separately in each co-owner\'s hands according to their '
          'share',
      'Taxed as an AOP',
      'Exempt',
    ],
    answerIndex: 1,
    explanation:
        'Section 26 treats each co-owner\'s share separately. Each '
        'self-occupying co-owner gets their own interest deduction limit.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'Income from House Property',
    text:
        'If actual rent is less than expected rent only because the house '
        'was vacant for part of the year, gross annual value is:',
    options: [
      'Expected rent',
      'Actual rent received or receivable',
      'Nil',
      'Municipal value',
    ],
    answerIndex: 1,
    explanation:
        'Section 23(1)(c) uses actual rent in this case, giving relief '
        'for the vacancy.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'Income from House Property',
    text:
        'A person who transfers a house to his spouse without adequate '
        'consideration (not under an agreement to live apart) is:',
    options: [
      'Not liable to tax on it',
      'Deemed to be the owner under section 27',
      'Liable only if the spouse lets it',
      'Liable under capital gains',
    ],
    answerIndex: 1,
    explanation:
        'The transferor remains the deemed owner, and income from the '
        'house is taxed in his hands.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'Income from House Property',
    text:
        'Interest on a housing loan payable outside India, on which tax has '
        'not been deducted at source, is:',
    options: [
      'Fully deductible',
      'Not deductible under section 25',
      'Deductible at 50%',
      'Deductible up to ₹2 lakh',
    ],
    answerIndex: 1,
    explanation:
        'Unless tax is deducted or the payee has an agent in India, '
        'such interest is disallowed.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'Income from House Property',
    text:
        'A loss under the head "Income from house property" that cannot be '
        'set off can be carried forward for:',
    options: ['4 years', '8 years', 'Indefinitely', 'Not at all'],
    answerIndex: 1,
    explanation:
        'Under section 71B, it can be carried forward for 8 years and '
        'set off only against income from house property.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'Income from House Property',
    text:
        'Under the old regime, interest on a loan taken to repair a '
        'self-occupied house is deductible up to:',
    options: ['₹30,000', '₹1,50,000', '₹2,00,000', 'No limit'],
    answerIndex: 0,
    explanation:
        'The ₹2 lakh limit applies only to loans for acquiring or '
        'constructing the house (taken after 1 April 1999). Repairs and '
        'other cases are limited to ₹30,000.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'Income from House Property',
    text:
        'Rent received from letting a building together with machinery, '
        'where the two cannot be separated, is taxable as:',
    options: [
      'Income from house property',
      'Business income or income from other sources',
      'Capital gains',
      'Exempt',
    ],
    answerIndex: 1,
    explanation:
        'Inseparable composite rent is not house property income. It '
        'is business income or, if not a business, income from other '
        'sources under section 56(2)(iii).',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'Income from House Property',
    text:
        'Income from a house property is taxable under this head only in '
        'the hands of:',
    options: [
      'The tenant',
      'The owner, including a deemed owner',
      'The occupier',
      'The person who collects the rent',
    ],
    answerIndex: 1,
    explanation:
        'Section 22 taxes the owner. A tenant who sub-lets is taxed '
        'under other sources or business.',
  ),

  // Profits & Gains of Business or Profession
  Question(
    subjectId: 'i_tax',
    chapter: 'Profits & Gains of Business or Profession',
    text:
        'Under section 44AB, a business must get its accounts audited if '
        'turnover exceeds ₹1 crore, but the limit is ₹10 crore where cash '
        'receipts and payments each do not exceed:',
    options: ['2%', '5%', '10%', '25%'],
    answerIndex: 1,
    explanation:
        'When cash transactions are within 5% of the totals, the '
        'audit limit rises to ₹10 crore.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'Profits & Gains of Business or Profession',
    text:
        'Capital expenditure (other than on land) on scientific research '
        'related to the business is deductible under section 35(1)(iv) '
        'at:',
    options: ['50%', '100%', '150%', 'Nil'],
    answerIndex: 1,
    explanation:
        'The whole amount is deductible in the year it is incurred. '
        'Land is excluded.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'Profits & Gains of Business or Profession',
    text: 'CSR expenditure under section 135 of the Companies Act is:',
    options: [
      'Fully deductible under section 37(1)',
      'Not deductible as a business expense',
      'Deductible at 50%',
      'Deductible under section 80G always',
    ],
    answerIndex: 1,
    explanation:
        'Explanation 2 to section 37(1) disallows CSR spending, though '
        'some CSR contributions may qualify under other sections.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'Profits & Gains of Business or Profession',
    text:
        'If tax is not deducted at source on a payment to a resident, the '
        'amount disallowed under section 40(a)(ia) is:',
    options: ['100%', '30%', '50%', 'Nil'],
    answerIndex: 1,
    explanation:
        '30% of the amount is disallowed. It is allowed in the year '
        'the tax is deducted and paid.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'Profits & Gains of Business or Profession',
    text:
        'Under section 40A(2), the Assessing Officer may disallow a payment '
        'to a relative or associated person that is:',
    options: [
      'Made by cheque',
      'Excessive or unreasonable compared with market value',
      'Less than ₹10,000',
      'For goods only',
    ],
    answerIndex: 1,
    explanation: 'Only the excessive part is disallowed.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'Profits & Gains of Business or Profession',
    text:
        'The normal rate of depreciation on computers, including software, '
        'is:',
    options: ['15%', '25%', '40%', '60%'],
    answerIndex: 2,
    explanation:
        'Computers are in a 40% block. General plant and machinery is '
        '15%, and residential buildings 5%.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'Profits & Gains of Business or Profession',
    text: 'Qualifying preliminary expenses under section 35D are deductible:',
    options: [
      'Fully in the first year',
      'In 5 equal instalments',
      'In 10 equal instalments',
      'Not at all',
    ],
    answerIndex: 1,
    explanation:
        'One-fifth is allowed each year for 5 years, starting from the '
        'year business commences.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'Profits & Gains of Business or Profession',
    text: 'A bad debt is allowed under section 36(1)(vii) when it:',
    options: [
      'Is expected to become bad',
      'Is written off as irrecoverable in the books',
      'Is more than 3 years old',
      'Is approved by the AO',
    ],
    answerIndex: 1,
    explanation:
        'Writing off in the books is enough; it need not be proved '
        'irrecoverable. The debt must have been included in income earlier.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'Profits & Gains of Business or Profession',
    text: 'A speculation business loss can be carried forward for:',
    options: ['4 years', '8 years', 'Indefinitely', 'Not at all'],
    answerIndex: 0,
    explanation:
        'It can be set off only against speculation income, for up to '
        '4 years.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'Profits & Gains of Business or Profession',
    text: 'Unabsorbed depreciation can be carried forward:',
    options: ['For 4 years', 'For 8 years', 'Indefinitely', 'Not at all'],
    answerIndex: 2,
    explanation:
        'Under section 32(2), unabsorbed depreciation is added to '
        'next year\'s depreciation and can be carried forward without limit.',
  ),

  // Capital Gains & Other Sources
  Question(
    subjectId: 'i_tax',
    chapter: 'Capital Gains & Other Sources',
    text:
        'The cost of acquisition of bonus shares allotted after 1 April '
        '2001 is:',
    options: [
      'Face value',
      'Nil',
      'Market value on allotment',
      'Cost of original shares',
    ],
    answerIndex: 1,
    explanation:
        'Under section 55(2)(aa), bonus shares have nil cost, so the '
        'whole sale price is gain. The holding period runs from allotment.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'Capital Gains & Other Sources',
    text:
        'Exemption under section 54F is available when long-term capital '
        'gain arises from transfer of:',
    options: [
      'A residential house',
      'Any long-term asset other than a residential house, invested in a '
          'new house',
      'Only listed shares',
      'Agricultural land only',
    ],
    answerIndex: 1,
    explanation:
        'The net sale consideration must be invested in one '
        'residential house in India. Section 54 covers the sale of a '
        'residential house.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'Capital Gains & Other Sources',
    text:
        'Investment in specified bonds under section 54EC, out of LTCG on '
        'land or building, is limited to:',
    options: ['₹10 lakh', '₹50 lakh', '₹1 crore', 'No limit'],
    answerIndex: 1,
    explanation:
        'The investment must be made within 6 months of transfer, up '
        'to ₹50 lakh in a financial year, with a 5-year lock-in.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'Capital Gains & Other Sources',
    text: 'A gift of a capital asset by an individual to a relative is:',
    options: [
      'A transfer liable to capital gains',
      'Not regarded as a transfer under section 47',
      'Taxable at 20%',
      'Taxable in the hands of the donee as capital gains',
    ],
    answerIndex: 1,
    explanation:
        'Gifts and transfers under a will are not transfers for '
        'capital gains. The donee takes over the donor\'s cost and holding '
        'period.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'Capital Gains & Other Sources',
    text:
        'Under the new regime for AY 2026-27, the standard deduction from '
        'family pension is 1/3 of the pension or, if less:',
    options: ['₹15,000', '₹25,000', '₹50,000', '₹75,000'],
    answerIndex: 1,
    explanation:
        'Finance (No. 2) Act, 2024 raised the limit to ₹25,000 under '
        'the new regime. The old regime limit is ₹15,000.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'Capital Gains & Other Sources',
    text:
        'A gift of ₹2,00,000 received from a friend on the occasion of the '
        'recipient\'s marriage is:',
    options: [
      'Fully taxable',
      'Exempt',
      'Taxable above ₹50,000',
      'Taxable at 30%',
    ],
    answerIndex: 1,
    explanation:
        'Gifts received on the occasion of marriage are exempt from '
        'section 56(2)(x), whoever gives them.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'Capital Gains & Other Sources',
    text:
        'Immovable property received without consideration from a '
        'non-relative is taxable if its stamp duty value exceeds:',
    options: ['₹10,000', '₹50,000', '₹1,00,000', '₹5,00,000'],
    answerIndex: 1,
    explanation:
        'Under section 56(2)(x), the whole stamp duty value is '
        'taxable if it exceeds ₹50,000.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'Capital Gains & Other Sources',
    text: 'Short-term capital gain on unlisted shares is taxed at:',
    options: ['15%', '20%', 'Normal slab rates', '12.5%'],
    answerIndex: 2,
    explanation:
        'Section 111A applies only to STT-paid listed equity and '
        'equity-oriented fund units. Other STCG is taxed at normal rates.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'Capital Gains & Other Sources',
    text:
        'Under section 50C, if the stamp duty value of land exceeds the '
        'sale consideration by more than 10%, the full value of '
        'consideration is taken as:',
    options: [
      'The sale consideration',
      'The stamp duty value',
      'The average of the two',
      'The indexed cost',
    ],
    answerIndex: 1,
    explanation: 'Within the 10% tolerance, the actual consideration is used.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'Capital Gains & Other Sources',
    text:
        'Interest on securities held as investments (not stock-in-trade) '
        'is taxable under:',
    options: [
      'Profits and gains of business',
      'Income from other sources',
      'Capital gains',
      'Salaries',
    ],
    answerIndex: 1,
    explanation:
        'Section 56(2)(id). If the securities are held as '
        'stock-in-trade, interest is business income.',
  ),

  // Deductions & Tax Liability
  Question(
    subjectId: 'i_tax',
    chapter: 'Deductions & Tax Liability',
    text:
        'Under the old regime, a donation to the Prime Minister\'s National '
        'Relief Fund is deductible under section 80G at:',
    options: [
      '50% subject to a qualifying limit',
      '100% without any qualifying limit',
      '50% without limit',
      'Nil',
    ],
    answerIndex: 1,
    explanation:
        'It is one of the funds allowing 100% deduction without a '
        'qualifying limit. Cash donations above ₹2,000 are not allowed.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'Deductions & Tax Liability',
    text:
        'Under section 80E, interest on a loan for higher education is '
        'deductible:',
    options: [
      'Up to ₹1,50,000',
      'In full, for up to 8 assessment years',
      'Only the principal is deductible',
      'Up to ₹50,000',
    ],
    answerIndex: 1,
    explanation:
        'There is no monetary limit. The deduction starts from the '
        'year repayment begins. It is available only under the old regime.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'Deductions & Tax Liability',
    text:
        'Section 80GG (rent paid by a person not receiving HRA) is limited '
        'to the least of rent paid minus 10% of total income, 25% of total '
        'income, and:',
    options: [
      '₹2,000 a month',
      '₹5,000 a month',
      '₹10,000 a month',
      '₹3,000 a month',
    ],
    answerIndex: 1,
    explanation:
        'The monthly cap is ₹5,000, so ₹60,000 a year. It is an old '
        'regime deduction.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'Deductions & Tax Liability',
    text:
        'Under the old regime, section 80CCD(1B) allows an additional '
        'deduction for NPS contributions of up to:',
    options: ['₹25,000', '₹50,000', '₹1,00,000', '₹1,50,000'],
    answerIndex: 1,
    explanation:
        'It is over and above the ₹1,50,000 limit of sections 80C, '
        '80CCC and 80CCD(1).',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'Deductions & Tax Liability',
    text:
        'Under the old regime, the basic exemption limit for a resident '
        'individual aged 80 or more is:',
    options: ['₹2,50,000', '₹3,00,000', '₹5,00,000', '₹4,00,000'],
    answerIndex: 2,
    explanation:
        'Limits are ₹2.5 lakh (below 60), ₹3 lakh (60 to 79) and ₹5 '
        'lakh (80 and above). The new regime has a single ₹4 lakh nil slab.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'Deductions & Tax Liability',
    text:
        'Under the old regime, rebate under section 87A is available to a '
        'resident individual with total income up to:',
    options: ['₹3 lakh', '₹5 lakh', '₹7 lakh', '₹12 lakh'],
    answerIndex: 1,
    explanation:
        'The old regime rebate is the lower of tax and ₹12,500, for '
        'income up to ₹5 lakh.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'Deductions & Tax Liability',
    text: 'Advance tax is payable when the estimated tax for the year is:',
    options: [
      '₹5,000 or more',
      '₹10,000 or more',
      '₹25,000 or more',
      'Any amount',
    ],
    answerIndex: 1,
    explanation:
        'Section 208 requires advance tax when liability is ₹10,000 '
        'or more. Resident senior citizens without business income are '
        'exempt.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'Deductions & Tax Liability',
    text:
        'Interest under section 234B for default in payment of advance '
        'tax is charged at:',
    options: [
      '1% per month or part of a month',
      '1.5% per month',
      '2% per month',
      '12% per annum on daily balance',
    ],
    answerIndex: 0,
    explanation:
        'It applies when advance tax paid is less than 90% of '
        'assessed tax.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'Deductions & Tax Liability',
    text: 'A long-term capital loss can be set off:',
    options: [
      'Against any income',
      'Only against long-term capital gains',
      'Against short-term capital gains only',
      'Against salary',
    ],
    answerIndex: 1,
    explanation:
        'It can be carried forward for 8 years, again only against '
        'LTCG. A short-term capital loss can be set off against both STCG '
        'and LTCG.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'Deductions & Tax Liability',
    text:
        'A belated return under section 139(4) for AY 2026-27 can be filed '
        'up to:',
    options: [
      '31 July 2026',
      '31 December 2026',
      '31 March 2027',
      '31 March 2028',
    ],
    answerIndex: 1,
    explanation:
        'The time limit is 31 December of the assessment year, or '
        'before completion of assessment, whichever is earlier.',
  ),

  // GST: Concepts, Levy & Supply
  Question(
    subjectId: 'i_tax',
    chapter: 'GST: Concepts, Levy & Supply',
    text: 'The GST Council is constituted under Article:',
    options: ['246A', '269A', '279A', '366'],
    answerIndex: 2,
    explanation:
        'Article 279A provides for the GST Council. Article 246A gives '
        'concurrent power to levy GST, and 269A covers IGST.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'GST: Concepts, Levy & Supply',
    text:
        'GST on petroleum crude, high speed diesel, petrol, natural gas and '
        'aviation turbine fuel will be levied:',
    options: [
      'From 1 July 2017',
      'From a date recommended by the GST Council',
      'Never',
      'Only on imports',
    ],
    answerIndex: 1,
    explanation:
        'Section 9(2) of the CGST Act defers GST on these until the '
        'Council recommends a date. They remain under excise and VAT.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'GST: Concepts, Levy & Supply',
    text: 'Under reverse charge, GST is paid by:',
    options: [
      'The supplier',
      'The recipient',
      'The e-commerce operator always',
      'The government',
    ],
    answerIndex: 1,
    explanation:
        'Section 9(3) and 9(4) shift liability to the recipient for '
        'notified supplies, such as legal services by an advocate to a '
        'business.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'GST: Concepts, Levy & Supply',
    text:
        'Which of the following is a supply even without consideration '
        'under Schedule I?',
    options: [
      'A gift of ₹10,000 by an employer to an employee',
      'Permanent transfer of business assets on which ITC has been availed',
      'Services by an employee to the employer',
      'Sale of a personal car by an individual',
    ],
    answerIndex: 1,
    explanation:
        'Schedule I also covers supplies between related or distinct '
        'persons, and gifts by employers above ₹50,000.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'GST: Concepts, Levy & Supply',
    text: 'Under section 2(47), "exempt supply" includes:',
    options: [
      'Only nil-rated supplies',
      'Nil-rated, wholly exempt and non-taxable supplies',
      'Zero-rated exports',
      'Supplies under reverse charge',
    ],
    answerIndex: 1,
    explanation:
        'Zero-rated supplies (exports and supplies to SEZ) are not '
        'exempt, and ITC remains available for them.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'GST: Concepts, Levy & Supply',
    text:
        'An individual sells his personal car to a friend. For GST, this '
        'is:',
    options: [
      'A taxable supply',
      'Not a supply, as it is not in the course or furtherance of business',
      'An exempt supply',
      'A zero-rated supply',
    ],
    answerIndex: 1,
    explanation:
        'Section 7 covers supplies made in the course or furtherance '
        'of business.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'GST: Concepts, Levy & Supply',
    text: 'Supply of electrical energy is:',
    options: [
      'Taxable at 18%',
      'Exempt from GST',
      'Outside GST and taxed by States',
      'Taxed under reverse charge',
    ],
    answerIndex: 1,
    explanation: 'Electrical energy is exempt by notification.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'GST: Concepts, Levy & Supply',
    text:
        'Legal services by an advocate to a registered business entity '
        '(turnover above the threshold) are taxed:',
    options: [
      'Under forward charge',
      'Under reverse charge, paid by the business',
      'As exempt',
      'Only if the advocate is registered',
    ],
    answerIndex: 1,
    explanation:
        'This is a notified reverse charge service. Services to '
        'individuals and small businesses below the threshold are exempt.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'GST: Concepts, Levy & Supply',
    text: 'Aggregate turnover under section 2(6) does NOT include:',
    options: [
      'Exempt supplies',
      'Exports',
      'Inward supplies taxed under reverse charge',
      'Inter-State supplies',
    ],
    answerIndex: 2,
    explanation:
        'Aggregate turnover is all outward supplies on the same PAN '
        'across India, excluding inward reverse-charge supplies and taxes.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'GST: Concepts, Levy & Supply',
    text: 'A "taxable person" under section 22 is one who is:',
    options: [
      'Any business',
      'Registered or liable to be registered',
      'Only a company',
      'Only an importer',
    ],
    answerIndex: 1,
    explanation:
        'Section 2(107) defines a taxable person by reference to '
        'registration under sections 22 and 24.',
  ),

  // GST: Registration, Time & Place of Supply
  Question(
    subjectId: 'i_tax',
    chapter: 'GST: Registration, Time & Place of Supply',
    text: 'The composition tax rate for traders (supplying goods) is:',
    options: ['0.5%', '1%', '2%', '5%'],
    answerIndex: 1,
    explanation:
        'Traders and manufacturers pay 1% (0.5% CGST + 0.5% SGST). '
        'Restaurants pay 5%.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'GST: Registration, Time & Place of Supply',
    text:
        'Under section 10(2A), service providers with turnover up to ₹50 '
        'lakh can opt to pay tax at:',
    options: ['1%', '3%', '6%', '18%'],
    answerIndex: 2,
    explanation:
        'The rate is 6% (3% CGST + 3% SGST), without input tax '
        'credit.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'GST: Registration, Time & Place of Supply',
    text: 'A person below the threshold who wants to register:',
    options: [
      'Cannot register',
      'May take voluntary registration',
      'Must get court approval',
      'Must register under composition only',
    ],
    answerIndex: 1,
    explanation:
        'Section 25(3) allows voluntary registration. All provisions '
        'then apply as for a registered person.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'GST: Registration, Time & Place of Supply',
    text: 'The certificate of GST registration is issued in Form:',
    options: ['GST REG-01', 'GST REG-06', 'GSTR-1', 'GST CMP-02'],
    answerIndex: 1,
    explanation: 'REG-01 is the application. REG-06 is the certificate.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'GST: Registration, Time & Place of Supply',
    text:
        'For services taxed under reverse charge, the time of supply is '
        'the earlier of the date of payment and:',
    options: [
      '30 days from the invoice date',
      '60 days from the supplier\'s invoice date',
      'The end of the month',
      'The date of the contract',
    ],
    answerIndex: 1,
    explanation:
        'Section 13(3). If neither applies, it is the date of entry '
        'in the recipient\'s books.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'GST: Registration, Time & Place of Supply',
    text:
        'For goods taxed under reverse charge, the time of supply is the '
        'earliest of receipt of goods, date of payment, and:',
    options: [
      '30 days from the supplier\'s invoice date',
      '60 days from invoice',
      '90 days from invoice',
      'Year end',
    ],
    answerIndex: 0,
    explanation:
        'Section 12(3) uses a 30-day period for goods, compared with '
        '60 days for services.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'GST: Registration, Time & Place of Supply',
    text:
        'Under section 12(2) of the IGST Act, the place of supply of '
        'services to a registered person (general rule) is:',
    options: [
      'The supplier\'s location',
      'The location of the registered recipient',
      'Where the contract was signed',
      'Always the supplier\'s State',
    ],
    answerIndex: 1,
    explanation:
        'For an unregistered recipient, it is the recipient\'s address '
        'on record, if any, otherwise the supplier\'s location.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'GST: Registration, Time & Place of Supply',
    text: 'The place of supply for admission to a concert is:',
    options: [
      'The location of the recipient',
      'The place where the event is actually held',
      'The supplier\'s registered office',
      'Where the ticket is sold',
    ],
    answerIndex: 1,
    explanation:
        'Section 12(6) of the IGST Act: admission to cultural, '
        'sporting and similar events.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'GST: Registration, Time & Place of Supply',
    text:
        'For passenger transport services (domestic), the place of supply '
        'to an unregistered person is:',
    options: [
      'The destination',
      'The place where the passenger embarks for a continuous journey',
      'The supplier\'s location',
      'The midpoint of the journey',
    ],
    answerIndex: 1,
    explanation: 'For a registered person, it is the location of that person.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'GST: Registration, Time & Place of Supply',
    text:
        'A tax invoice for taxable services (other than banking and '
        'similar services) must be issued within:',
    options: ['7 days', '30 days', '45 days', '60 days'],
    answerIndex: 1,
    explanation:
        'Rule 47 allows 30 days from supply of service. Banks and '
        'financial institutions get 45 days.',
  ),

  // GST: Input Tax Credit, Returns & Payment
  Question(
    subjectId: 'i_tax',
    chapter: 'GST: Input Tax Credit, Returns & Payment',
    text:
        'The monthly summary return in which a regular taxpayer declares '
        'tax and pays it is:',
    options: ['GSTR-1', 'GSTR-3B', 'GSTR-9', 'GSTR-4'],
    answerIndex: 1,
    explanation:
        'GSTR-3B summarises outward supplies, ITC and tax paid. '
        'GSTR-1 gives invoice-wise outward supplies.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'GST: Input Tax Credit, Returns & Payment',
    text:
        'The auto-generated statement of input tax credit available to a '
        'recipient, based on suppliers\' filings, is:',
    options: ['GSTR-2B', 'GSTR-3B', 'GSTR-7', 'GSTR-9C'],
    answerIndex: 0,
    explanation:
        'GSTR-2B is a static monthly statement. Under section '
        '16(2)(aa), ITC generally needs to appear in it.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'GST: Input Tax Credit, Returns & Payment',
    text:
        'The late fee for delay in filing GSTR-3B (with tax liability) is '
        'generally:',
    options: [
      '₹10 a day',
      '₹50 a day (₹25 CGST + ₹25 SGST), subject to a cap',
      '₹200 a day',
      'No late fee',
    ],
    answerIndex: 1,
    explanation:
        'For nil returns the fee is ₹20 a day. Caps are notified '
        'based on turnover.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'GST: Input Tax Credit, Returns & Payment',
    text: 'Input tax credit on capital goods is availed:',
    options: [
      'In 2 equal instalments',
      'In full in the year of receipt',
      'Over 5 years',
      'Not at all',
    ],
    answerIndex: 1,
    explanation:
        'Unlike earlier laws, GST allows full ITC on capital goods at '
        'once, provided depreciation is not claimed on the tax component.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'GST: Input Tax Credit, Returns & Payment',
    text: 'ITC on goods lost, stolen, destroyed or written off is:',
    options: [
      'Fully available',
      'Blocked under section 17(5)',
      'Available at 50%',
      'Available only for capital goods',
    ],
    answerIndex: 1,
    explanation: 'If ITC was already taken, it must be reversed.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'GST: Input Tax Credit, Returns & Payment',
    text:
        'The QRMP scheme (quarterly returns, monthly payment) is '
        'available to taxpayers with aggregate turnover up to:',
    options: ['₹1.5 crore', '₹2 crore', '₹5 crore', '₹10 crore'],
    answerIndex: 2,
    explanation:
        'Eligible taxpayers file GSTR-1 and GSTR-3B quarterly, but '
        'pay tax monthly.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'GST: Input Tax Credit, Returns & Payment',
    text:
        'When common inputs are used for both taxable and exempt supplies, '
        'the ITC relating to exempt supplies is reversed under:',
    options: ['Rule 36', 'Rule 42', 'Rule 86', 'Rule 138'],
    answerIndex: 1,
    explanation:
        'Rule 42 apportions common ITC on inputs and input services. '
        'Rule 43 covers capital goods.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'GST: Input Tax Credit, Returns & Payment',
    text: 'An Input Service Distributor distributes the credit of:',
    options: [
      'Goods bought by the head office',
      'Input services received for distinct persons on the same PAN',
      'Capital goods',
      'Taxes paid on exports',
    ],
    answerIndex: 1,
    explanation:
        'ISD (section 2(61)) distributes ITC on common input services '
        'to branches, by turnover ratio.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'GST: Input Tax Credit, Returns & Payment',
    text:
        'Filing the annual return GSTR-9 is optional for registered '
        'persons with aggregate turnover up to:',
    options: ['₹50 lakh', '₹2 crore', '₹5 crore', '₹10 crore'],
    answerIndex: 1,
    explanation:
        'The government has exempted taxpayers up to ₹2 crore from '
        'filing GSTR-9.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'GST: Input Tax Credit, Returns & Payment',
    text: 'A registered person under the composition scheme:',
    options: [
      'Can claim full ITC',
      'Cannot claim input tax credit',
      'Can claim ITC on capital goods only',
      'Can pass ITC to buyers',
    ],
    answerIndex: 1,
    explanation:
        'Composition taxpayers pay tax on turnover at low rates, '
        'cannot take ITC and cannot charge tax on their invoices.',
  ),

  // Customs Law
  Question(
    subjectId: 'i_tax',
    chapter: 'Customs Law',
    text: 'For customs, India\'s territorial waters extend up to:',
    options: [
      '12 nautical miles from the baseline',
      '24 nautical miles',
      '200 nautical miles',
      '3 nautical miles',
    ],
    answerIndex: 0,
    explanation:
        'Goods are imported when they enter territorial waters. The '
        'contiguous zone extends to 24 nautical miles.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'Customs Law',
    text:
        'Protective duty to protect domestic industry, on the Tariff '
        'Commission\'s recommendation, is levied under section:',
    options: [
      '6 of the Customs Tariff Act',
      '8B of the Customs Tariff Act',
      '9A of the Customs Tariff Act',
      '12 of the Customs Act',
    ],
    answerIndex: 0,
    explanation:
        'Section 8B covers safeguard duty, and 9A covers anti-dumping '
        'duty.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'Customs Law',
    text:
        'Safeguard duty, levied when increased imports cause serious '
        'injury to domestic industry, is under section:',
    options: ['8B', '9', '9A', '3(7)'],
    answerIndex: 0,
    explanation:
        'Section 8B of the Customs Tariff Act. It can be imposed '
        'whether or not the imports are dumped or subsidised.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'Customs Law',
    text:
        'Countervailing duty on imports of subsidised articles is levied '
        'under section:',
    options: ['6', '8B', '9', '9A'],
    answerIndex: 2,
    explanation:
        'Section 9 of the Customs Tariff Act. It offsets subsidies '
        'given by the exporting country.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'Customs Law',
    text:
        'Since 2017, landing charges (loading, unloading and handling at '
        'the port) for assessable value are:',
    options: [
      'Added at 1% of CIF',
      'Not added separately',
      'Added at 2% of FOB',
      'Added at actuals',
    ],
    answerIndex: 1,
    explanation:
        'The 1% landing charge was removed from the Customs Valuation '
        'Rules in 2017.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'Customs Law',
    text: 'A bill of entry for warehousing is filed when imported goods are:',
    options: [
      'Cleared immediately on payment of duty',
      'Stored in a warehouse without paying duty at once',
      'Exported again',
      'Lost in transit',
    ],
    answerIndex: 1,
    explanation:
        'Duty is paid when goods are later cleared from the warehouse '
        'for home consumption.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'Customs Law',
    text:
        'The document filed by an exporter for clearance of goods for '
        'export by sea or air is a:',
    options: [
      'Bill of entry',
      'Shipping bill',
      'Bill of lading',
      'Import general manifest',
    ],
    answerIndex: 1,
    explanation:
        'A shipping bill is filed under section 50. A bill of export '
        'is used for exports by land.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'Customs Law',
    text:
        'Under section 14 of the Customs Act, the value of imported goods '
        'is their:',
    options: [
      'Market value in India',
      'Transaction value: the price actually paid or payable, when buyer '
          'and seller are not related and price is the sole consideration',
      'Value declared by the seller',
      'Cost of production abroad',
    ],
    answerIndex: 1,
    explanation:
        'Transaction value is adjusted under the Customs Valuation '
        'Rules, 2007, for items such as commissions and royalties.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'Customs Law',
    text:
        'In valuing imported goods, a buying commission paid by the '
        'importer to his own agent abroad is:',
    options: [
      'Added to the assessable value',
      'Not added',
      'Added at 50%',
      'Added only for air shipments',
    ],
    answerIndex: 1,
    explanation:
        'Rule 10 adds commissions and brokerage, except buying '
        'commissions.',
  ),
  Question(
    subjectId: 'i_tax',
    chapter: 'Customs Law',
    text:
        'Improperly imported goods are liable to confiscation under '
        'section:',
    options: ['111', '113', '125', '28'],
    answerIndex: 0,
    explanation:
        'Section 111 covers imports. Section 113 covers goods '
        'attempted to be improperly exported, and 125 allows redemption on a '
        'fine.',
  ),
];
