import '../../../../models/question.dart';

// Income-tax Act, 1961 as amended by the Finance Act, 2025 (AY 2026-27),
// CGST/IGST Acts and the Customs Act, 1962, for the December 2026 term.
// GST rates in these problems are given in the question, not taken from
// the current rate schedule. Review every term.
const interTaxProblems = [
  DescriptiveQuestion(
    subjectId: 'i_tax',
    chapter: 'Basics & Residential Status',
    text:
        'Mr. John, a foreign national, came to India for the first time on '
        '1 October 2025 and stayed until 31 March 2026. Find his '
        'residential status for AY 2026-27 and state which income is '
        'taxable in India.',
    marks: 5,
    problem: true,
    answer:
        'Days in India in PY 2025-26: October 31 + November 30 + '
        'December 31 + January 31 + February 28 + March 31 = 182 days.\n'
        '• He meets the basic condition of 182 days or more, so he is '
        'resident.\n'
        '• He was non-resident in all 10 preceding years (first visit), so '
        'he is not ordinarily resident (RNOR).\n'
        'Taxable income for an RNOR:\n'
        '• Income received or deemed to be received in India.\n'
        '• Income accruing or arising, or deemed to accrue or arise, in '
        'India.\n'
        '• Foreign income only if it comes from a business controlled from '
        'India or a profession set up in India.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_tax',
    chapter: 'Basics & Residential Status',
    text:
        'Ms. Priya, an Indian citizen who had always lived in India, '
        'left on 1 September 2025 to take up a job in Dubai. Find her '
        'residential status for AY 2026-27.',
    marks: 4,
    problem: true,
    answer:
        'Days in India in PY 2025-26 (1 April to 1 September): about 154 '
        'days, which is less than 182.\n'
        '• For an Indian citizen leaving India for employment, the second '
        'basic condition (60 days + 365 days) does not apply; the 60 days '
        'becomes 182 days.\n'
        '• She does not meet the 182-day condition in either form.\n'
        'Conclusion: She is non-resident for AY 2026-27. Only her Indian '
        'income is taxable in India; her Dubai salary is not.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_tax',
    chapter: 'Income from Salaries',
    text:
        'For AY 2026-27, under the new tax regime: basic salary ₹9,00,000; '
        'DA ₹1,00,000; HRA ₹2,40,000; bonus ₹50,000; professional tax paid '
        '₹2,500. There is no other income. Compute taxable salary and the '
        'tax payable by this resident individual.',
    marks: 8,
    problem: true,
    answer:
        'Taxable salary\n'
        '• Gross salary = 9,00,000 + 1,00,000 + 2,40,000 + 50,000 = '
        '12,90,000 (HRA is fully taxable under the new regime)\n'
        '• Less standard deduction: 75,000\n'
        '• Professional tax: not deductible under the new regime\n'
        '• Taxable salary = total income = ₹12,15,000\n'
        'Tax on slabs\n'
        '• Up to 4,00,000: nil\n'
        '• 4–8 lakh at 5%: 20,000\n'
        '• 8–12 lakh at 10%: 40,000\n'
        '• 12–12.15 lakh at 15%: 2,250\n'
        '• Total: 62,250\n'
        'Marginal relief under section 87A: income exceeds ₹12 lakh by '
        '15,000, so tax cannot be more than 15,000.\n'
        '• Tax = 15,000 + health and education cess 4% (600) = ₹15,600',
  ),
  DescriptiveQuestion(
    subjectId: 'i_tax',
    chapter: 'Income from Salaries',
    text:
        'Under the old regime, an employee in Mumbai gets basic salary of '
        '₹6,00,000 and HRA of ₹3,00,000 a year, and pays rent of ₹2,40,000 '
        'a year. DA does not form part of retirement benefits. Find the '
        'exempt and taxable HRA.',
    marks: 5,
    problem: true,
    answer:
        'Salary for HRA = basic salary = 6,00,000 (DA is excluded, since '
        'it is not part of retirement benefits).\n'
        'Exemption under section 10(13A) is the least of:\n'
        '• Actual HRA received: 3,00,000\n'
        '• 50% of salary (Mumbai is a metro city): 3,00,000\n'
        '• Rent paid − 10% of salary = 2,40,000 − 60,000 = 1,80,000\n'
        'Exempt HRA = ₹1,80,000\n'
        'Taxable HRA = 3,00,000 − 1,80,000 = ₹1,20,000\n'
        'Under the new regime, the whole HRA would be taxable.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_tax',
    chapter: 'Income from House Property',
    text:
        'A house is let out. Municipal value ₹3,00,000; fair rent '
        '₹3,60,000; standard rent ₹3,40,000; actual rent ₹30,000 a month. '
        'Municipal taxes paid ₹20,000; interest on housing loan ₹1,00,000. '
        'Compute income from house property for AY 2026-27.',
    marks: 6,
    problem: true,
    answer:
        '• Expected rent = higher of municipal value (3,00,000) and fair '
        'rent (3,60,000), limited to standard rent (3,40,000) = 3,40,000\n'
        '• Actual rent = 30,000 × 12 = 3,60,000\n'
        '• Gross annual value = higher of the two = 3,60,000\n'
        '• Less municipal taxes paid: 20,000\n'
        '• Net annual value = 3,40,000\n'
        '• Less standard deduction at 30%: 1,02,000\n'
        '• Less interest on borrowed capital: 1,00,000\n'
        '• Income from house property = ₹1,38,000\n'
        'The answer is the same under both regimes for a let-out property.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_tax',
    chapter: 'Income from House Property',
    text:
        'A loan was taken on 1 April 2022 to build a house, completed on '
        '15 January 2025, and the owner lives in it. Interest is ₹1,20,000 '
        'a year. Compute the interest deduction for AY 2026-27 under the old '
        'and new regimes.',
    marks: 5,
    problem: true,
    answer:
        'Pre-construction period: from the date of borrowing to 31 March '
        'before the year of completion, so 1 April 2022 to 31 March 2024 '
        '(2 years).\n'
        '• Pre-construction interest = 2 × 1,20,000 = 2,40,000, allowed in '
        '5 equal instalments of 48,000 from PY 2024-25\n'
        'Old regime (self-occupied):\n'
        '• Current year interest 1,20,000 + instalment 48,000 = 1,68,000\n'
        '• This is within the ₹2,00,000 limit, so loss from house property '
        '= ₹1,68,000\n'
        'New regime:\n'
        '• No deduction for interest on a self-occupied property, so income '
        'from house property is nil.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_tax',
    chapter: 'Profits & Gains of Business or Profession',
    text:
        'A manufacturer\'s plant block (15%) has an opening WDV of '
        '₹10,00,000. On 10 October 2025, a new machine costing ₹4,00,000 is '
        'bought and put to use. A machine is sold for ₹1,50,000. Compute '
        'depreciation for AY 2026-27, including additional depreciation '
        'under the old regime.',
    marks: 6,
    problem: true,
    answer:
        '• WDV of block = 10,00,000 + 4,00,000 − 1,50,000 = 12,50,000\n'
        '• The new machine was used for less than 180 days, so it gets half '
        'the normal rate\n'
        'Normal depreciation:\n'
        '• On 8,50,000 at 15% = 1,27,500\n'
        '• On 4,00,000 at 7.5% = 30,000\n'
        '• Total = ₹1,57,500\n'
        'Additional depreciation (section 32(1)(iia), old regime only):\n'
        '• 20% halved to 10%, since used less than 180 days: 4,00,000 × 10% '
        '= ₹40,000. The other 10% is allowed next year.\n'
        'Total depreciation: ₹1,97,500 (old regime); ₹1,57,500 (new regime, '
        'which does not allow additional depreciation).',
  ),
  DescriptiveQuestion(
    subjectId: 'i_tax',
    chapter: 'Profits & Gains of Business or Profession',
    text:
        'Net profit per the profit and loss account is ₹5,00,000, after '
        'debiting: a cash payment of ₹15,000 to a supplier in one day; '
        'provision for bonus ₹40,000, paid after the due date of the return; '
        'income tax ₹30,000; book depreciation ₹60,000 (tax depreciation is '
        '₹75,000); donation to a political party ₹10,000. Compute business '
        'income.',
    marks: 6,
    problem: true,
    answer:
        'Net profit as per P&L: 5,00,000\n'
        'Add (disallowed):\n'
        '• Cash payment above ₹10,000 in a day, section 40A(3): 15,000\n'
        '• Bonus not paid by the due date of return, section 43B: 40,000\n'
        '• Income tax, section 40(a)(ii): 30,000\n'
        '• Book depreciation: 60,000\n'
        '• Donation to political party (not a business expense): 10,000\n'
        'Less:\n'
        '• Depreciation as per Income-tax Act: (75,000)\n'
        'Business income = ₹5,80,000\n'
        'The bonus will be allowed in the year it is actually paid.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_tax',
    chapter: 'Capital Gains & Other Sources',
    text:
        'In PY 2025-26, a resident individual sells (a) listed equity '
        'shares (STT paid) held for 2 years, for ₹8,00,000 (cost ₹3,00,000), '
        'and (b) listed equity shares held for 6 months, with a gain of '
        '₹1,00,000. Compute the tax on these gains, ignoring the basic '
        'exemption limit.',
    marks: 5,
    problem: true,
    answer:
        '(a) Long-term capital gain (held more than 12 months)\n'
        '• Gain = 8,00,000 − 3,00,000 = 5,00,000\n'
        '• Exempt under section 112A: 1,25,000\n'
        '• Taxable = 3,75,000 × 12.5% = ₹46,875\n'
        '(b) Short-term capital gain under section 111A\n'
        '• 1,00,000 × 20% = ₹20,000\n'
        'Total tax = 66,875 + cess 4% (2,675) = ₹69,550\n'
        'Deductions under Chapter VI-A are not allowed against these gains.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_tax',
    chapter: 'Capital Gains & Other Sources',
    text:
        'A resident individual sells land in August 2025 for ₹80,00,000, '
        'paying transfer expenses of ₹1,00,000. It was bought in 2015-16 for '
        '₹20,00,000. Cost Inflation Index: 2015-16 = 254, 2025-26 = 376. '
        'Compare tax at 12.5% without indexation and 20% with indexation, '
        'and state which applies.',
    marks: 6,
    problem: true,
    answer:
        'Option 1: 12.5% without indexation\n'
        '• Gain = 80,00,000 − 1,00,000 − 20,00,000 = 59,00,000\n'
        '• Tax = 59,00,000 × 12.5% = ₹7,37,500\n'
        'Option 2: 20% with indexation\n'
        '• Indexed cost = 20,00,000 × 376 ÷ 254 = 29,60,630\n'
        '• Gain = 79,00,000 − 29,60,630 = 49,39,370\n'
        '• Tax = 49,39,370 × 20% = ₹9,87,874\n'
        'For land or buildings acquired before 23 July 2024, a resident '
        'individual or HUF pays the lower of the two. Here the tax is '
        '₹7,37,500 (plus cess).',
  ),
  DescriptiveQuestion(
    subjectId: 'i_tax',
    chapter: 'Deductions & Tax Liability',
    text:
        'A resident individual aged 40 has gross total income of '
        '₹9,00,000 from business, invests ₹1,80,000 in 80C-eligible schemes '
        'and pays a health insurance premium of ₹30,000 for himself. Compare '
        'tax under the old and new regimes for AY 2026-27.',
    marks: 8,
    problem: true,
    answer:
        'Old regime\n'
        '• Deduction under 80C: limited to 1,50,000\n'
        '• Deduction under 80D: limited to 25,000\n'
        '• Total income = 9,00,000 − 1,75,000 = 7,25,000\n'
        '• Tax: 2.5–5 lakh at 5% = 12,500; 5–7.25 lakh at 20% = 45,000; '
        'total 57,500\n'
        '• No rebate, since income exceeds ₹5 lakh\n'
        '• Tax with cess 4% = ₹59,800\n'
        'New regime\n'
        '• No 80C or 80D deductions; total income = 9,00,000\n'
        '• Tax: 4–8 lakh at 5% = 20,000; 8–9 lakh at 10% = 10,000; total '
        '30,000\n'
        '• Rebate under 87A (income up to ₹12 lakh): 30,000\n'
        '• Tax payable = nil\n'
        'The new regime is better. With business income, he must file Form '
        '10-IEA to opt for the old regime, so he should stay in the new one.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_tax',
    chapter: 'GST: Concepts, Levy & Supply',
    text:
        'A registered supplier sells goods within the State. List price '
        '₹1,00,000; trade discount of 10% shown on the invoice; packing '
        '₹2,000 and freight ₹3,000 charged to the buyer. Find the value of '
        'supply and the GST payable, assuming GST at 18%.',
    marks: 5,
    problem: true,
    answer:
        'Under section 15 of the CGST Act:\n'
        '• List price: 1,00,000\n'
        '• Less trade discount on the invoice: (10,000), deductible because '
        'it is given before or at the time of supply and shown on the invoice\n'
        '• Add packing charged to the buyer: 2,000\n'
        '• Add freight charged to the buyer: 3,000\n'
        '• Value of supply = ₹95,000\n'
        'GST at 18% = ₹17,100. It is an intra-State supply, so CGST 9% = '
        '₹8,550 and SGST 9% = ₹8,550.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_tax',
    chapter: 'GST: Concepts, Levy & Supply',
    text:
        'Assume GST rates of 5% on sweets and dry fruits and 18% on '
        'chocolates and aerated drinks. (a) A shop sells a festive hamper of '
        'all four items for ₹1,000. (b) A seller sells a laptop for '
        '₹50,000 with a free carry bag (laptop 18%, bag 5% if sold alone). '
        'Find the GST in each case.',
    marks: 5,
    problem: true,
    answer:
        '(a) The items are not naturally bundled and are sold for one '
        'price, so this is a mixed supply. It is taxed at the highest rate '
        'among the items: 18%.\n'
        '• GST = 1,000 × 18% = ₹180\n'
        '(b) A laptop and its bag are naturally bundled, and the laptop is '
        'the principal supply, so this is a composite supply taxed at the '
        'laptop\'s rate.\n'
        '• GST = 50,000 × 18% = ₹9,000',
  ),
  DescriptiveQuestion(
    subjectId: 'i_tax',
    chapter: 'GST: Registration, Time & Place of Supply',
    text:
        'Find the place of supply and whether IGST or CGST + SGST applies: '
        '(a) a Maharashtra supplier sells goods to a Gujarat buyer, delivered '
        'in Gujarat; (b) a Delhi supplier bills a Haryana buyer but ships the '
        'goods to the buyer\'s customer in Punjab; (c) a Karnataka restaurant '
        'serves a tourist from Kerala; (d) a Mumbai architect designs a '
        'building in Goa.',
    marks: 6,
    problem: true,
    answer:
        '(a) Goods are moved, so the place of supply is where the '
        'movement ends: Gujarat. Supplier in Maharashtra, so IGST.\n'
        '(b) "Bill to, ship to": the place of supply is the principal place '
        'of business of the person on whose direction the goods are sent, '
        'Haryana. Supplier in Delhi, so IGST.\n'
        '(c) Restaurant services: the place of supply is where the service '
        'is actually performed, Karnataka. Supplier also in Karnataka, so '
        'CGST + SGST.\n'
        '(d) Services directly related to immovable property: the place of '
        'supply is where the property is located, Goa. Supplier in '
        'Maharashtra, so IGST.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_tax',
    chapter: 'GST: Registration, Time & Place of Supply',
    text:
        '(a) Find the time of supply: services completed on 1 June, '
        'invoice issued on 10 June, payment received on 20 June. What if the '
        'invoice were issued on 15 July? (b) A service provider has taxable '
        'supplies of ₹15 lakh, exempt supplies of ₹4 lakh, exports of ₹3 '
        'lakh and inward supplies under reverse charge of ₹2 lakh. Must it '
        'register? (Threshold ₹20 lakh.)',
    marks: 6,
    problem: true,
    answer:
        '(a) Under section 13, if the invoice is issued within 30 days '
        'of providing the service, the time of supply is the earlier of the '
        'invoice date and the payment date.\n'
        '• Invoice on 10 June (within 30 days): time of supply = 10 June\n'
        '• Invoice on 15 July (beyond 30 days): time of supply is the '
        'earlier of the date of provision and the date of payment = 1 June\n'
        '(b) Aggregate turnover includes taxable, exempt and export supplies '
        'on the same PAN, but excludes inward supplies under reverse charge '
        'and GST itself.\n'
        '• Aggregate turnover = 15 + 4 + 3 = ₹22 lakh, which exceeds ₹20 '
        'lakh, so registration is required.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_tax',
    chapter: 'GST: Input Tax Credit, Returns & Payment',
    text:
        'Output tax: CGST ₹50,000, SGST ₹50,000, IGST ₹40,000. Input tax '
        'credit: CGST ₹30,000, SGST ₹25,000, IGST ₹70,000. Compute the net '
        'GST payable in cash, following the order of utilisation.',
    marks: 6,
    problem: true,
    answer:
        'Rules: IGST credit is used first for IGST, then for CGST and '
        'SGST in any order. CGST credit cannot be used for SGST, or SGST '
        'credit for CGST.\n'
        'Step 1: IGST credit 70,000\n'
        '• For IGST liability: 40,000 (IGST payable nil)\n'
        '• Balance 30,000: say 20,000 for CGST and 10,000 for SGST\n'
        'Step 2: CGST liability 50,000 − 20,000 = 30,000, paid by CGST '
        'credit 30,000; cash nil\n'
        'Step 3: SGST liability 50,000 − 10,000 = 40,000; SGST credit 25,000; '
        'cash ₹15,000\n'
        'Net GST payable in cash = ₹15,000. All credit is used up; total '
        'liability 1,40,000 − total credit 1,25,000 = 15,000.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_tax',
    chapter: 'GST: Input Tax Credit, Returns & Payment',
    text:
        'A manufacturer paid GST on: raw material ₹50,000; a car (5 seats) '
        'for the director ₹1,00,000; food for a staff party ₹5,000; '
        'machinery ₹30,000; construction of an office building ₹80,000; '
        'goods given as free samples ₹2,000. Find the eligible input tax '
        'credit.',
    marks: 5,
    problem: true,
    answer:
        '• Raw material: eligible, ₹50,000\n'
        '• Car for transporting people (13 seats or fewer), not used for '
        'further supply, passenger transport or training: blocked under '
        'section 17(5)\n'
        '• Food and beverages: blocked\n'
        '• Machinery: eligible, ₹30,000\n'
        '• Construction of an immovable property (other than plant and '
        'machinery) on own account: blocked\n'
        '• Free samples: blocked\n'
        'Eligible ITC = 50,000 + 30,000 = ₹80,000',
  ),
  DescriptiveQuestion(
    subjectId: 'i_tax',
    chapter: 'Customs Law',
    text:
        'Goods are imported by sea. FOB value US\$10,000; freight '
        'US\$1,500; insurance not known. Exchange rate notified by CBIC: ₹84 '
        'per US\$. Basic customs duty 10%, Social Welfare Surcharge 10% of '
        'BCD, IGST 18%. Find the assessable value and total duty.',
    marks: 8,
    problem: true,
    answer:
        'Assessable value (CIF)\n'
        '• FOB: 10,000\n'
        '• Freight: 1,500\n'
        '• Insurance, when not known: 1.125% of FOB = 112.50\n'
        '• CIF = US\$11,612.50 × 84 = ₹9,75,450\n'
        'Duties\n'
        '• BCD at 10% = 97,545\n'
        '• SWS at 10% of BCD = 9,754.50\n'
        '• Value for IGST = 9,75,450 + 97,545 + 9,754.50 = 10,82,749.50\n'
        '• IGST at 18% = 1,94,894.91\n'
        'Total duty = 97,545 + 9,754.50 + 1,94,894.91 = ₹3,02,194 (approx.)\n'
        'If freight were not known, 20% of FOB would be used.',
  ),
];
