import '../../../../models/question.dart';

// Income-tax Act, 1961 as amended by the Finance Act, 2025 (AY 2026-27),
// CGST/IGST Acts and the Customs Act, 1962, for the December 2026 term.
// GST rates in these problems are given in the question. Review every term.
const interTaxMoreDescriptive = [
  // Basics & Residential Status
  DescriptiveQuestion(
    subjectId: 'i_tax',
    chapter: 'Basics & Residential Status',
    text:
        'Income of a previous year is normally taxed in the next '
        'assessment year. In which cases is it taxed in the previous year '
        'itself?',
    marks: 5,
    answer:
        'These exceptions protect revenue where tax may otherwise be '
        'lost:\n'
        '• Shipping business of a non-resident (section 172): freight from '
        'Indian ports is taxed on each voyage.\n'
        '• Persons leaving India (section 174) permanently, with no intention '
        'of returning.\n'
        '• AOP or BOI formed for a particular event or purpose that is '
        'likely to be dissolved (section 174A).\n'
        '• Persons likely to transfer property to avoid tax (section 175).\n'
        '• Discontinued business (section 176): the AO may assess income up '
        'to the date of discontinuance at once.\n'
        'In each case, income is assessed at the rates of the assessment '
        'year in progress.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_tax',
    chapter: 'Basics & Residential Status',
    text:
        'Compute gross total income for AY 2026-27 if the individual is '
        '(a) ROR, (b) RNOR and (c) non-resident: taxable salary for services '
        'in India ₹5,00,000; interest from an Indian company ₹20,000; profit '
        'from a London business controlled from India ₹1,00,000; rent of '
        '₹2,00,000 from a London house, received in London (no municipal '
        'taxes); past untaxed foreign income brought into India ₹50,000.',
    marks: 6,
    problem: true,
    answer:
        'Indian income (taxable for all): salary 5,00,000 + interest '
        '20,000 = 5,20,000\n'
        'London house property income = 2,00,000 − 30% standard deduction '
        '= 1,40,000\n'
        '(a) ROR (global income):\n'
        '• 5,20,000 + London business 1,00,000 + London house 1,40,000 = '
        '₹7,60,000\n'
        '(b) RNOR (foreign income only from a business controlled from '
        'India):\n'
        '• 5,20,000 + 1,00,000 = ₹6,20,000\n'
        '(c) Non-resident (Indian income only):\n'
        '• ₹5,20,000\n'
        'Past untaxed foreign income brought into India is not income of '
        'this year, so it is excluded in all cases.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_tax',
    chapter: 'Basics & Residential Status',
    text:
        'Determine the residential status for PY 2025-26 of: (a) an HUF '
        'whose affairs are managed partly from Chennai and partly from '
        'Dubai, whose karta has been non-resident for 9 of the last 10 '
        'years; (b) Z Pte Ltd, incorporated in Singapore, whose board meets '
        'and takes all key decisions in Mumbai.',
    marks: 4,
    problem: true,
    answer:
        '(a) An HUF is resident if any part of its control and '
        'management is in India. Here part is in Chennai, so the HUF is '
        'resident. Because the karta was non-resident in 9 of the 10 '
        'preceding years, the HUF is resident but not ordinarily resident '
        '(RNOR).\n'
        '(b) A foreign company is resident if its place of effective '
        'management (POEM) is in India. Key management and commercial '
        'decisions are taken in Mumbai, so Z Pte Ltd is resident in India '
        'and taxable on its global income.',
  ),

  // Income from Salaries
  DescriptiveQuestion(
    subjectId: 'i_tax',
    chapter: 'Income from Salaries',
    text:
        'Mr. A, a private sector employee covered by the Payment of '
        'Gratuity Act, retires after 20 years and 7 months of service and '
        'receives gratuity of ₹8,00,000. His last drawn basic salary plus '
        'DA is ₹52,000 a month. Compute the taxable gratuity.',
    marks: 4,
    problem: true,
    answer:
        'Service of more than 6 months in the last year counts as a full '
        'year, so completed years = 21.\n'
        'Exempt gratuity is the least of:\n'
        '• 15/26 × 52,000 × 21 = ₹6,30,000\n'
        '• Statutory limit: ₹20,00,000\n'
        '• Actual gratuity received: ₹8,00,000\n'
        'Exempt = ₹6,30,000\n'
        'Taxable gratuity = 8,00,000 − 6,30,000 = ₹1,70,000\n'
        'This exemption is available under both the old and new regimes.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_tax',
    chapter: 'Income from Salaries',
    text:
        'A retired private sector employee commutes 50% of his pension '
        'and receives ₹6,00,000. Compute the taxable commuted pension if he '
        '(a) also received gratuity, and (b) did not receive gratuity.',
    marks: 4,
    problem: true,
    answer:
        'Full value of pension = 6,00,000 ÷ 50% = 12,00,000\n'
        '(a) With gratuity: exemption = 1/3 of full value = 4,00,000\n'
        '• Taxable = 6,00,000 − 4,00,000 = ₹2,00,000\n'
        '(b) Without gratuity: exemption = 1/2 of full value = 6,00,000\n'
        '• Taxable = nil\n'
        'Uncommuted pension received monthly is fully taxable as salary.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_tax',
    chapter: 'Income from Salaries',
    text:
        'A private employer provides an employee with a company-owned '
        'flat in a city with a 2011 population of 50 lakh. Salary for '
        'perquisite purposes is ₹12,00,000 for PY 2025-26, and the employee '
        'pays rent of ₹20,000 for the year. Compute the taxable perquisite.',
    marks: 4,
    problem: true,
    answer:
        'For accommodation owned by the employer, the value from 1 '
        'September 2024 is 10% of salary in cities with population above 40 '
        'lakh.\n'
        '• Value = 12,00,000 × 10% = 1,20,000\n'
        '• Less rent paid by the employee = 20,000\n'
        '• Taxable perquisite = ₹1,00,000\n'
        'Salary here includes basic pay, DA (if part of retirement benefits), '
        'bonus, commission and taxable allowances, but not perquisites.',
  ),

  // Income from House Property
  DescriptiveQuestion(
    subjectId: 'i_tax',
    chapter: 'Income from House Property',
    text:
        'A house is let at ₹25,000 a month but stays vacant for 2 months '
        'in PY 2025-26. Municipal value ₹2,40,000; fair rent ₹2,70,000; '
        'standard rent ₹3,00,000. Municipal taxes paid ₹10,000. Compute '
        'income from house property.',
    marks: 6,
    problem: true,
    answer:
        '• Expected rent = higher of municipal value and fair rent '
        '(2,70,000), within standard rent (3,00,000) = 2,70,000\n'
        '• Actual rent for the full year would be 3,00,000, but because of '
        'vacancy, rent actually received is 25,000 × 10 = 2,50,000\n'
        '• Since actual rent is lower than expected rent only because of '
        'vacancy, GAV = actual rent = 2,50,000 (section 23(1)(c))\n'
        '• Less municipal taxes: 10,000\n'
        '• Net annual value = 2,40,000\n'
        '• Less 30% standard deduction: 72,000\n'
        '• Income from house property = ₹1,68,000',
  ),
  DescriptiveQuestion(
    subjectId: 'i_tax',
    chapter: 'Income from House Property',
    text:
        'Explain the deductions under section 24 and the conditions for '
        'the higher interest limit on a self-occupied house under the old '
        'regime.',
    marks: 5,
    answer:
        'Section 24 allows two deductions from net annual value:\n'
        '• (a) Standard deduction of 30% of NAV, whatever the actual '
        'expenses.\n'
        '• (b) Interest on borrowed capital for buying, building, repairing '
        'or reconstructing the property, including pre-construction interest '
        'in 5 instalments.\n'
        'For a self-occupied house under the old regime, interest is capped '
        'at ₹2,00,000 if:\n'
        '• The loan was taken on or after 1 April 1999 for acquisition or '
        'construction;\n'
        '• Acquisition or construction is completed within 5 years from the '
        'end of the financial year of borrowing; and\n'
        '• A certificate of interest payable is obtained from the lender.\n'
        'Otherwise, including loans for repairs, the cap is ₹30,000. Under '
        'the new regime, no interest is allowed for a self-occupied house.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_tax',
    chapter: 'Income from House Property',
    text:
        'Mr. B owns three houses, all occupied by his family. Their '
        'expected rents are ₹3,00,000, ₹2,40,000 and ₹1,80,000. Municipal '
        'taxes paid on the third house are ₹12,000. There are no loans. '
        'Which houses should he choose as self-occupied, and what is his '
        'income from house property?',
    marks: 4,
    problem: true,
    answer:
        'Under section 23(4), only two houses can be self-occupied with '
        'nil annual value. The third is deemed let out at its expected rent.\n'
        'To pay the least tax, he should choose the two with the highest '
        'expected rents (₹3,00,000 and ₹2,40,000) as self-occupied.\n'
        'Third house (deemed let out):\n'
        '• GAV = 1,80,000\n'
        '• Less municipal taxes: 12,000\n'
        '• NAV = 1,68,000\n'
        '• Less 30%: 50,400\n'
        '• Income = ₹1,17,600\n'
        'Total income from house property = ₹1,17,600.',
  ),

  // Profits & Gains of Business or Profession
  DescriptiveQuestion(
    subjectId: 'i_tax',
    chapter: 'Profits & Gains of Business or Profession',
    text:
        'A resident individual trader opts for section 44AD. Turnover is '
        '₹1.5 crore: ₹1.2 crore through banking or digital channels and ₹30 '
        'lakh in cash. Compute presumptive income, and state whether the '
        '₹3 crore limit applies.',
    marks: 4,
    problem: true,
    answer:
        '• Income on digital receipts = 1,20,00,000 × 6% = ₹7,20,000\n'
        '• Income on cash receipts = 30,00,000 × 8% = ₹2,40,000\n'
        '• Presumptive income = ₹9,60,000 (higher income may be declared)\n'
        'The ₹3 crore limit applies only if cash receipts are within 5% of '
        'turnover. Here cash is 20% of turnover, so the limit is ₹2 crore. '
        'Turnover of ₹1.5 crore is within it, so section 44AD can be used.\n'
        'No deduction is allowed for expenses, but depreciation is deemed '
        'allowed when computing WDV.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_tax',
    chapter: 'Profits & Gains of Business or Profession',
    text:
        'A block of plant and machinery (15%) has an opening WDV of '
        '₹5,00,000. During the year, a machine from the block is sold for '
        '₹7,00,000 and nothing is bought. Some machines are still in use. '
        'Compute the depreciation and any capital gain.',
    marks: 4,
    problem: true,
    answer:
        '• Sale proceeds (7,00,000) exceed the opening WDV plus '
        'additions (5,00,000)\n'
        '• Under section 50(1), the excess of ₹2,00,000 is a short-term '
        'capital gain, even though the asset may have been held for many '
        'years\n'
        '• The WDV of the block becomes nil, so no depreciation is allowed '
        'for the year\n'
        'The block continues to exist because some assets remain. If later '
        'assets are added, depreciation is charged on the additions.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_tax',
    chapter: 'Profits & Gains of Business or Profession',
    text:
        'State the main amounts expressly disallowed under sections 40(a) '
        'and 40A when computing business income.',
    marks: 5,
    answer:
        'Section 40(a):\n'
        '• Payments to non-residents without deduction or payment of TDS: '
        '100% disallowed until tax is paid.\n'
        '• Payments to residents without TDS: 30% disallowed until tax is '
        'paid.\n'
        '• Income-tax and wealth-tax paid, and taxes on profits.\n'
        '• Equalisation levy where not deducted or paid.\n'
        'Section 40A:\n'
        '• 40A(2): excessive payments to relatives or associated persons.\n'
        '• 40A(3): payments above ₹10,000 to a person in a day otherwise '
        'than by account payee cheque, draft or electronic mode (₹35,000 '
        'for transporters).\n'
        '• 40A(7): provision for gratuity, unless for an approved fund.\n'
        '• 40A(9): contributions to non-statutory employee funds.',
  ),

  // Capital Gains & Other Sources
  DescriptiveQuestion(
    subjectId: 'i_tax',
    chapter: 'Capital Gains & Other Sources',
    text:
        'An individual has long-term capital gain of ₹60 lakh on sale of '
        'a residential house in PY 2025-26. He buys a new house for ₹45 '
        'lakh within 2 years, and invests ₹15 lakh in 54EC bonds within 6 '
        'months. Compute the taxable LTCG.',
    marks: 5,
    problem: true,
    answer:
        '• LTCG = 60,00,000\n'
        '• Exemption under section 54 (new house, up to the gain, cost '
        'capped at ₹10 crore): 45,00,000\n'
        '• Exemption under section 54EC (bonds within 6 months, up to ₹50 '
        'lakh): 15,00,000\n'
        '• Taxable LTCG = nil\n'
        'Conditions: the new house must not be sold within 3 years, and the '
        'bonds must be held for 5 years, or the exemption is withdrawn.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_tax',
    chapter: 'Capital Gains & Other Sources',
    text:
        'Land is sold for ₹90 lakh. Find the full value of consideration '
        'under section 50C if the stamp duty value is (a) ₹1 crore, or (b) '
        '₹98 lakh.',
    marks: 4,
    problem: true,
    answer:
        'Section 50C uses the stamp duty value if it exceeds 110% of the '
        'consideration. 110% of 90 lakh = ₹99 lakh.\n'
        '(a) SDV ₹1 crore is more than ₹99 lakh, so the full value is ₹1 '
        'crore.\n'
        '(b) SDV ₹98 lakh is within ₹99 lakh, so the actual consideration '
        'of ₹90 lakh is used.\n'
        'If the taxpayer disputes the SDV, he may ask for reference to a '
        'Valuation Officer.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_tax',
    chapter: 'Capital Gains & Other Sources',
    text:
        'Ms. C receives these gifts in PY 2025-26: ₹40,000 and ₹30,000 from '
        'two friends; ₹1,00,000 from her brother; ₹2,00,000 from friends on '
        'her marriage; and land with a stamp duty value of ₹6,00,000 from a '
        'friend, without consideration. Compute the taxable amount under '
        'section 56(2)(x).',
    marks: 5,
    problem: true,
    answer:
        '• Cash from friends: 40,000 + 30,000 = 70,000. The aggregate '
        'exceeds ₹50,000, so the whole ₹70,000 is taxable.\n'
        '• From her brother: a relative, so exempt.\n'
        '• On her marriage: exempt.\n'
        '• Land from a friend: SDV exceeds ₹50,000, so ₹6,00,000 is taxable.\n'
        'Taxable under income from other sources = 70,000 + 6,00,000 = '
        '₹6,70,000\n'
        'The ₹50,000 test for money is applied to the total of all '
        'non-exempt cash gifts in the year.',
  ),

  // Deductions & Tax Liability
  DescriptiveQuestion(
    subjectId: 'i_tax',
    chapter: 'Deductions & Tax Liability',
    text:
        'Under the old regime, compute the deductions under sections 80C '
        'and 80CCD(1B): LIC premium ₹30,000; PPF ₹50,000; principal repaid on '
        'housing loan ₹60,000; tuition fees for two children ₹40,000; ELSS '
        '₹20,000; NPS contribution ₹50,000.',
    marks: 4,
    problem: true,
    answer:
        'Section 80C items:\n'
        '• 30,000 + 50,000 + 60,000 + 40,000 + 20,000 = 2,00,000\n'
        '• Deduction limited to ₹1,50,000\n'
        'Section 80CCD(1B):\n'
        '• NPS contribution: ₹50,000, over and above the ₹1,50,000 limit\n'
        'Total deduction = ₹2,00,000\n'
        'None of these is allowed under the new regime.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_tax',
    chapter: 'Deductions & Tax Liability',
    text:
        'Under the old regime, Mr. D (aged 45) pays a health insurance '
        'premium of ₹28,000 for himself and family, and ₹45,000 for his '
        'parents (both senior citizens). Compute the deduction under '
        'section 80D.',
    marks: 4,
    problem: true,
    answer:
        '• Self, spouse and children (all below 60): limit ₹25,000; paid '
        '28,000, so the deduction is ₹25,000\n'
        '• Parents who are senior citizens: limit ₹50,000; paid 45,000, so '
        'the deduction is ₹45,000\n'
        '• Total deduction = ₹70,000\n'
        'Premiums must be paid otherwise than in cash (preventive health '
        'check-up up to ₹5,000 may be paid in cash, within these limits).',
  ),
  DescriptiveQuestion(
    subjectId: 'i_tax',
    chapter: 'Deductions & Tax Liability',
    text:
        'A salaried individual estimates tax of ₹2,00,000 for PY 2025-26 '
        'after TDS. Show the advance tax instalments and due dates. How '
        'would it differ for a person under section 44AD?',
    marks: 4,
    problem: true,
    answer:
        'Cumulative instalments under section 211:\n'
        '• By 15 June 2025: 15% = ₹30,000\n'
        '• By 15 September 2025: 45% = ₹90,000 (so ₹60,000 more)\n'
        '• By 15 December 2025: 75% = ₹1,50,000 (₹60,000 more)\n'
        '• By 15 March 2026: 100% = ₹2,00,000 (₹50,000 more)\n'
        'For presumptive income under section 44AD or 44ADA, the whole '
        'advance tax is payable in one instalment by 15 March.\n'
        'Short payment attracts interest under sections 234B and 234C.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_tax',
    chapter: 'Deductions & Tax Liability',
    text:
        'Summarise the rules for set-off and carry forward of losses '
        'under the Income-tax Act.',
    marks: 6,
    answer:
        '• House property loss: set off against other heads up to ₹2 '
        'lakh a year under the old regime (not at all under the new regime); '
        'carry forward 8 years, only against house property income.\n'
        '• Business loss (non-speculative): set off against any head except '
        'salary; carry forward 8 years against business income.\n'
        '• Speculation loss: only against speculation income; carry forward '
        '4 years.\n'
        '• Short-term capital loss: against STCG or LTCG; carry forward 8 '
        'years.\n'
        '• Long-term capital loss: only against LTCG; carry forward 8 years.\n'
        '• Loss from owning and maintaining race horses: only against such '
        'income; 4 years.\n'
        '• Unabsorbed depreciation: carry forward indefinitely.\n'
        '• Losses (other than house property loss and unabsorbed '
        'depreciation) can be carried forward only if the return of the loss '
        'year is filed by the due date.',
  ),

  // GST: Concepts, Levy & Supply
  DescriptiveQuestion(
    subjectId: 'i_tax',
    chapter: 'GST: Concepts, Levy & Supply',
    text:
        'Explain the scope of "supply" under section 7 of the CGST Act, '
        '2017.',
    marks: 5,
    answer:
        'Supply includes:\n'
        '• All forms of supply of goods or services, such as sale, transfer, '
        'barter, exchange, licence, rental, lease or disposal, made for '
        'consideration in the course or furtherance of business.\n'
        '• Import of services for consideration, whether or not in the course '
        'of business.\n'
        '• Activities in Schedule I, even without consideration: permanent '
        'transfer of business assets on which ITC was taken; supplies '
        'between related or distinct persons (such as branches in different '
        'States); supplies by a principal to an agent or agent to principal; '
        'import of services from a related person abroad.\n'
        'Schedule II says whether an activity is goods or services. Schedule '
        'III lists activities that are neither, such as services by an '
        'employee to an employer and sale of land.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_tax',
    chapter: 'GST: Concepts, Levy & Supply',
    text:
        'For a registered company in Maharashtra, state whether each '
        'service is taxed under forward or reverse charge: (a) legal advice '
        'from an individual advocate; (b) transport of goods by a GTA that '
        'has not opted to pay tax itself; (c) sponsorship services from a '
        'firm; (d) services of a director in his capacity as director; (e) '
        'printing services from a printing company.',
    marks: 5,
    problem: true,
    answer:
        '(a) Legal services by an advocate to a business entity: reverse '
        'charge, paid by the company.\n'
        '(b) GTA services to a body corporate, where the GTA has not opted '
        'for forward charge: reverse charge.\n'
        '(c) Sponsorship services to a body corporate or partnership firm: '
        'reverse charge.\n'
        '(d) Services by a director to the company: reverse charge.\n'
        '(e) Printing services: forward charge, paid by the printer.\n'
        'Under reverse charge, the company pays GST in cash and can claim ITC '
        'if otherwise eligible.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_tax',
    chapter: 'GST: Concepts, Levy & Supply',
    text:
        'Is each of these a supply? (a) An employer gives a gift worth '
        '₹60,000 to an employee. (b) A company transfers goods from its '
        'Gujarat factory to its own branch in Rajasthan (separately '
        'registered). (c) A trader permanently gives an old computer (ITC '
        'claimed) to a school, free. (d) An employee provides services to '
        'his employer under his employment.',
    marks: 4,
    problem: true,
    answer:
        '(a) Supply under Schedule I: gifts by an employer to an employee '
        'above ₹50,000 in a year.\n'
        '(b) Supply under Schedule I: supply between distinct persons (same '
        'PAN, different States), even without consideration. IGST applies.\n'
        '(c) Supply under Schedule I: permanent transfer or disposal of '
        'business assets on which ITC was availed.\n'
        '(d) Not a supply: Schedule III treats services by an employee to the '
        'employer in the course of employment as neither goods nor services.',
  ),

  // GST: Registration, Time & Place of Supply
  DescriptiveQuestion(
    subjectId: 'i_tax',
    chapter: 'GST: Registration, Time & Place of Supply',
    text:
        'A company receives a service under reverse charge. The supplier\'s '
        'invoice is dated 1 April 2026. Find the time of supply if payment is '
        'made on (a) 15 May 2026, or (b) 20 June 2026.',
    marks: 4,
    problem: true,
    answer:
        'Under section 13(3), the time of supply for reverse-charge '
        'services is the earlier of:\n'
        '• the date of payment; or\n'
        '• 60 days from the date of the supplier\'s invoice (here 31 May '
        '2026).\n'
        '(a) Payment on 15 May is earlier than 31 May, so the time of supply '
        'is 15 May 2026.\n'
        '(b) Payment on 20 June is later, so the time of supply is 31 May '
        '2026.\n'
        'Tax must be paid in the return for the month in which the time of '
        'supply falls.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_tax',
    chapter: 'GST: Registration, Time & Place of Supply',
    text:
        'A trader opts for the composition scheme. His turnover of taxable '
        'goods in a quarter is ₹30 lakh, and he also has exempt supplies of '
        '₹2 lakh. Compute his tax, and state three restrictions on a '
        'composition taxpayer.',
    marks: 5,
    problem: true,
    answer:
        'For traders, composition tax is 1% (0.5% CGST + 0.5% SGST) of '
        'turnover of taxable supplies in the State.\n'
        '• Tax = 30,00,000 × 1% = ₹30,000 (CGST 15,000 + SGST 15,000)\n'
        '• Exempt supplies are not included in the turnover for traders\n'
        'Restrictions:\n'
        '• Cannot make inter-State outward supplies of goods.\n'
        '• Cannot claim input tax credit or collect tax from customers; must '
        'issue a bill of supply.\n'
        '• Cannot supply through e-commerce operators who collect TCS (with '
        'limited relaxation), and cannot supply goods not taxable under GST.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_tax',
    chapter: 'GST: Registration, Time & Place of Supply',
    text:
        'Find the place of supply and the tax type: (a) a Delhi consultant '
        'advises a registered client in Mumbai; (b) a Pune tax consultant '
        'advises an unregistered individual whose address in Delhi is on '
        'record; '
        '(c) a Mumbai bus company carries an unregistered passenger from '
        'Mumbai to Goa; (d) a Chennai company buys tickets for a conference '
        'in Bengaluru from a Karnataka organiser.',
    marks: 6,
    problem: true,
    answer:
        '(a) General rule, registered recipient: place of supply is '
        'Maharashtra. Supplier in Delhi, so IGST.\n'
        '(b) General rule, unregistered recipient with address on record: '
        'place of supply is Delhi. Supplier in Maharashtra, so IGST. (If the '
        'service were training, section 12(5) would make the place of '
        'supply the place where it is performed.)\n'
        '(c) Passenger transport to an unregistered person: place where the '
        'passenger embarks, Maharashtra. Supplier in Maharashtra, so CGST + '
        'SGST.\n'
        '(d) Admission to an event: place where the event is held, '
        'Karnataka. Supplier in Karnataka, so CGST + SGST (Karnataka), even '
        'though the buyer is in Tamil Nadu.',
  ),

  // GST: Input Tax Credit, Returns & Payment
  DescriptiveQuestion(
    subjectId: 'i_tax',
    chapter: 'GST: Input Tax Credit, Returns & Payment',
    text:
        'A registered person has common input tax credit of ₹1,00,000 for '
        'the month on inputs used for both taxable and exempt supplies. '
        'Taxable turnover is ₹80 lakh and exempt turnover ₹20 lakh. Compute '
        'the ITC to be reversed under rule 42 (simplified).',
    marks: 4,
    problem: true,
    answer:
        'ITC on common inputs is split in the ratio of exempt turnover to '
        'total turnover.\n'
        '• Total turnover = 80 + 20 = ₹1 crore\n'
        '• Exempt share = 20 ÷ 100 = 20%\n'
        '• ITC to reverse = 1,00,000 × 20% = ₹20,000\n'
        '• Eligible common ITC = ₹80,000\n'
        'ITC used only for exempt supplies is fully blocked; ITC used only for '
        'taxable supplies is fully available. A final adjustment is made at '
        'the year end based on annual turnover.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_tax',
    chapter: 'GST: Input Tax Credit, Returns & Payment',
    text:
        'A manufacturer in Gujarat makes intra-State supplies of ₹20 lakh '
        'in a month (assume GST 18%). Purchases (all intra-State, GST 18%): '
        'raw materials ₹8 lakh; a machine ₹2 lakh; staff canteen food ₹50,000; '
        'a car for the director ₹6 lakh (GST assumed at 18%). Compute the net '
        'GST payable in cash.',
    marks: 6,
    problem: true,
    answer:
        'Output tax: 20,00,000 × 18% = 3,60,000 (CGST 1,80,000 + SGST '
        '1,80,000)\n'
        'Eligible ITC:\n'
        '• Raw materials: 8,00,000 × 18% = 1,44,000\n'
        '• Machine: 2,00,000 × 18% = 36,000\n'
        '• Canteen food: blocked under section 17(5)\n'
        '• Director\'s car: blocked under section 17(5)\n'
        '• Total ITC = 1,80,000 (CGST 90,000 + SGST 90,000)\n'
        'Net payable in cash:\n'
        '• CGST = 1,80,000 − 90,000 = 90,000\n'
        '• SGST = 1,80,000 − 90,000 = 90,000\n'
        '• Total = ₹1,80,000',
  ),
  DescriptiveQuestion(
    subjectId: 'i_tax',
    chapter: 'GST: Input Tax Credit, Returns & Payment',
    text:
        'Explain the main GST returns filed by a regular taxpayer and '
        'their due dates.',
    marks: 5,
    answer:
        '• GSTR-1: details of outward supplies, invoice-wise. Monthly, by '
        'the 11th of the next month (quarterly by the 13th under QRMP).\n'
        '• GSTR-2B: not filed; an auto-generated monthly statement of ITC '
        'based on suppliers\' GSTR-1, available around the 14th.\n'
        '• GSTR-3B: summary return with payment of tax. Monthly, by the 20th '
        '(quarterly by the 22nd or 24th under QRMP, depending on the State).\n'
        '• GSTR-9: annual return, by 31 December after the year end; optional '
        'for turnover up to ₹2 crore.\n'
        '• GSTR-9C: self-certified reconciliation statement, for turnover '
        'above ₹5 crore.\n'
        'Late filing attracts late fees and interest on tax paid late.',
  ),

  // Customs Law
  DescriptiveQuestion(
    subjectId: 'i_tax',
    chapter: 'Customs Law',
    text:
        'Goods are imported by air. FOB value US\$20,000; air freight '
        'US\$5,000; insurance US\$300; buying commission paid to the '
        'importer\'s own agent US\$200. Exchange rate notified by CBIC: ₹85 '
        'per US\$. Find the assessable value.',
    marks: 5,
    problem: true,
    answer:
        'Under the Customs Valuation Rules, 2007:\n'
        '• FOB: 20,000\n'
        '• Air freight: capped at 20% of FOB = 4,000 (actual 5,000 is '
        'higher)\n'
        '• Insurance: 300\n'
        '• Buying commission: not added (rule 10 adds commissions except '
        'buying commission)\n'
        '• CIF = 20,000 + 4,000 + 300 = US\$24,300\n'
        '• Assessable value = 24,300 × 85 = ₹20,65,500',
  ),
  DescriptiveQuestion(
    subjectId: 'i_tax',
    chapter: 'Customs Law',
    text:
        'An importer files the bill of entry for home consumption on 10 '
        'February, when BCD is 10% and the exchange rate is ₹84. The vessel\'s '
        'entry inward is granted on 15 February, when BCD is 12% and the '
        'exchange rate is ₹85. Which rate of duty and exchange rate apply?',
    marks: 4,
    problem: true,
    answer:
        '• Exchange rate (section 14): the rate on the date of filing the '
        'bill of entry, so ₹84.\n'
        '• Rate of duty (section 15): the rate on the date of filing the bill '
        'of entry, or the date of entry inward if later. A bill filed before '
        'entry inward is treated as filed on the date of entry inward, so '
        '15 February applies and BCD is 12%.\n'
        'So the importer uses ₹84 per US\$ for valuation and 12% BCD.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_tax',
    chapter: 'Customs Law',
    text: 'Explain the types of bill of entry under the Customs Act, 1962.',
    marks: 4,
    answer:
        'A bill of entry is filed under section 46 by the importer for '
        'clearance of imported goods.\n'
        '• For home consumption: when duty is paid and goods are cleared '
        'straight away for use in India.\n'
        '• For warehousing: when goods are stored in a customs warehouse '
        'without paying duty at once. Duty is paid when they are cleared '
        'from the warehouse.\n'
        '• Ex-bond bill of entry: for clearing warehoused goods for home '
        'consumption.\n'
        'It can be filed in advance, before the goods arrive, and is now '
        'filed electronically.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_tax',
    chapter: 'Customs Law',
    text:
        'What is duty drawback? Explain the types under sections 74 and '
        '75 of the Customs Act.',
    marks: 5,
    answer:
        'Drawback is a refund of duty paid, so that exports are not '
        'burdened with Indian taxes.\n'
        '• Section 74 (re-export of imported goods): goods imported and '
        're-exported as such within 2 years. 98% of the import duty is '
        'refunded if not used; a lower percentage if used, based on the '
        'period of use.\n'
        '• Section 75 (manufactured exports): refund of duty on imported '
        'materials used in making export goods. It is paid at All Industry '
        'Rates fixed by the government, or at brand rates for a specific '
        'exporter.\n'
        'Conditions include proper export, realisation of export proceeds and '
        'a minimum claim amount.',
  ),
];
