import '../../../models/question.dart';

const interFmQuestions = [
  // Financial management
  Question(
    subjectId: 'i_fm',
    chapter: 'Introduction to Financial Management',
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
    chapter: 'Introduction to Financial Management',
    text: 'Shareholders\' wealth maximisation is measured by the:',
    options: [
      'Market price of the company\'s shares',
      'Book value of assets',
      'Accounting profit of the year',
      'Total sales',
    ],
    answerIndex: 0,
    explanation: 'Wealth maximisation aims to increase the market value of shares, '
        'which reflects risk and the timing of returns.',
  ),
  Question(
    subjectId: 'i_fm',
    chapter: 'Introduction to Financial Management',
    text: 'The three main decisions in financial management are:',
    options: [
      'Investment, financing and dividend decisions',
      'Pricing, purchasing and selling decisions',
      'Production, marketing and personnel decisions',
      'Audit, tax and legal decisions',
    ],
    answerIndex: 0,
    explanation: 'These decisions together determine the value of the firm.',
  ),
  Question(
    subjectId: 'i_fm',
    chapter: 'Introduction to Financial Management',
    text: 'A major criticism of profit maximisation as an objective is that '
        'it ignores:',
    options: ['Taxes', 'Sales', 'The time value of money and risk', 'Costs'],
    answerIndex: 2,
    explanation: 'Profit maximisation does not consider when returns are received or '
        'how risky they are.',
  ),
  Question(
    subjectId: 'i_fm',
    chapter: 'Introduction to Financial Management',
    text: 'The agency problem in financial management arises between:',
    options: [
      'Employees and trade unions',
      'Government and taxpayers',
      'Shareholders and managers',
      'Customers and suppliers',
    ],
    answerIndex: 2,
    explanation: 'Managers (agents) may pursue their own interests instead of '
        'maximising shareholders\' (principals\') wealth.',
  ),
  Question(
    subjectId: 'i_fm',
    chapter: 'Introduction to Financial Management',
    text: 'Time value of money means that:',
    options: [
      'Future cash flows are worth more than present ones',
      'Interest rates are always constant',
      'A rupee received today is worth more than a rupee received in the future',
      'Money loses all value over time',
    ],
    answerIndex: 2,
    explanation: 'Money available now can be invested to earn a return, so it is '
        'more valuable than the same amount later.',
  ),
  Question(
    subjectId: 'i_fm',
    chapter: 'Introduction to Financial Management',
    text: 'The investment decision in financial management relates to:',
    options: [
      'Deciding the mix of debt and equity',
      'Fixing employee salaries',
      'Deciding how much profit to distribute',
      'Choosing the assets in which funds will be invested',
    ],
    answerIndex: 3,
    explanation: 'Capital budgeting and working capital decisions are investment '
        'decisions.',
  ),
  Question(
    subjectId: 'i_fm',
    chapter: 'Introduction to Financial Management',
    text: 'The dividend decision concerns:',
    options: [
      'Which assets to buy',
      'How much of the profit to pay out and how much to retain',
      'How to price products',
      'How to raise debt',
    ],
    answerIndex: 1,
    explanation: 'Retained profits are an important source of finance.',
  ),
  Question(
    subjectId: 'i_fm',
    chapter: 'Introduction to Financial Management',
    text: 'Holding excess cash increases liquidity but reduces:',
    options: ['Solvency', 'Profitability', 'Share capital', 'Sales'],
    answerIndex: 1,
    explanation: 'Idle cash earns little or no return, which is the '
        'liquidity-profitability trade-off.',
  ),
  Question(
    subjectId: 'i_fm',
    chapter: 'Introduction to Financial Management',
    text: 'Financial management is mainly concerned with:',
    options: [
      'Marketing products',
      'Recording transactions',
      'Procurement and effective utilisation of funds',
      'Preparing tax returns',
    ],
    answerIndex: 2,
    explanation: 'Bookkeeping is part of accounting, not financial management.',
  ),
  Question(
    subjectId: 'i_fm',
    chapter: 'Cost of Capital',
    text: '10% debentures are issued at par and the tax rate is 30%. The '
        'after-tax cost of debt is:',
    options: ['10%', '3%', '13%', '7%'],
    answerIndex: 3,
    explanation: 'Kd = Interest rate × (1 − t) = 10% × 0.70 = 7%.',
  ),
  Question(
    subjectId: 'i_fm',
    chapter: 'Cost of Capital',
    text: 'Expected dividend (D₁) is ₹2, current share price is ₹40 and '
        'dividends grow at 5% a year. The cost of equity is:',
    options: ['10%', '5%', '15%', '7.5%'],
    answerIndex: 0,
    explanation: 'Gordon model: Ke = D₁/P₀ + g = 2/40 + 5% = 5% + 5% = 10%.',
  ),
  Question(
    subjectId: 'i_fm',
    chapter: 'Cost of Capital',
    text: 'Capital is 60% equity (cost 12%) and 40% debt (after-tax cost 7%). '
        'The weighted average cost of capital is:',
    options: ['9.5%', '10%', '19%', '12%'],
    answerIndex: 1,
    explanation: 'WACC = 0.60 × 12% + 0.40 × 7% = 7.2% + 2.8% = 10%.',
  ),
  Question(
    subjectId: 'i_fm',
    chapter: 'Cost of Capital',
    text: '10% irredeemable preference shares of ₹100 each are issued at ₹95. '
        'The cost of preference capital is approximately:',
    options: ['5.26%', '10.00%', '10.53%', '9.50%'],
    answerIndex: 2,
    explanation: 'Kp = Dividend ÷ Net proceeds = 10 ÷ 95 = 10.53%.',
  ),
  Question(
    subjectId: 'i_fm',
    chapter: 'Cost of Capital',
    text: 'Ignoring flotation costs, the cost of retained earnings is '
        'generally taken as equal to the:',
    options: [
      'Cost of equity capital',
      'Zero, since no payment is made',
      'Risk-free rate',
      'Cost of debt',
    ],
    answerIndex: 0,
    explanation: 'Retained earnings belong to equity shareholders, so they carry the '
        'opportunity cost of equity.',
  ),
  Question(
    subjectId: 'i_fm',
    chapter: 'Cost of Capital',
    text: 'Under CAPM, the risk-free rate is 6%, the beta is 1.2 and the '
        'market return is 11%. The cost of equity is:',
    options: ['13.2%', '11%', '7.2%', '12%'],
    answerIndex: 3,
    explanation: 'Ke = Rf + β (Rm − Rf) = 6 + 1.2 × (11 − 6) = 6 + 6 = 12%.',
  ),
  Question(
    subjectId: 'i_fm',
    chapter: 'Cost of Capital',
    text: 'A 10% debenture of ₹100 is issued at ₹95, redeemable at par after '
        '5 years. The tax rate is 30%. The approximate after-tax cost of '
        'debt is:',
    options: ['8.21%', '7.37%', '7.00%', '10.53%'],
    answerIndex: 0,
    explanation: 'Kd = [10 × (1 − 0.3) + (100 − 95) ÷ 5] ÷ [(100 + 95) ÷ 2] = 8 ÷ '
        '97.5 ≈ 8.21%.',
  ),
  Question(
    subjectId: 'i_fm',
    chapter: 'Cost of Capital',
    text: 'EPS is ₹5, the market price ₹50, and all earnings are paid out '
        'with no growth. Under the earnings yield approach, the cost of '
        'equity is:',
    options: ['20%', '5%', '50%', '10%'],
    answerIndex: 3,
    explanation: 'Ke = EPS ÷ Market price = 5 ÷ 50 = 10%.',
  ),
  Question(
    subjectId: 'i_fm',
    chapter: 'Cost of Capital',
    text: 'Flotation costs of a new issue of securities:',
    options: [
      'Reduce the cost of capital',
      'Are ignored for debt',
      'Increase the cost of capital',
      'Have no effect',
    ],
    answerIndex: 2,
    explanation: 'Net proceeds fall, so the effective cost rises.',
  ),
  Question(
    subjectId: 'i_fm',
    chapter: 'Cost of Capital',
    text: 'The marginal cost of capital is the:',
    options: [
      'Risk-free rate',
      'Cost of raising an additional rupee of capital',
      'Cost of equity only',
      'Average cost of existing capital',
    ],
    answerIndex: 1,
    explanation: 'It usually rises as more funds are raised.',
  ),
  Question(
    subjectId: 'i_fm',
    chapter: 'Leverage',
    text: 'Contribution is ₹5,00,000 and EBIT is ₹2,00,000. The degree of '
        'operating leverage is:',
    options: ['0.4', '2.5', '3.0', '1.5'],
    answerIndex: 1,
    explanation: 'DOL = Contribution / EBIT = 5,00,000 / 2,00,000 = 2.5.',
  ),
  Question(
    subjectId: 'i_fm',
    chapter: 'Leverage',
    text: 'EBIT is ₹2,00,000 and interest is ₹50,000. The degree of financial '
        'leverage is approximately:',
    options: ['4.00', '0.75', '1.33', '1.50'],
    answerIndex: 2,
    explanation: 'DFL = EBIT / EBT = 2,00,000 / 1,50,000 ≈ 1.33.',
  ),
  Question(
    subjectId: 'i_fm',
    chapter: 'Leverage',
    text: 'The degree of operating leverage is 2 and the degree of financial '
        'leverage is 1.5. The degree of combined leverage is:',
    options: ['1.33', '0.75', '3.5', '3'],
    answerIndex: 3,
    explanation: 'DCL = DOL × DFL = 2 × 1.5 = 3.',
  ),
  Question(
    subjectId: 'i_fm',
    chapter: 'Leverage',
    text: 'Financial leverage arises from the use of:',
    options: [
      'Variable costs',
      'Fixed operating costs',
      'Equity share capital only',
      'Funds carrying fixed financial charges, such as debt',
    ],
    answerIndex: 3,
    explanation: 'Fixed interest or preference dividend magnifies the effect of '
        'changes in EBIT on EPS.',
  ),
  Question(
    subjectId: 'i_fm',
    chapter: 'Leverage',
    text: 'EBIT is ₹3,00,000 and interest is ₹1,00,000. The degree of '
        'financial leverage is:',
    options: ['1.5', '0.67', '2', '3'],
    answerIndex: 0,
    explanation: 'DFL = EBIT ÷ (EBIT − Interest) = 3,00,000 ÷ 2,00,000 = 1.5.',
  ),
  Question(
    subjectId: 'i_fm',
    chapter: 'Leverage',
    text: 'Operating leverage arises from the presence of:',
    options: [
      'Interest on debt',
      'Preference dividend',
      'Fixed operating costs',
      'Taxes',
    ],
    answerIndex: 2,
    explanation: 'Fixed operating costs make EBIT change by a larger percentage than '
        'sales.',
  ),
  Question(
    subjectId: 'i_fm',
    chapter: 'Leverage',
    text: 'Sales are ₹10,00,000, variable costs ₹6,00,000 and fixed costs '
        '₹2,00,000. The degree of operating leverage is:',
    options: ['2', '1.5', '2.5', '4'],
    answerIndex: 0,
    explanation: 'Contribution = 4,00,000; EBIT = 2,00,000; DOL = 4,00,000 ÷ '
        '2,00,000 = 2.',
  ),
  Question(
    subjectId: 'i_fm',
    chapter: 'Leverage',
    text: 'The degree of financial leverage is 2. If EBIT increases by 10%, '
        'EPS will increase by:',
    options: ['5%', '10%', '12%', '20%'],
    answerIndex: 3,
    explanation: '% change in EPS = DFL × % change in EBIT = 2 × 10% = 20%.',
  ),
  Question(
    subjectId: 'i_fm',
    chapter: 'Leverage',
    text: 'The EBIT-EPS indifference point is the level of EBIT at which:',
    options: [
      'EPS is the same under two financing plans',
      'EBIT equals interest',
      'EPS is zero',
      'Operating leverage is one',
    ],
    answerIndex: 0,
    explanation: 'Above this point, the plan with more debt gives a higher EPS.',
  ),
  Question(
    subjectId: 'i_fm',
    chapter: 'Leverage',
    text: 'Trading on equity means:',
    options: [
      'Paying dividends',
      'Using borrowed funds at a fixed cost to increase returns to equity shareholders',
      'Issuing bonus shares',
      'Selling equity shares in the market',
    ],
    answerIndex: 1,
    explanation: 'It works only when the return on investment exceeds the cost of '
        'debt.',
  ),
  Question(
    subjectId: 'i_fm',
    chapter: 'Capital Budgeting',
    text: 'A project costs ₹1,00,000 and generates a uniform cash inflow of '
        '₹25,000 a year. The payback period is:',
    options: ['2.5 years', '25 years', '5 years', '4 years'],
    answerIndex: 3,
    explanation: 'Payback = Initial investment / Annual inflow = 1,00,000 / 25,000 = 4 years.',
  ),
  Question(
    subjectId: 'i_fm',
    chapter: 'Capital Budgeting',
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
    chapter: 'Capital Budgeting',
    text: 'A project costs ₹1,00,000 and the present value of its cash '
        'inflows is ₹1,15,000. Its NPV is:',
    options: ['₹15,000', '₹2,15,000', '₹1,15,000', '−₹15,000'],
    answerIndex: 0,
    explanation: 'NPV = PV of inflows − PV of outflows = 1,15,000 − 1,00,000 = '
        '₹15,000.',
  ),
  Question(
    subjectId: 'i_fm',
    chapter: 'Capital Budgeting',
    text: 'The present value of inflows is ₹1,20,000 and the initial outlay '
        'is ₹1,00,000. The profitability index is:',
    options: ['0.83', '20', '1.2', '2.2'],
    answerIndex: 2,
    explanation: 'PI = PV of inflows ÷ PV of outflows = 1,20,000 ÷ 1,00,000 = 1.2.',
  ),
  Question(
    subjectId: 'i_fm',
    chapter: 'Capital Budgeting',
    text: 'Under the NPV method, an independent project is accepted if:',
    options: [
      'NPV is negative',
      'The payback period is longer than its life',
      'NPV is positive',
      'IRR is below the cost of capital',
    ],
    answerIndex: 2,
    explanation: 'A positive NPV means the project earns more than the cost of '
        'capital and adds value.',
  ),
  Question(
    subjectId: 'i_fm',
    chapter: 'Capital Budgeting',
    text: 'A major limitation of the payback period method is that it:',
    options: [
      'Is hard to calculate',
      'Considers profitability over the full life',
      'Uses discounted cash flows',
      'Ignores cash flows after the payback period',
    ],
    answerIndex: 3,
    explanation: 'Payback ignores returns after recovery of the investment and, in '
        'its simple form, the time value of money.',
  ),
  Question(
    subjectId: 'i_fm',
    chapter: 'Capital Budgeting',
    text: 'Average annual profit is ₹20,000 and the average investment '
        '₹1,00,000. The accounting rate of return is:',
    options: ['5%', '20%', '2%', '10%'],
    answerIndex: 1,
    explanation: 'ARR = Average profit ÷ Average investment × 100 = 20%.',
  ),
  Question(
    subjectId: 'i_fm',
    chapter: 'Capital Budgeting',
    text: 'The discounted payback period differs from the simple payback '
        'period because it:',
    options: [
      'Is always shorter',
      'Considers the time value of money',
      'Uses accounting profits',
      'Ignores cash flows',
    ],
    answerIndex: 1,
    explanation: 'Cash flows are discounted before calculating the payback period.',
  ),
  Question(
    subjectId: 'i_fm',
    chapter: 'Capital Budgeting',
    text: 'When NPV and IRR give conflicting rankings for mutually exclusive '
        'projects, preference is generally given to:',
    options: ['Payback', 'ARR', 'IRR', 'NPV'],
    answerIndex: 3,
    explanation: 'NPV directly measures the increase in shareholders\' wealth.',
  ),
  Question(
    subjectId: 'i_fm',
    chapter: 'Capital Budgeting',
    text: 'A project costs ₹50,000 and generates ₹20,000 a year for 3 years. '
        'The payback period is:',
    options: ['1.5 years', '2 years', '3 years', '2.5 years'],
    answerIndex: 3,
    explanation: 'After 2 years ₹40,000 is recovered; the balance of ₹10,000 takes '
        'half of year 3.',
  ),
  Question(
    subjectId: 'i_fm',
    chapter: 'Working Capital Management',
    text: 'Raw material storage 30 days, WIP 15 days, finished goods 20 days, '
        'debtors 45 days and creditors 30 days. The net operating cycle is:',
    options: ['140 days', '110 days', '80 days', '65 days'],
    answerIndex: 2,
    explanation: 'Net operating cycle = 30 + 15 + 20 + 45 − 30 = 80 days.',
  ),
  Question(
    subjectId: 'i_fm',
    chapter: 'Working Capital Management',
    text: 'Selling trade receivables to a specialised agency for immediate cash '
        'is called:',
    options: ['Factoring', 'Leasing', 'Commercial paper', 'Bridge finance'],
    answerIndex: 0,
    explanation: 'In factoring, the factor buys the receivables, advances cash '
        'and usually manages collection.',
  ),
  Question(
    subjectId: 'i_fm',
    chapter: 'Working Capital Management',
    text: 'Gross working capital refers to:',
    options: [
      'Total current assets',
      'Long-term funds',
      'Total fixed assets',
      'Current assets minus current liabilities',
    ],
    answerIndex: 0,
    explanation: 'Gross working capital is investment in current assets; net working '
        'capital is current assets less current liabilities.',
  ),
  Question(
    subjectId: 'i_fm',
    chapter: 'Working Capital Management',
    text: 'Current assets are ₹5,00,000 and current liabilities ₹3,00,000. '
        'Net working capital is:',
    options: ['₹2,00,000', '₹8,00,000', '₹3,00,000', '₹5,00,000'],
    answerIndex: 0,
    explanation: 'Net working capital = 5,00,000 − 3,00,000 = ₹2,00,000.',
  ),
  Question(
    subjectId: 'i_fm',
    chapter: 'Working Capital Management',
    text: 'Credit terms are 2/10, net 30. Using a 365-day year, the '
        'approximate annual cost of not taking the cash discount is:',
    options: ['2.00%', '18.62%', '37.24%', '24.49%'],
    answerIndex: 2,
    explanation: 'Cost = 2/98 × 365/20 = 0.0204 × 18.25 ≈ 37.24%.',
  ),
  Question(
    subjectId: 'i_fm',
    chapter: 'Working Capital Management',
    text: 'Commercial paper is:',
    options: [
      'A long-term secured debenture',
      'An equity share',
      'A government bond',
      'A short-term unsecured promissory note issued by companies',
    ],
    answerIndex: 3,
    explanation: 'Commercial paper is a money market instrument issued at a discount '
        'by creditworthy companies.',
  ),
  Question(
    subjectId: 'i_fm',
    chapter: 'Working Capital Management',
    text: 'The Baumol model is used to determine the:',
    options: [
      'Optimum credit period',
      'Optimum cash balance',
      'Economic order quantity of inventory',
      'Cost of equity',
    ],
    answerIndex: 1,
    explanation: 'It applies EOQ logic to cash, balancing holding and transaction '
        'costs.',
  ),
  Question(
    subjectId: 'i_fm',
    chapter: 'Working Capital Management',
    text: 'Permanent working capital is the:',
    options: [
      'Cash held for emergencies only',
      'Minimum level of current assets needed throughout the year',
      'Seasonal increase in current assets',
      'Investment in fixed assets',
    ],
    answerIndex: 1,
    explanation: 'Temporary working capital varies with seasonal demand.',
  ),
  Question(
    subjectId: 'i_fm',
    chapter: 'Working Capital Management',
    text: 'An aggressive working capital financing policy uses:',
    options: [
      'More short-term funds to finance current assets',
      'No external funds',
      'Only long-term funds',
      'Only equity',
    ],
    answerIndex: 0,
    explanation: 'It lowers cost but increases liquidity risk.',
  ),
  Question(
    subjectId: 'i_fm',
    chapter: 'Working Capital Management',
    text: 'Treasury bills in India are issued by the:',
    options: [
      'RBI on behalf of the Government of India',
      'SEBI',
      'Commercial banks',
      'Companies',
    ],
    answerIndex: 0,
    explanation: 'They are short-term government securities issued at a discount.',
  ),

  // Business data analytics
  Question(
    subjectId: 'i_fm',
    chapter: 'Business Data Analytics',
    text: 'Which is NOT one of the original "3 Vs" of big data?',
    options: ['Volume', 'Velocity', 'Variety', 'Validity'],
    answerIndex: 3,
    explanation: 'The original three Vs are Volume, Velocity and Variety. '
        'Veracity and Value were added in later models.',
  ),
  Question(
    subjectId: 'i_fm',
    chapter: 'Business Data Analytics',
    text: 'Data on the gender of survey respondents is an example of:',
    options: ['Ratio data', 'Interval data', 'Nominal data', 'Continuous data'],
    answerIndex: 2,
    explanation: 'Nominal data are categories with no natural order.',
  ),
  Question(
    subjectId: 'i_fm',
    chapter: 'Business Data Analytics',
    text: 'Which chart is best for showing the trend of monthly sales over two '
        'years?',
    options: ['Pie chart', 'Line chart', 'Scatter plot', 'Histogram'],
    answerIndex: 1,
    explanation: 'Line charts show change over time. Pie charts show parts of a '
        'whole and scatter plots show relationships between two variables.',
  ),
  Question(
    subjectId: 'i_fm',
    chapter: 'Business Data Analytics',
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
    chapter: 'Business Data Analytics',
    text: 'Removing duplicates, correcting errors and filling missing values '
        'before analysis is called:',
    options: ['Data mining', 'Data cleaning', 'Data visualisation', 'Data warehousing'],
    answerIndex: 1,
    explanation: 'Data cleaning (cleansing) improves data quality so that the '
        'analysis is reliable.',
  ),
  Question(
    subjectId: 'i_fm',
    chapter: 'Business Data Analytics',
    text: 'Data stored in rows and columns in a predefined format, such as a '
        'spreadsheet table, is:',
    options: [
      'Metadata',
      'Semi-structured data',
      'Unstructured data',
      'Structured data',
    ],
    answerIndex: 3,
    explanation: 'Structured data follows a fixed schema; emails, images and videos '
        'are unstructured.',
  ),
  Question(
    subjectId: 'i_fm',
    chapter: 'Business Data Analytics',
    text: 'A dashboard is mainly used to:',
    options: [
      'Store raw data',
      'Encrypt files',
      'Display key metrics visually at a glance',
      'Write programs',
    ],
    answerIndex: 2,
    explanation: 'Dashboards bring together charts and KPIs so that users can '
        'monitor performance quickly.',
  ),
  Question(
    subjectId: 'i_fm',
    chapter: 'Business Data Analytics',
    text: 'In a spreadsheet, the function used to find the arithmetic mean '
        'is:',
    options: ['COUNT', 'AVERAGE', 'SUM', 'MEDIAN'],
    answerIndex: 1,
    explanation: 'AVERAGE returns the arithmetic mean of a range of cells.',
  ),
  Question(
    subjectId: 'i_fm',
    chapter: 'Business Data Analytics',
    text: 'An outlier is:',
    options: [
      'The middle value',
      'The most frequent value',
      'An observation that is far away from the other values',
      'A missing value',
    ],
    answerIndex: 2,
    explanation: 'Outliers can distort the mean and should be investigated.',
  ),
  Question(
    subjectId: 'i_fm',
    chapter: 'Business Data Analytics',
    text: 'Diagnostic analytics answers the question:',
    options: [
      'What will happen?',
      'Why did it happen?',
      'What should we do?',
      'What happened?',
    ],
    answerIndex: 1,
    explanation: 'Descriptive analytics answers what happened; predictive what will '
        'happen; prescriptive what to do.',
  ),
];
