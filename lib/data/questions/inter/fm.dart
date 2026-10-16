import '../../../models/question.dart';

const interFmQuestions = [
  // Financial management
  Question(
    subjectId: 'i_fm',
    text: 'The most widely accepted objective of financial management is:',
    options: [
      'Profit maximisation',
      'Sales maximisation',
      'Wealth (shareholder value) maximisation',
      'Minimising tax',
    ],
    answerIndex: 2,
    explanation: 'Wealth maximisation considers the time value of money and risk, '
        'which profit maximisation ignores.',
  ),
  Question(
    subjectId: 'i_fm',
    text: '10% debentures are issued at par and the tax rate is 30%. The '
        'after-tax cost of debt is:',
    options: ['10%', '3%', '13%', '7%'],
    answerIndex: 3,
    explanation: 'Kd = Interest rate × (1 − t) = 10% × 0.70 = 7%.',
  ),
  Question(
    subjectId: 'i_fm',
    text: 'Expected dividend (D₁) is ₹2, current share price is ₹40 and '
        'dividends grow at 5% a year. The cost of equity is:',
    options: ['10%', '5%', '15%', '7.5%'],
    answerIndex: 0,
    explanation: 'Gordon model: Ke = D₁/P₀ + g = 2/40 + 5% = 5% + 5% = 10%.',
  ),
  Question(
    subjectId: 'i_fm',
    text: 'Capital is 60% equity (cost 12%) and 40% debt (after-tax cost 7%). '
        'The weighted average cost of capital is:',
    options: ['9.5%', '10%', '19%', '12%'],
    answerIndex: 1,
    explanation: 'WACC = 0.60 × 12% + 0.40 × 7% = 7.2% + 2.8% = 10%.',
  ),
  Question(
    subjectId: 'i_fm',
    text: 'Contribution is ₹5,00,000 and EBIT is ₹2,00,000. The degree of '
        'operating leverage is:',
    options: ['0.4', '2.5', '3.0', '1.5'],
    answerIndex: 1,
    explanation: 'DOL = Contribution / EBIT = 5,00,000 / 2,00,000 = 2.5.',
  ),
  Question(
    subjectId: 'i_fm',
    text: 'EBIT is ₹2,00,000 and interest is ₹50,000. The degree of financial '
        'leverage is approximately:',
    options: ['4.00', '0.75', '1.33', '1.50'],
    answerIndex: 2,
    explanation: 'DFL = EBIT / EBT = 2,00,000 / 1,50,000 ≈ 1.33.',
  ),
  Question(
    subjectId: 'i_fm',
    text: 'A project costs ₹1,00,000 and generates a uniform cash inflow of '
        '₹25,000 a year. The payback period is:',
    options: ['2.5 years', '25 years', '5 years', '4 years'],
    answerIndex: 3,
    explanation: 'Payback = Initial investment / Annual inflow = 1,00,000 / 25,000 = 4 years.',
  ),
  Question(
    subjectId: 'i_fm',
    text: 'The internal rate of return (IRR) is the discount rate at which:',
    options: [
      'NPV is maximum',
      'NPV is zero',
      'Payback equals project life',
      'Profitability index is 2',
    ],
    answerIndex: 1,
    explanation: 'At the IRR, the present value of inflows equals the present '
        'value of outflows, so NPV = 0.',
  ),
  Question(
    subjectId: 'i_fm',
    text: 'Raw material storage 30 days, WIP 15 days, finished goods 20 days, '
        'debtors 45 days and creditors 30 days. The net operating cycle is:',
    options: ['140 days', '110 days', '80 days', '65 days'],
    answerIndex: 2,
    explanation: 'Net operating cycle = 30 + 15 + 20 + 45 − 30 = 80 days.',
  ),
  Question(
    subjectId: 'i_fm',
    text: 'Selling trade receivables to a specialised agency for immediate cash '
        'is called:',
    options: ['Factoring', 'Leasing', 'Commercial paper', 'Bridge finance'],
    answerIndex: 0,
    explanation: 'In factoring, the factor buys the receivables, advances cash '
        'and usually manages collection.',
  ),

  // Business data analytics
  Question(
    subjectId: 'i_fm',
    text: 'Which is NOT one of the original "3 Vs" of big data?',
    options: ['Volume', 'Velocity', 'Variety', 'Validity'],
    answerIndex: 3,
    explanation: 'The original three Vs are Volume, Velocity and Variety. '
        'Veracity and Value were added in later models.',
  ),
  Question(
    subjectId: 'i_fm',
    text: 'Data on the gender of survey respondents is an example of:',
    options: ['Ratio data', 'Interval data', 'Nominal data', 'Continuous data'],
    answerIndex: 2,
    explanation: 'Nominal data are categories with no natural order.',
  ),
  Question(
    subjectId: 'i_fm',
    text: 'Which chart is best for showing the trend of monthly sales over two '
        'years?',
    options: ['Pie chart', 'Line chart', 'Scatter plot', 'Histogram'],
    answerIndex: 1,
    explanation: 'Line charts show change over time. Pie charts show parts of a '
        'whole and scatter plots show relationships between two variables.',
  ),
  Question(
    subjectId: 'i_fm',
    text: 'Analytics that uses historical data to forecast future outcomes is:',
    options: [
      'Descriptive analytics',
      'Diagnostic analytics',
      'Predictive analytics',
      'Prescriptive analytics',
    ],
    answerIndex: 2,
    explanation: 'Descriptive = what happened, diagnostic = why, predictive = '
        'what will happen, prescriptive = what should be done.',
  ),
  Question(
    subjectId: 'i_fm',
    text: 'Removing duplicates, correcting errors and filling missing values '
        'before analysis is called:',
    options: ['Data mining', 'Data cleaning', 'Data visualisation', 'Data warehousing'],
    answerIndex: 1,
    explanation: 'Data cleaning (cleansing) improves data quality so that the '
        'analysis is reliable.',
  ),
];
