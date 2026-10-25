import '../../../../models/question.dart';

const interFmProblems = [
  DescriptiveQuestion(
    subjectId: 'i_fm',
    chapter: 'Introduction to Financial Management',
    text:
        'Profit after tax is ₹20,00,000, preference dividend ₹2,00,000, '
        'and there are 3,00,000 equity shares. Find EPS. If the market '
        'applies a P/E ratio of 15, what is the share price? If a new '
        'project raises EPS to ₹6.50 but the P/E falls to 12 because of '
        'higher risk, should it be taken under wealth maximisation?',
    marks: 5,
    problem: true,
    answer:
        '• EPS = (20,00,000 − 2,00,000) ÷ 3,00,000 = ₹6\n'
        '• Share price = EPS × P/E = 6 × 15 = ₹90\n'
        'With the project:\n'
        '• Share price = 6.50 × 12 = ₹78\n'
        'Profit (EPS) rises, but the share price falls from ₹90 to ₹78, so '
        'shareholders\' wealth falls. Under wealth maximisation, the project '
        'should be rejected. This shows why profit alone is a poor goal.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_fm',
    chapter: 'Cost of Capital',
    text:
        '(a) A company just paid a dividend of ₹5, which is expected to '
        'grow at 6% a year. The share price is ₹106. Find the cost of '
        'equity. (b) Using CAPM, find the cost of equity if the risk-free '
        'rate is 7%, beta is 1.2 and the market return is 13%.',
    marks: 5,
    problem: true,
    answer:
        '(a) Dividend growth model\n'
        '• Next dividend D₁ = 5 × 1.06 = ₹5.30\n'
        '• kₑ = D₁ ÷ P₀ + g = 5.30 ÷ 106 + 6% = 5% + 6% = 11%\n'
        '(b) CAPM\n'
        '• kₑ = Rf + β (Rm − Rf) = 7% + 1.2 × (13% − 7%) = 7% + 7.2% = '
        '14.2%',
  ),
  DescriptiveQuestion(
    subjectId: 'i_fm',
    chapter: 'Cost of Capital',
    text:
        'A company issues 10% debentures of ₹100 at ₹95, redeemable at par '
        'after 5 years. The tax rate is 30%. Find the after-tax cost of debt '
        'using the approximation method.',
    marks: 4,
    problem: true,
    answer:
        'k_d = [I (1 − t) + (RV − NP) ÷ n] ÷ [(RV + NP) ÷ 2]\n'
        '• Interest after tax = 10 × (1 − 0.30) = 7\n'
        '• Discount spread per year = (100 − 95) ÷ 5 = 1\n'
        '• Average amount = (100 + 95) ÷ 2 = 97.5\n'
        '• k_d = (7 + 1) ÷ 97.5 = 8.21%',
  ),
  DescriptiveQuestion(
    subjectId: 'i_fm',
    chapter: 'Leverage',
    text:
        'A company needs ₹10,00,000. Plan A: all equity (1,00,000 shares '
        'of ₹10). Plan B: ₹5,00,000 equity (50,000 shares) and ₹5,00,000 '
        'of 10% debt. Tax is 30%. Find the EBIT at which EPS is the same, '
        'and the EPS under each plan at EBIT of ₹2,00,000.',
    marks: 6,
    problem: true,
    answer:
        'Indifference point:\n'
        '• (EBIT × 0.7) ÷ 1,00,000 = [(EBIT − 50,000) × 0.7] ÷ 50,000\n'
        '• EBIT = 2 (EBIT − 50,000), so EBIT = ₹1,00,000\n'
        '• EPS at this point = 1,00,000 × 0.7 ÷ 1,00,000 = ₹0.70 under both\n'
        'At EBIT of ₹2,00,000:\n'
        '• Plan A: 2,00,000 × 0.7 ÷ 1,00,000 = ₹1.40\n'
        '• Plan B: (2,00,000 − 50,000) × 0.7 ÷ 50,000 = ₹2.10\n'
        'Above the indifference point, debt financing gives a higher EPS.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_fm',
    chapter: 'Capital Budgeting',
    text:
        'A project costs ₹1,00,000 and gives cash inflows of ₹30,000, '
        '₹40,000, ₹50,000 and ₹20,000 over 4 years. The cost of capital is '
        '10% (PV factors 0.9091, 0.8264, 0.7513, 0.6830). Find the payback '
        'period, NPV and profitability index.',
    marks: 6,
    problem: true,
    answer:
        'Payback period\n'
        '• After 2 years: 30,000 + 40,000 = 70,000 recovered\n'
        '• Remaining 30,000 out of year 3\'s 50,000 = 0.6 year\n'
        '• Payback = 2.6 years\n'
        'NPV\n'
        '• PV of inflows = 27,273 + 33,056 + 37,565 + 13,660 = 1,11,554\n'
        '• NPV = 1,11,554 − 1,00,000 = ₹11,554\n'
        'Profitability index = 1,11,554 ÷ 1,00,000 = 1.12\n'
        'NPV is positive and PI is above 1, so the project is acceptable.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_fm',
    chapter: 'Capital Budgeting',
    text:
        'A project costs ₹1,00,000 and gives ₹30,000 a year for 5 years. '
        'The annuity factor for 5 years is 3.3522 at 15% and 3.2743 at 16%. '
        'Find the IRR.',
    marks: 5,
    problem: true,
    answer:
        '• Required factor = 1,00,000 ÷ 30,000 = 3.3333\n'
        '• It lies between 15% (3.3522) and 16% (3.2743)\n'
        'By interpolation:\n'
        '• IRR = 15% + (3.3522 − 3.3333) ÷ (3.3522 − 3.2743) × 1% = 15% + '
        '0.0189 ÷ 0.0779 = 15.24%\n'
        'Accept the project if the cost of capital is below 15.24%.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_fm',
    chapter: 'Working Capital Management',
    text:
        'Using a 360-day year: raw material consumed ₹3,60,000, average raw '
        'material stock ₹60,000; cost of production ₹6,00,000, average WIP '
        '₹25,000; cost of goods sold ₹7,20,000, average finished goods '
        '₹80,000; credit sales ₹9,00,000, average debtors ₹1,50,000; credit '
        'purchases ₹3,60,000, average creditors ₹45,000. Find the operating '
        'cycle.',
    marks: 6,
    problem: true,
    answer:
        '• Raw material period = 60,000 ÷ 3,60,000 × 360 = 60 days\n'
        '• WIP period = 25,000 ÷ 6,00,000 × 360 = 15 days\n'
        '• Finished goods period = 80,000 ÷ 7,20,000 × 360 = 40 days\n'
        '• Debtors period = 1,50,000 ÷ 9,00,000 × 360 = 60 days\n'
        '• Creditors period = 45,000 ÷ 3,60,000 × 360 = 45 days\n'
        'Gross operating cycle = 60 + 15 + 40 + 60 = 175 days\n'
        'Net operating cycle = 175 − 45 = 130 days',
  ),
  DescriptiveQuestion(
    subjectId: 'i_fm',
    chapter: 'Working Capital Management',
    text:
        'Sales are ₹10,00,000 on 30 days\' credit. Extending credit to 60 '
        'days would add ₹2,00,000 of sales, with bad debts of 5% on the '
        'extra sales. Variable cost is 75% of sales and the cost of funds is '
        '12%. Use a 360-day year and value debtors at cost. Should credit be '
        'extended?',
    marks: 6,
    problem: true,
    answer:
        '• Extra contribution = 2,00,000 × 25% = 50,000\n'
        '• Extra bad debts = 2,00,000 × 5% = (10,000)\n'
        'Investment in debtors at variable cost:\n'
        '• Present: 10,00,000 × 30/360 × 75% = 62,500\n'
        '• Proposed: 12,00,000 × 60/360 × 75% = 1,50,000\n'
        '• Increase = 87,500; cost of funds = 87,500 × 12% = (10,500)\n'
        'Net gain = 50,000 − 10,000 − 10,500 = ₹29,500\n'
        'Extend the credit period, since it increases profit.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_fm',
    chapter: 'Working Capital Management',
    text:
        'Using the Baumol model, find the optimal cash balance: annual cash '
        'requirement ₹36,00,000; cost per conversion of securities ₹200; '
        'interest on securities 10%.',
    marks: 4,
    problem: true,
    answer:
        '• Optimal cash = √(2 × Annual requirement × Cost per '
        'transaction ÷ Interest rate)\n'
        '• = √(2 × 36,00,000 × 200 ÷ 0.10) = √1,44,00,00,00,000 = ₹1,20,000\n'
        '• Number of conversions = 36,00,000 ÷ 1,20,000 = 30 a year\n'
        '• Conversion cost = 30 × 200 = 6,000; holding cost = 60,000 × 10% '
        '= 6,000; total ₹12,000',
  ),
  DescriptiveQuestion(
    subjectId: 'i_fm',
    chapter: 'Business Data Analytics',
    text:
        'Monthly sales (units) for 5 months are 100, 120, 110, 130, 140. '
        '(a) Forecast month 6 using a 3-month moving average. (b) Using '
        'exponential smoothing with α = 0.3, the forecast for month 5 was '
        '125. Forecast month 6.',
    marks: 4,
    problem: true,
    answer:
        '(a) 3-month moving average = (110 + 130 + 140) ÷ 3 = 126.67 '
        'units\n'
        '(b) Exponential smoothing: F₆ = F₅ + α (A₅ − F₅) = 125 + 0.3 × '
        '(140 − 125) = 125 + 4.5 = 129.5 units\n'
        'A higher α gives more weight to recent data and reacts faster to '
        'change.',
  ),
];
