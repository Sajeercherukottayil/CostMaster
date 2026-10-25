import '../../../../models/question.dart';

const interFmMoreQuestions = [
  // Introduction to Financial Management
  Question(
    subjectId: 'i_fm',
    chapter: 'Introduction to Financial Management',
    text: 'The financing decision in financial management is about:',
    options: [
      'Which assets to buy',
      'The mix of debt and equity used to fund the business',
      'How much dividend to pay',
      'Managing inventory',
    ],
    answerIndex: 1,
    explanation:
        'It decides the capital structure, balancing cost of funds '
        'with financial risk.',
  ),
  Question(
    subjectId: 'i_fm',
    chapter: 'Introduction to Financial Management',
    text:
        'Costs of audits and incentive schemes used to align managers\' '
        'interests with shareholders\' are called:',
    options: [
      'Flotation costs',
      'Agency costs',
      'Opportunity costs',
      'Sunk costs',
    ],
    answerIndex: 1,
    explanation:
        'Agency costs include monitoring, bonding and the loss from '
        'decisions not in shareholders\' interest.',
  ),
  Question(
    subjectId: 'i_fm',
    chapter: 'Introduction to Financial Management',
    text: 'The risk-return trade-off means that:',
    options: [
      'Higher risk is accepted only for a higher expected return',
      'Low risk always gives high return',
      'Risk and return are unrelated',
      'All investments give the same return',
    ],
    answerIndex: 0,
    explanation: 'Investors demand compensation for bearing extra risk.',
  ),
  Question(
    subjectId: 'i_fm',
    chapter: 'Introduction to Financial Management',
    text:
        'In a large company, managing cash, banking relations and raising '
        'funds is usually the job of the:',
    options: [
      'Controller',
      'Treasurer',
      'Internal auditor',
      'Company secretary',
    ],
    answerIndex: 1,
    explanation:
        'The controller handles accounting, reporting, budgeting and '
        'tax.',
  ),
  Question(
    subjectId: 'i_fm',
    chapter: 'Introduction to Financial Management',
    text: 'Capital budgeting decisions are critical mainly because they:',
    options: [
      'Are small and frequent',
      'Involve large sums, are long-term and are hard to reverse',
      'Affect only the current year',
      'Need no forecasting',
    ],
    answerIndex: 1,
    explanation:
        'A wrong investment decision can affect the firm for many '
        'years.',
  ),
  Question(
    subjectId: 'i_fm',
    chapter: 'Introduction to Financial Management',
    text: 'Under modern finance, the value of a firm is the:',
    options: [
      'Book value of its assets',
      'Present value of its expected future cash flows',
      'Total sales',
      'Paid-up capital',
    ],
    answerIndex: 1,
    explanation:
        'Decisions that raise the present value of cash flows create '
        'wealth for shareholders.',
  ),
  Question(
    subjectId: 'i_fm',
    chapter: 'Introduction to Financial Management',
    text:
        'Shareholders may favour riskier projects than lenders would like, '
        'because:',
    options: [
      'Lenders share in all the gains',
      'Shareholders get the upside, while lenders\' return is fixed',
      'Lenders control the company',
      'Interest is paid only on profits',
    ],
    answerIndex: 1,
    explanation:
        'This shareholder-lender conflict is why lenders impose loan '
        'covenants.',
  ),
  Question(
    subjectId: 'i_fm',
    chapter: 'Introduction to Financial Management',
    text:
        'Legal fees and loss of customers when a firm nears bankruptcy are '
        'examples of:',
    options: [
      'Agency costs',
      'Financial distress costs',
      'Opportunity costs',
      'Flotation costs',
    ],
    answerIndex: 1,
    explanation: 'Distress costs limit how much debt a firm should use.',
  ),
  Question(
    subjectId: 'i_fm',
    chapter: 'Introduction to Financial Management',
    text: 'Investment decisions in finance are evaluated using:',
    options: [
      'Accounting profits only',
      'Cash flows, adjusted for timing and risk',
      'Sales growth only',
      'Number of employees',
    ],
    answerIndex: 1,
    explanation:
        'Cash flows, not accounting profits, determine value. '
        'Depreciation, for example, is not a cash flow.',
  ),
  Question(
    subjectId: 'i_fm',
    chapter: 'Introduction to Financial Management',
    text: 'Which is a source of long-term finance?',
    options: [
      'Trade credit',
      'Term loans from financial institutions',
      'Bank overdraft',
      'Commercial paper',
    ],
    answerIndex: 1,
    explanation:
        'Equity, preference shares, debentures and term loans are '
        'long-term sources. The others are short-term.',
  ),

  // Cost of Capital
  Question(
    subjectId: 'i_fm',
    chapter: 'Cost of Capital',
    text:
        '12% debentures are issued at par and the tax rate is 25%. The '
        'after-tax cost of debt is:',
    options: ['12%', '9%', '3%', '16%'],
    answerIndex: 1,
    explanation: 'kd = 12% × (1 − 0.25) = 9%.',
  ),
  Question(
    subjectId: 'i_fm',
    chapter: 'Cost of Capital',
    text:
        'The expected dividend is ₹3, the share price ₹50 and growth 4% a '
        'year. The cost of equity is:',
    options: ['6%', '10%', '7%', '14%'],
    answerIndex: 1,
    explanation: 'ke = D₁ ÷ P₀ + g = 3 ÷ 50 + 4% = 6% + 4% = 10%.',
  ),
  Question(
    subjectId: 'i_fm',
    chapter: 'Cost of Capital',
    text: 'A share with a beta greater than 1 is:',
    options: [
      'Less volatile than the market',
      'More volatile than the market',
      'Risk-free',
      'Uncorrelated with the market',
    ],
    answerIndex: 1,
    explanation:
        'Beta measures sensitivity to market movements. A beta of 1.5 '
        'moves about 1.5 times as much as the market.',
  ),
  Question(
    subjectId: 'i_fm',
    chapter: 'Cost of Capital',
    text:
        'For calculating WACC, weights based on market values are generally '
        'preferred because they:',
    options: [
      'Are always lower',
      'Reflect the current cost of raising funds',
      'Are found in the balance sheet',
      'Ignore equity',
    ],
    answerIndex: 1,
    explanation:
        'Book values reflect history, not the current value of '
        'investors\' claims.',
  ),
  Question(
    subjectId: 'i_fm',
    chapter: 'Cost of Capital',
    text:
        '9% redeemable preference shares of ₹100 are issued at ₹96, '
        'redeemable at par after 4 years. The approximate cost of preference '
        'capital is:',
    options: ['9%', '10.2%', '9.4%', '11%'],
    answerIndex: 1,
    explanation:
        'kp = [9 + (100 − 96) ÷ 4] ÷ [(100 + 96) ÷ 2] = 10 ÷ 98 = '
        '10.2%.',
  ),
  Question(
    subjectId: 'i_fm',
    chapter: 'Cost of Capital',
    text:
        'The expected dividend is ₹2, the share price ₹40, flotation cost '
        '5% of price and growth 5%. The cost of new equity is about:',
    options: ['10%', '10.26%', '5.26%', '15%'],
    answerIndex: 1,
    explanation:
        'Net proceeds = 40 × 95% = 38. ke = 2 ÷ 38 + 5% = 5.26% + 5% '
        '= 10.26%.',
  ),
  Question(
    subjectId: 'i_fm',
    chapter: 'Cost of Capital',
    text: 'Systematic risk is:',
    options: [
      'Risk that can be removed by diversification',
      'Market-wide risk that cannot be diversified away',
      'Risk specific to one company',
      'Zero for most shares',
    ],
    answerIndex: 1,
    explanation:
        'Only systematic risk is rewarded in CAPM, and beta measures '
        'it.',
  ),
  Question(
    subjectId: 'i_fm',
    chapter: 'Cost of Capital',
    text: 'A project\'s "hurdle rate" is:',
    options: [
      'The bank rate',
      'The minimum required rate of return, usually the cost of capital',
      'The inflation rate',
      'The IRR of the project',
    ],
    answerIndex: 1,
    explanation: 'Projects must earn at least the hurdle rate to add value.',
  ),
  Question(
    subjectId: 'i_fm',
    chapter: 'Cost of Capital',
    text:
        'The cost of equity is normally higher than the cost of debt '
        'because:',
    options: [
      'Equity holders face more risk and dividends are not tax-deductible',
      'Equity is easier to raise',
      'Debt has no cost',
      'Equity is always issued at a premium',
    ],
    answerIndex: 0,
    explanation:
        'Shareholders are paid last and get no fixed return, so they '
        'demand more.',
  ),
  Question(
    subjectId: 'i_fm',
    chapter: 'Cost of Capital',
    text:
        'Equity of ₹6 lakh costs 14%, preference capital of ₹1 lakh costs '
        '10%, and debt of ₹3 lakh costs 8% after tax. WACC is:',
    options: ['10.4%', '11.8%', '12%', '10%'],
    answerIndex: 1,
    explanation:
        'WACC = 0.6 × 14% + 0.1 × 10% + 0.3 × 8% = 8.4% + 1% + 2.4% '
        '= 11.8%.',
  ),

  // Leverage
  Question(
    subjectId: 'i_fm',
    chapter: 'Leverage',
    text: 'DOL is 2.5 and DFL is 1.6. The degree of combined leverage is:',
    options: ['4.1', '4', '0.9', '1.56'],
    answerIndex: 1,
    explanation: 'DCL = DOL × DFL = 2.5 × 1.6 = 4.',
  ),
  Question(
    subjectId: 'i_fm',
    chapter: 'Leverage',
    text:
        'The degree of combined leverage is 3. If sales rise by 10%, EPS '
        'will rise by:',
    options: ['3%', '10%', '30%', '13%'],
    answerIndex: 2,
    explanation: '% change in EPS = DCL × % change in sales = 3 × 10% = 30%.',
  ),
  Question(
    subjectId: 'i_fm',
    chapter: 'Leverage',
    text:
        'A firm with no fixed operating costs has a degree of operating '
        'leverage of:',
    options: ['0', '1', 'Infinity', '2'],
    answerIndex: 1,
    explanation: 'With no fixed costs, contribution equals EBIT, so DOL = 1.',
  ),
  Question(
    subjectId: 'i_fm',
    chapter: 'Leverage',
    text:
        'Interest is ₹50,000 and preference dividend ₹21,000; the tax rate '
        'is 30%. The financial break-even point (EBIT) is:',
    options: ['₹71,000', '₹80,000', '₹50,000', '₹65,000'],
    answerIndex: 1,
    explanation:
        'Financial BEP = Interest + Preference dividend ÷ (1 − t) = '
        '50,000 + 21,000 ÷ 0.7 = ₹80,000. At this EBIT, EPS is zero.',
  ),
  Question(
    subjectId: 'i_fm',
    chapter: 'Leverage',
    text:
        'Under the Net Income (NI) approach, increasing the proportion of '
        'debt:',
    options: [
      'Increases the WACC',
      'Reduces the WACC and increases firm value',
      'Has no effect',
      'Increases the cost of debt',
    ],
    answerIndex: 1,
    explanation:
        'The NI approach assumes the costs of debt and equity stay '
        'constant, so cheaper debt lowers WACC.',
  ),
  Question(
    subjectId: 'i_fm',
    chapter: 'Leverage',
    text: 'Under Modigliani-Miller without taxes, the value of a firm is:',
    options: [
      'Highest with all debt',
      'Independent of its capital structure',
      'Highest with all equity',
      'Equal to its book value',
    ],
    answerIndex: 1,
    explanation:
        'Arbitrage keeps values equal; the cost of equity rises to '
        'offset the benefit of cheaper debt.',
  ),
  Question(
    subjectId: 'i_fm',
    chapter: 'Leverage',
    text:
        'Under MM with corporate taxes, the value of a levered firm '
        'equals the value of an unlevered firm plus:',
    options: [
      'The amount of debt',
      'The present value of the tax shield on debt (debt × tax rate)',
      'Interest paid',
      'Nothing',
    ],
    answerIndex: 1,
    explanation:
        'Interest is tax-deductible, so debt adds value through the '
        'tax saving.',
  ),
  Question(
    subjectId: 'i_fm',
    chapter: 'Leverage',
    text:
        'Near the operating break-even point, the degree of operating '
        'leverage is:',
    options: ['Close to 1', 'Very high', 'Zero', 'Negative always'],
    answerIndex: 1,
    explanation:
        'EBIT is very small near break-even, so a small change in '
        'sales causes a large percentage change in EBIT.',
  ),
  Question(
    subjectId: 'i_fm',
    chapter: 'Leverage',
    text: 'The optimal capital structure is the one that:',
    options: [
      'Uses no debt',
      'Minimises WACC and maximises the value of the firm',
      'Maximises interest',
      'Has the most shareholders',
    ],
    answerIndex: 1,
    explanation:
        'In practice, firms balance tax benefits of debt against '
        'financial distress costs.',
  ),
  Question(
    subjectId: 'i_fm',
    chapter: 'Leverage',
    text: 'Business (operating) risk mainly arises from:',
    options: [
      'Use of debt',
      'Variability of sales and the level of fixed operating costs',
      'Dividend policy',
      'Tax rates',
    ],
    answerIndex: 1,
    explanation:
        'Financial risk is the extra risk to shareholders from using '
        'debt.',
  ),

  // Capital Budgeting
  Question(
    subjectId: 'i_fm',
    chapter: 'Capital Budgeting',
    text:
        'Depreciation is ₹1,00,000 a year and the tax rate is 30%. The '
        'annual depreciation tax shield is:',
    options: ['₹1,00,000', '₹30,000', '₹70,000', '₹1,30,000'],
    answerIndex: 1,
    explanation:
        'Tax shield = 1,00,000 × 30% = ₹30,000, the tax saved because '
        'depreciation is deductible.',
  ),
  Question(
    subjectId: 'i_fm',
    chapter: 'Capital Budgeting',
    text:
        'Working capital invested at the start of a project is usually '
        'treated as:',
    options: [
      'An outflow at the start and an inflow at the end',
      'Only an outflow',
      'Not relevant',
      'An annual expense',
    ],
    answerIndex: 0,
    explanation: 'It is assumed to be recovered when the project ends.',
  ),
  Question(
    subjectId: 'i_fm',
    chapter: 'Capital Budgeting',
    text: 'Money already spent on a feasibility study for a project is:',
    options: [
      'A relevant cash outflow',
      'A sunk cost, ignored in the decision',
      'Added to the project cost',
      'Treated as working capital',
    ],
    answerIndex: 1,
    explanation: 'It has been spent whether or not the project goes ahead.',
  ),
  Question(
    subjectId: 'i_fm',
    chapter: 'Capital Budgeting',
    text:
        'Under capital rationing with divisible projects, projects are best '
        'ranked by:',
    options: ['Payback period', 'Profitability index', 'IRR only', 'Cost'],
    answerIndex: 1,
    explanation:
        'PI shows NPV per rupee invested, which matters when funds '
        'are limited.',
  ),
  Question(
    subjectId: 'i_fm',
    chapter: 'Capital Budgeting',
    text:
        'Testing how NPV changes when one input, such as sales volume, '
        'changes is:',
    options: [
      'Sensitivity analysis',
      'Payback analysis',
      'Ratio analysis',
      'Variance analysis',
    ],
    answerIndex: 0,
    explanation: 'It shows which variables the project is most sensitive to.',
  ),
  Question(
    subjectId: 'i_fm',
    chapter: 'Capital Budgeting',
    text:
        'A project will use a warehouse the firm could otherwise rent out '
        'for ₹2 lakh a year. In project appraisal, this ₹2 lakh is:',
    options: [
      'Ignored',
      'An opportunity cost, treated as a cash outflow',
      'An inflow',
      'A sunk cost',
    ],
    answerIndex: 1,
    explanation: 'The rent given up is a real cost of using the warehouse.',
  ),
  Question(
    subjectId: 'i_fm',
    chapter: 'Capital Budgeting',
    text: 'Terminal cash flow of a project typically includes:',
    options: [
      'Initial investment',
      'After-tax salvage value and recovery of working capital',
      'Depreciation for the last year only',
      'Sunk costs',
    ],
    answerIndex: 1,
    explanation: 'These are cash flows arising when the project ends.',
  ),
  Question(
    subjectId: 'i_fm',
    chapter: 'Capital Budgeting',
    text:
        'The modified IRR (MIRR) improves on IRR by assuming that '
        'interim cash flows are reinvested at:',
    options: ['The IRR', 'The cost of capital', 'Zero', 'The inflation rate'],
    answerIndex: 1,
    explanation:
        'MIRR also gives a single rate even with unusual cash flow '
        'patterns.',
  ),
  Question(
    subjectId: 'i_fm',
    chapter: 'Capital Budgeting',
    text: 'In a replacement decision, the relevant cash flows are:',
    options: [
      'Cash flows of the new machine only',
      'Incremental cash flows: new minus old',
      'Cash flows of the old machine only',
      'Book values',
    ],
    answerIndex: 1,
    explanation:
        'The decision depends on the change in cash flows from '
        'replacing.',
  ),
  Question(
    subjectId: 'i_fm',
    chapter: 'Capital Budgeting',
    text: 'The risk-adjusted discount rate method allows for risk by:',
    options: [
      'Reducing cash flows to certainty equivalents',
      'Adding a risk premium to the discount rate',
      'Ignoring risk',
      'Shortening project life',
    ],
    answerIndex: 1,
    explanation:
        'Riskier projects are discounted at higher rates, reducing '
        'their NPV.',
  ),

  // Working Capital Management
  Question(
    subjectId: 'i_fm',
    chapter: 'Working Capital Management',
    text:
        'Working capital needed for seasonal peaks above the permanent '
        'level is:',
    options: [
      'Gross working capital',
      'Temporary (fluctuating) working capital',
      'Negative working capital',
      'Fixed capital',
    ],
    answerIndex: 1,
    explanation:
        'It is often financed by short-term sources such as cash '
        'credit.',
  ),
  Question(
    subjectId: 'i_fm',
    chapter: 'Working Capital Management',
    text: 'A conservative working capital financing policy uses:',
    options: [
      'Short-term funds for all needs',
      'Long-term funds for permanent needs and part of temporary needs',
      'No long-term funds',
      'Only trade credit',
    ],
    answerIndex: 1,
    explanation:
        'It lowers liquidity risk but costs more than the matching '
        'or aggressive approaches.',
  ),
  Question(
    subjectId: 'i_fm',
    chapter: 'Working Capital Management',
    text: 'Under the Miller-Orr model, the return point is set at:',
    options: [
      'The upper limit',
      'The lower limit plus one-third of the spread',
      'The lower limit plus half of the spread',
      'Zero',
    ],
    answerIndex: 1,
    explanation:
        'When cash hits a limit, it is brought back to the return '
        'point by buying or selling securities.',
  ),
  Question(
    subjectId: 'i_fm',
    chapter: 'Working Capital Management',
    text: 'The cash conversion cycle equals:',
    options: [
      'Inventory days + Receivable days − Payable days',
      'Inventory days + Payable days',
      'Receivable days only',
      'Payable days − Inventory days',
    ],
    answerIndex: 0,
    explanation:
        'It is the time between paying suppliers and collecting cash '
        'from customers.',
  ),
  Question(
    subjectId: 'i_fm',
    chapter: 'Working Capital Management',
    text: 'An ageing schedule of debtors classifies receivables by:',
    options: [
      'Customer size',
      'How long they have been outstanding',
      'Product type',
      'Region',
    ],
    answerIndex: 1,
    explanation: 'It helps monitor collection and spot overdue accounts.',
  ),
  Question(
    subjectId: 'i_fm',
    chapter: 'Working Capital Management',
    text: 'Overtrading means a firm is:',
    options: [
      'Holding too much cash',
      'Expanding sales without enough working capital to support them',
      'Paying high dividends',
      'Reducing production',
    ],
    answerIndex: 1,
    explanation:
        'It leads to liquidity strain, delayed payments and possible '
        'failure despite growing sales.',
  ),
  Question(
    subjectId: 'i_fm',
    chapter: 'Working Capital Management',
    text:
        'Credit terms are 1/10, net 30. Using a 365-day year, the approximate '
        'annual cost of not taking the discount is:',
    options: ['1%', '18.43%', '12%', '36.5%'],
    answerIndex: 1,
    explanation: 'Cost = 1/99 × 365/20 = 18.43%.',
  ),
  Question(
    subjectId: 'i_fm',
    chapter: 'Working Capital Management',
    text:
        'The matching (hedging) approach to financing working capital '
        'means:',
    options: [
      'Financing all assets with equity',
      'Matching the maturity of finance with the life of the asset',
      'Using only overdrafts',
      'Holding no inventory',
    ],
    answerIndex: 1,
    explanation:
        'Permanent assets get long-term funds; temporary needs get '
        'short-term funds.',
  ),
  Question(
    subjectId: 'i_fm',
    chapter: 'Working Capital Management',
    text:
        'In estimating working capital, debtors are often valued at cost '
        'rather than sales because:',
    options: [
      'Sales are uncertain',
      'The profit element is not a cash outlay tied up by the firm',
      'Tax rules require it',
      'It increases the estimate',
    ],
    answerIndex: 1,
    explanation:
        'The funds actually locked in are the cost of goods sold on '
        'credit.',
  ),
  Question(
    subjectId: 'i_fm',
    chapter: 'Working Capital Management',
    text: 'In factoring with recourse, the risk of bad debts is borne by:',
    options: [
      'The factor',
      'The client (seller)',
      'The customer',
      'The government',
    ],
    answerIndex: 1,
    explanation:
        'In non-recourse factoring, the factor bears the bad debt '
        'risk, for a higher charge.',
  ),

  // Business Data Analytics
  Question(
    subjectId: 'i_fm',
    chapter: 'Business Data Analytics',
    text: 'A data lake differs from a data warehouse mainly because it:',
    options: [
      'Stores only summarised data',
      'Stores raw data of all types in its original form',
      'Holds no data',
      'Is always on paper',
    ],
    answerIndex: 1,
    explanation:
        'A warehouse holds cleaned, structured data ready for '
        'reporting.',
  ),
  Question(
    subjectId: 'i_fm',
    chapter: 'Business Data Analytics',
    text: 'Which is an example of unstructured data?',
    options: [
      'A table of daily sales figures',
      'Customer emails and videos',
      'An employee master file',
      'A ledger',
    ],
    answerIndex: 1,
    explanation:
        'Unstructured data has no fixed format, so it needs special '
        'tools to analyse.',
  ),
  Question(
    subjectId: 'i_fm',
    chapter: 'Business Data Analytics',
    text: 'Supervised machine learning trains models on:',
    options: [
      'Data with known outcomes (labelled data)',
      'Data with no labels',
      'Random numbers',
      'Only images',
    ],
    answerIndex: 0,
    explanation:
        'For example, past loans labelled "repaid" or "defaulted" '
        'train a model to predict defaults.',
  ),
  Question(
    subjectId: 'i_fm',
    chapter: 'Business Data Analytics',
    text:
        'For income data with a few very high earners, the best measure of '
        'the typical value is the:',
    options: ['Mean', 'Median', 'Range', 'Variance'],
    answerIndex: 1,
    explanation:
        'The median is not pulled up by extreme values, unlike the '
        'mean.',
  ),
  Question(
    subjectId: 'i_fm',
    chapter: 'Business Data Analytics',
    text:
        'Ice cream sales and drowning cases both rise in summer. This shows '
        'that:',
    options: [
      'Ice cream causes drowning',
      'Correlation does not prove causation',
      'The data are wrong',
      'Drowning causes ice cream sales',
    ],
    answerIndex: 1,
    explanation: 'A third factor, hot weather, drives both.',
  ),
  Question(
    subjectId: 'i_fm',
    chapter: 'Business Data Analytics',
    text:
        'Analytics that recommends the best course of action, such as the '
        'optimal price, is:',
    options: [
      'Descriptive analytics',
      'Diagnostic analytics',
      'Predictive analytics',
      'Prescriptive analytics',
    ],
    answerIndex: 3,
    explanation:
        'Prescriptive analytics uses optimisation and simulation to '
        'suggest decisions.',
  ),
  Question(
    subjectId: 'i_fm',
    chapter: 'Business Data Analytics',
    text:
        'Which tool is mainly used for interactive data visualisation and '
        'dashboards?',
    options: ['Power BI', 'A word processor', 'An email client', 'A compiler'],
    answerIndex: 0,
    explanation: 'Power BI and Tableau are common business intelligence tools.',
  ),
  Question(
    subjectId: 'i_fm',
    chapter: 'Business Data Analytics',
    text: 'A histogram is used to show:',
    options: [
      'Parts of a whole',
      'The frequency distribution of a numeric variable',
      'A relationship between two variables',
      'A geographic pattern',
    ],
    answerIndex: 1,
    explanation:
        'A pie chart shows parts of a whole, and a scatter plot shows '
        'relationships.',
  ),
  Question(
    subjectId: 'i_fm',
    chapter: 'Business Data Analytics',
    text:
        'India\'s law governing the processing of digital personal data is '
        'the:',
    options: [
      'Information Technology Act, 2000 only',
      'Digital Personal Data Protection Act, 2023',
      'Companies Act, 2013',
      'Right to Information Act, 2005',
    ],
    answerIndex: 1,
    explanation:
        'It requires consent and lawful purpose for processing '
        'personal data, with duties for data fiduciaries.',
  ),
  Question(
    subjectId: 'i_fm',
    chapter: 'Business Data Analytics',
    text: 'A key performance indicator (KPI) is:',
    options: [
      'Any number in a report',
      'A measurable value showing progress towards a key objective',
      'A type of chart',
      'A database',
    ],
    answerIndex: 1,
    explanation:
        'Examples are customer retention rate, days sales '
        'outstanding and on-time delivery.',
  ),
];
