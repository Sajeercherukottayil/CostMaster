import '../../../../models/question.dart';

const interFmMoreDescriptive = [
  // Introduction to Financial Management
  DescriptiveQuestion(
    subjectId: 'i_fm',
    chapter: 'Introduction to Financial Management',
    text: 'Explain the functions of a finance manager.',
    marks: 5,
    answer:
        '• Estimating the funds needed, for fixed assets and working '
        'capital.\n'
        '• Deciding the capital structure: the mix of equity and debt.\n'
        '• Choosing sources of funds and raising them at the lowest cost.\n'
        '• Investment decisions: evaluating projects with capital budgeting '
        'tools.\n'
        '• Dividend decisions: how much profit to pay out or retain.\n'
        '• Managing working capital: cash, receivables and inventory.\n'
        '• Financial control: budgets, ratio analysis and internal checks.\n'
        '• Managing risk and relations with banks and investors.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_fm',
    chapter: 'Introduction to Financial Management',
    text: 'What is the agency problem? How can it be reduced?',
    marks: 5,
    answer:
        'The agency problem arises when managers (agents) act in their '
        'own interest rather than in the interest of shareholders '
        '(principals), for example by spending on luxuries, avoiding risky '
        'but profitable projects, or building empires.\n'
        'Ways to reduce it:\n'
        '• Linking pay to performance, such as bonuses tied to share price '
        'and stock options.\n'
        '• Independent directors and an audit committee.\n'
        '• External audit and disclosure rules.\n'
        '• Monitoring by large shareholders and analysts.\n'
        '• The threat of takeover or removal of poor managers.\n'
        'These measures have costs, called agency costs.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_fm',
    chapter: 'Introduction to Financial Management',
    text:
        'Project A gives a profit of ₹10,000 now. Project B gives ₹12,000 '
        'after 2 years, with the same risk. Which project is better under '
        'profit maximisation, and which under wealth maximisation, at a '
        'discount rate of 10%?',
    marks: 4,
    problem: true,
    answer:
        '• Profit maximisation: B gives a larger profit (₹12,000), so B '
        'looks better.\n'
        '• Wealth maximisation: discount B\'s profit: 12,000 ÷ 1.21 = ₹9,917, '
        'which is less than ₹10,000 now.\n'
        'So A is better under wealth maximisation, because it considers the '
        'time value of money. This shows the weakness of profit '
        'maximisation.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_fm',
    chapter: 'Introduction to Financial Management',
    text:
        'Explain the trade-off between liquidity and profitability in '
        'financial management.',
    marks: 4,
    answer:
        '• Liquidity is the ability to meet obligations as they fall due. '
        'Holding more cash, stock and receivables improves liquidity.\n'
        '• But these assets earn little or nothing, so too much of them '
        'reduces profitability.\n'
        '• Too little liquidity raises the risk of default, lost discounts '
        'and damaged credit.\n'
        'The finance manager must keep enough liquidity for safety while '
        'investing surplus funds productively. Tools include cash budgets, '
        'credit policies and short-term investments.',
  ),

  // Cost of Capital
  DescriptiveQuestion(
    subjectId: 'i_fm',
    chapter: 'Cost of Capital',
    text:
        'A company\'s market values are: equity ₹12 crore (cost 15%), '
        'preference shares ₹2 crore (cost 10%) and debentures ₹6 crore '
        '(pre-tax cost 10%). The tax rate is 25%. Calculate the WACC.',
    marks: 5,
    problem: true,
    answer:
        '• Total capital = 12 + 2 + 6 = ₹20 crore\n'
        '• After-tax cost of debt = 10% × (1 − 0.25) = 7.5%\n'
        'Weighted costs:\n'
        '• Equity: 0.60 × 15% = 9.0%\n'
        '• Preference: 0.10 × 10% = 1.0%\n'
        '• Debt: 0.30 × 7.5% = 2.25%\n'
        'WACC = 12.25%',
  ),
  DescriptiveQuestion(
    subjectId: 'i_fm',
    chapter: 'Cost of Capital',
    text:
        'The risk-free rate is 7%, the market return 13% and a share\'s '
        'beta 1.5. Its current dividend is ₹4 and is expected to grow at 6%; '
        'the share price is ₹60. Find the cost of equity by CAPM and by the '
        'dividend growth model, and comment.',
    marks: 5,
    problem: true,
    answer:
        'CAPM:\n'
        '• ke = 7% + 1.5 × (13% − 7%) = 7% + 9% = 16%\n'
        'Dividend growth model:\n'
        '• D₁ = 4 × 1.06 = 4.24\n'
        '• ke = 4.24 ÷ 60 + 6% = 7.07% + 6% = 13.07%\n'
        'The two methods give different estimates because they rest on '
        'different assumptions. If CAPM is reliable, the share may be '
        'overpriced, since its expected return (13.07%) is below the '
        'required return (16%).',
  ),
  DescriptiveQuestion(
    subjectId: 'i_fm',
    chapter: 'Cost of Capital',
    text: 'Why is the cost of capital important in financial decisions?',
    marks: 4,
    answer:
        '• Investment decisions: it is the hurdle rate for discounting '
        'cash flows; projects must earn more than it.\n'
        '• Capital structure: comparing costs of sources helps choose a mix '
        'that minimises WACC.\n'
        '• Performance evaluation: measures such as EVA compare returns with '
        'the cost of capital.\n'
        '• Dividend and leasing decisions also depend on it.\n'
        '• Using the wrong rate can lead to accepting value-destroying '
        'projects or rejecting good ones.',
  ),

  // Leverage
  DescriptiveQuestion(
    subjectId: 'i_fm',
    chapter: 'Leverage',
    text:
        'A company needs ₹10,00,000. Plan A: all equity (₹10 shares). Plan '
        'B: 50% equity and 50% 10% debentures. Plan C: 50% equity and 50% 12% '
        'preference shares. EBIT is ₹2,00,000 and the tax rate 25%. '
        'Calculate EPS under each plan.',
    marks: 6,
    problem: true,
    answer:
        'Plan A (1,00,000 shares)\n'
        '• EAT = 2,00,000 × 0.75 = 1,50,000; EPS = ₹1.50\n'
        'Plan B (50,000 shares)\n'
        '• Interest = 50,000; EBT = 1,50,000; EAT = 1,12,500; EPS = ₹2.25\n'
        'Plan C (50,000 shares)\n'
        '• EAT = 1,50,000; less preference dividend 60,000 = 90,000; EPS = '
        '₹1.80\n'
        'Plan B gives the highest EPS, because interest is tax-deductible '
        'while preference dividend is not. It also carries the most '
        'financial risk.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_fm',
    chapter: 'Leverage',
    text:
        'Sales are ₹20 lakh, variable cost 60% of sales, fixed costs ₹4 '
        'lakh and interest ₹1 lakh. Calculate DOL, DFL and DCL. If sales '
        'rise by 15%, by how much will EPS rise? Verify.',
    marks: 6,
    problem: true,
    answer:
        '• Contribution = 20 × 40% = 8 lakh; EBIT = 4 lakh; EBT = 3 lakh\n'
        '• DOL = 8 ÷ 4 = 2\n'
        '• DFL = 4 ÷ 3 = 1.33\n'
        '• DCL = 8 ÷ 3 = 2.67\n'
        'If sales rise by 15%, EPS rises by 2.67 × 15% = 40%.\n'
        'Verification:\n'
        '• New contribution = 9.2 lakh; EBIT = 5.2 lakh; EBT = 4.2 lakh\n'
        '• EBT rises from 3 to 4.2 lakh = 40%, and with a constant tax rate '
        'EPS also rises by 40%.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_fm',
    chapter: 'Leverage',
    text:
        'Interest is ₹40,000, preference dividend ₹30,000 and the tax rate '
        '25%. Find the financial break-even point and explain its meaning.',
    marks: 4,
    problem: true,
    answer:
        '• Financial BEP = Interest + Preference dividend ÷ (1 − t)\n'
        '• = 40,000 + 30,000 ÷ 0.75 = 40,000 + 40,000 = ₹80,000\n'
        'Meaning: at EBIT of ₹80,000, profit after tax just covers the '
        'preference dividend, so EPS is zero. Below this, equity '
        'shareholders have negative earnings. The further EBIT is above it, '
        'the lower the financial risk.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_fm',
    chapter: 'Leverage',
    text:
        'Compare the Net Income, Net Operating Income and Modigliani-Miller '
        'approaches to capital structure.',
    marks: 5,
    answer:
        '• Net Income (NI) approach: the costs of debt and equity stay '
        'constant as debt rises. More debt lowers WACC and raises value, so '
        'the best structure is nearly all debt.\n'
        '• Net Operating Income (NOI) approach: WACC stays constant; as '
        'cheaper debt is added, the cost of equity rises just enough to '
        'offset it. Capital structure is irrelevant.\n'
        '• MM without taxes: like NOI, but proved by arbitrage. Value depends '
        'only on operating income and business risk.\n'
        '• MM with taxes: interest is tax-deductible, so value rises with '
        'debt by the present value of the tax shield.\n'
        'In practice, the traditional view holds: a moderate amount of debt '
        'lowers WACC, but too much raises it because of distress costs.',
  ),

  // Capital Budgeting
  DescriptiveQuestion(
    subjectId: 'i_fm',
    chapter: 'Capital Budgeting',
    text:
        'A new machine costs ₹5,00,000, with a 5-year life, no scrap value '
        'and straight line depreciation. It saves operating costs of '
        '₹1,80,000 a year. The old machine can be sold now for ₹50,000 '
        '(ignore its depreciation and tax on sale). The tax rate is 30% and '
        'the cost of capital 10% (5-year annuity factor 3.791). Should the '
        'machine be replaced?',
    marks: 6,
    problem: true,
    answer:
        '• Net investment = 5,00,000 − 50,000 = 4,50,000\n'
        '• Depreciation = 1,00,000 a year\n'
        '• Annual cash flow = (1,80,000 − 1,00,000) × 0.7 + 1,00,000 = '
        '56,000 + 1,00,000 = 1,56,000\n'
        '• PV of inflows = 1,56,000 × 3.791 = 5,91,396\n'
        '• NPV = 5,91,396 − 4,50,000 = ₹1,41,396\n'
        'NPV is positive, so the machine should be replaced.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_fm',
    chapter: 'Capital Budgeting',
    text:
        'A firm has ₹10 lakh to invest. Projects (indivisible): A costs ₹4 '
        'lakh, NPV ₹1.2 lakh; B ₹3 lakh, NPV ₹1.2 lakh; C ₹5 lakh, NPV ₹1.0 '
        'lakh; D ₹2 lakh, NPV ₹0.5 lakh. Which projects should be chosen?',
    marks: 5,
    problem: true,
    answer:
        'Profitability index (1 + NPV ÷ cost): A 1.30; B 1.40; C 1.20; D '
        '1.25\n'
        'Since projects are indivisible, test combinations within ₹10 lakh:\n'
        '• A + B + D: cost 9 lakh, NPV 2.9 lakh\n'
        '• B + C + D: cost 10 lakh, NPV 2.7 lakh\n'
        '• A + C: cost 9 lakh, NPV 2.2 lakh\n'
        'Choose A, B and D, with total NPV of ₹2.9 lakh. Ranking by PI (B, A, '
        'D, then C does not fit) gives the same answer here.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_fm',
    chapter: 'Capital Budgeting',
    text:
        'Explain the techniques used to allow for risk in capital '
        'budgeting.',
    marks: 5,
    answer:
        '• Risk-adjusted discount rate: add a risk premium to the '
        'discount rate for riskier projects.\n'
        '• Certainty equivalent: convert risky cash flows into certain '
        'amounts using coefficients, then discount at the risk-free rate.\n'
        '• Sensitivity analysis: change one variable at a time to see its '
        'effect on NPV.\n'
        '• Scenario analysis: compute NPV under best, expected and worst '
        'cases.\n'
        '• Simulation (Monte Carlo): generate many possible outcomes to get a '
        'distribution of NPV.\n'
        '• Decision trees: for sequential decisions with probabilities.\n'
        '• Shorter payback requirements for risky projects (a simple rule).',
  ),

  // Working Capital Management
  DescriptiveQuestion(
    subjectId: 'i_fm',
    chapter: 'Working Capital Management',
    text:
        'Estimate working capital: annual output and sales 60,000 units; '
        'cost per unit: material ₹40, labour ₹20, overheads ₹10; price ₹100. '
        'Raw material stock 1 month; WIP 0.5 month (material 100%, conversion '
        '50%); finished goods 1 month; debtors 2 months (at cost); creditors '
        '1 month; wages paid half a month in arrears; cash ₹50,000.',
    marks: 8,
    problem: true,
    answer:
        'Monthly output = 5,000 units.\n'
        'Current assets\n'
        '• Raw material: 5,000 × 40 = 2,00,000\n'
        '• WIP (2,500 units): 2,500 × (40 + 50% × 30) = 1,37,500\n'
        '• Finished goods: 5,000 × 70 = 3,50,000\n'
        '• Debtors at cost: 2 × 5,000 × 70 = 7,00,000\n'
        '• Cash: 50,000\n'
        '• Total = 14,37,500\n'
        'Current liabilities\n'
        '• Creditors: 1 month of material = 2,00,000\n'
        '• Wages outstanding: 5,000 × 20 × 0.5 = 50,000\n'
        '• Total = 2,50,000\n'
        'Net working capital = ₹11,87,500',
  ),
  DescriptiveQuestion(
    subjectId: 'i_fm',
    chapter: 'Working Capital Management',
    text:
        'Using the Miller-Orr model: minimum cash balance ₹50,000; cost per '
        'transaction ₹320; variance of daily cash flows ₹10,000 (in rupees '
        'squared); interest rate 0.03% a day. Find the spread, return point '
        'and upper limit.',
    marks: 5,
    problem: true,
    answer:
        'Spread = 3 × [(3/4 × Transaction cost × Variance) ÷ Daily '
        'interest rate]^(1/3)\n'
        '• (0.75 × 320 × 10,000) ÷ 0.0003 = 24,00,000 ÷ 0.0003 = '
        '8,00,00,00,000\n'
        '• Cube root = 2,000\n'
        '• Spread = 3 × 2,000 = ₹6,000\n'
        '• Return point = Lower limit + Spread ÷ 3 = 50,000 + 2,000 = '
        '₹52,000\n'
        '• Upper limit = 50,000 + 6,000 = ₹56,000\n'
        'If cash reaches ₹56,000, buy ₹4,000 of securities; if it falls to '
        '₹50,000, sell ₹2,000.',
  ),

  // Business Data Analytics
  DescriptiveQuestion(
    subjectId: 'i_fm',
    chapter: 'Business Data Analytics',
    text:
        'Explain the characteristics of big data, and give examples of its '
        'use in finance.',
    marks: 5,
    answer:
        'Characteristics (the Vs):\n'
        '• Volume: very large amounts of data.\n'
        '• Velocity: data generated and processed at high speed, often in '
        'real time.\n'
        '• Variety: structured, semi-structured and unstructured data.\n'
        '• Veracity: uncertain quality, which needs cleaning and checking.\n'
        '• Value: the business benefit from analysing it.\n'
        'Uses in finance:\n'
        '• Fraud detection by spotting unusual transaction patterns.\n'
        '• Credit scoring using wider data.\n'
        '• Algorithmic trading and risk monitoring.\n'
        '• Cash flow forecasting and customer analytics.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_fm',
    chapter: 'Business Data Analytics',
    text:
        'Daily sales (units) for five days are 12, 15, 11, 18 and 14. Find '
        'the mean, median and standard deviation, and comment.',
    marks: 4,
    problem: true,
    answer:
        '• Mean = 70 ÷ 5 = 14\n'
        '• Median: in order 11, 12, 14, 15, 18, so 14\n'
        '• Deviations from mean: −2, 1, −3, 4, 0; squares 4, 1, 9, 16, 0; '
        'total 30\n'
        '• Variance = 30 ÷ 5 = 6; standard deviation = √6 = 2.45\n'
        'Mean and median are equal, so the data are roughly symmetric. A '
        'standard deviation of about 2.5 units (CV 17.5%) shows moderate '
        'day-to-day variation.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_fm',
    chapter: 'Business Data Analytics',
    text:
        'Advertising spend (₹ lakh) of 1, 2, 3, 4 and 5 gave sales (₹ '
        'lakh) of 10, 12, 15, 16 and 17. Fit a regression line of sales on '
        'advertising and forecast sales at an advertising spend of ₹6 lakh.',
    marks: 6,
    problem: true,
    answer:
        '• Mean of x = 3; mean of y = 14\n'
        '• dx: −2, −1, 0, 1, 2; dy: −4, −2, 1, 2, 3\n'
        '• Σdx·dy = 8 + 2 + 0 + 2 + 6 = 18; Σdx² = 10\n'
        '• Slope b = 18 ÷ 10 = 1.8\n'
        '• Intercept a = 14 − 1.8 × 3 = 8.6\n'
        '• Line: Sales = 8.6 + 1.8 × Advertising\n'
        '• Forecast at 6: 8.6 + 10.8 = ₹19.4 lakh\n'
        'Caution: 6 is outside the observed range, so the forecast assumes '
        'the same relationship continues.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_fm',
    chapter: 'Business Data Analytics',
    text:
        'What are good practices in data visualisation? Which chart suits '
        'each common purpose?',
    marks: 4,
    answer:
        'Good practices:\n'
        '• Start with the question the chart must answer.\n'
        '• Keep it simple: remove clutter and unnecessary 3D effects.\n'
        '• Label axes and units clearly, and start bar axes at zero.\n'
        '• Use colour sparingly and consistently, with attention to '
        'accessibility.\n'
        'Chart choice:\n'
        '• Trend over time: line chart.\n'
        '• Comparing categories: bar or column chart.\n'
        '• Distribution: histogram or box plot.\n'
        '• Relationship between two variables: scatter plot.\n'
        '• Parts of a whole (few categories): stacked bar or pie chart.',
  ),
];
