import '../../../models/question.dart';

const interFmDescriptive = [
  DescriptiveQuestion(
    subjectId: 'i_fm',
    chapter: 'Introduction to Financial Management',
    text:
        'Compare profit maximisation and wealth maximisation as objectives '
        'of financial management. Which is better, and why?',
    marks: 5,
    answer:
        '• Meaning: profit maximisation aims to earn the highest possible '
        'profit; wealth maximisation aims to maximise the market value of '
        'shareholders\' holdings, shown by the share price.\n'
        '• Time value: profit maximisation ignores when profits are '
        'received; wealth maximisation discounts future cash flows.\n'
        '• Risk: profit maximisation ignores the risk of returns; wealth '
        'maximisation allows for it through the discount rate.\n'
        '• Clarity: "profit" can mean short- or long-term, before or after '
        'tax; wealth is measured clearly through cash flows and market '
        'value.\n'
        '• Horizon: profit maximisation can encourage short-term decisions; '
        'wealth maximisation takes a long-term view.\n'
        'Wealth maximisation is generally preferred because it considers the '
        'timing and risk of returns, and serves the long-term interest of '
        'the owners.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_fm',
    chapter: 'Cost of Capital',
    text:
        'A company\'s capital consists of equity of ₹6,00,000 with a cost '
        'of 15%, and 10% debentures of ₹4,00,000. The tax rate is 30%. '
        'Calculate the weighted average cost of capital.',
    marks: 5,
    answer:
        'Cost of debt after tax: kd = Interest rate × (1 − tax rate) = '
        '10% × (1 − 0.30) = 7%\n'
        'Weights based on the total capital of ₹10,00,000:\n'
        '• Equity: 6,00,000 ÷ 10,00,000 = 0.6\n'
        '• Debt: 4,00,000 ÷ 10,00,000 = 0.4\n'
        'WACC = (0.6 × 15%) + (0.4 × 7%) = 9% + 2.8% = 11.8%\n'
        'Debt is cheaper than equity because interest is tax-deductible and '
        'lenders face less risk. WACC is the minimum return the company must '
        'earn on new investments of similar risk.',
    problem: true,
  ),
  DescriptiveQuestion(
    subjectId: 'i_fm',
    chapter: 'Leverage',
    text:
        'Sales are ₹10,00,000, variable costs ₹6,00,000, fixed costs '
        '₹2,00,000 and interest ₹50,000. Calculate the operating, financial '
        'and combined leverages, and explain what each shows.',
    marks: 6,
    answer:
        '• Contribution = 10,00,000 − 6,00,000 = ₹4,00,000\n'
        '• EBIT = 4,00,000 − 2,00,000 = ₹2,00,000\n'
        '• EBT = 2,00,000 − 50,000 = ₹1,50,000\n'
        '• Operating leverage = Contribution ÷ EBIT = 4,00,000 ÷ 2,00,000 '
        '= 2\n'
        '• Financial leverage = EBIT ÷ EBT = 2,00,000 ÷ 1,50,000 = 1.33\n'
        '• Combined leverage = Contribution ÷ EBT = 4,00,000 ÷ 1,50,000 '
        '= 2.67 (also 2 × 1.33)\n'
        'Meaning:\n'
        '• Operating leverage: a 1% change in sales changes EBIT by 2%. It '
        'comes from fixed operating costs and shows business risk.\n'
        '• Financial leverage: a 1% change in EBIT changes EBT (and EPS) by '
        '1.33%. It comes from fixed interest and shows financial risk.\n'
        '• Combined leverage: a 1% change in sales changes EPS by 2.67%. It '
        'shows total risk.',
    problem: true,
  ),
  DescriptiveQuestion(
    subjectId: 'i_fm',
    chapter: 'Capital Budgeting',
    text:
        'Distinguish between the Net Present Value (NPV) and Internal Rate '
        'of Return (IRR) methods.',
    marks: 5,
    answer:
        '• Meaning: NPV is the present value of cash inflows minus the '
        'present value of outflows, at the cost of capital. IRR is the '
        'discount rate at which NPV is zero.\n'
        '• Result: NPV gives an absolute amount; IRR gives a percentage.\n'
        '• Decision rule: accept a project if NPV is positive; accept if IRR '
        'is more than the cost of capital.\n'
        '• Reinvestment assumption: NPV assumes cash flows are reinvested at '
        'the cost of capital; IRR assumes they are reinvested at the IRR, '
        'which may be unrealistic.\n'
        '• Multiple rates: NPV gives one answer; IRR can give more than one '
        'rate when cash flows change sign more than once.\n'
        '• Ranking: for mutually exclusive projects, the two can rank '
        'projects differently, because of differences in size or timing of '
        'cash flows. NPV is then preferred, since it measures the increase '
        'in shareholders\' wealth.\n'
        'For a single independent project, both give the same accept or '
        'reject decision.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_fm',
    chapter: 'Working Capital Management',
    text:
        'What is the operating cycle? How is it calculated, and what '
        'affects its length?',
    marks: 5,
    answer:
        'The operating cycle is the time taken to convert cash into raw '
        'materials, then into finished goods, then into sales and receivables, '
        'and back into cash. The longer the cycle, the more working capital '
        'is needed.\n'
        'Operating cycle = R + W + F + D − C, where:\n'
        '• R = raw material storage period\n'
        '• W = work-in-progress (conversion) period\n'
        '• F = finished goods storage period\n'
        '• D = debtors (receivables) collection period\n'
        '• C = creditors (payables) deferral period\n'
        'Without deducting C, it is the gross operating cycle; after '
        'deducting C, it is the net operating (cash conversion) cycle.\n'
        'Factors affecting its length: nature of business, production '
        'process time, credit policy towards customers, credit received from '
        'suppliers, inventory policy, and seasonality.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_fm',
    chapter: 'Business Data Analytics',
    text:
        'Explain the four types of data analytics, with a business example '
        'of each.',
    marks: 5,
    answer:
        '• Descriptive analytics: what happened? It summarises past data '
        'through reports and dashboards. Example: monthly sales by region.\n'
        '• Diagnostic analytics: why did it happen? It drills down into data '
        'to find causes and relationships. Example: finding that sales fell '
        'in one region because a key distributor stopped stocking the '
        'product.\n'
        '• Predictive analytics: what is likely to happen? It uses '
        'statistical models and machine learning to forecast. Example: '
        'predicting which customers are likely to stop buying.\n'
        '• Prescriptive analytics: what should we do? It recommends actions '
        'using optimisation and simulation. Example: setting the best price '
        'or stock level to maximise profit.\n'
        'Each type builds on the one before it and adds more value, but also '
        'needs better data and more advanced tools.',
  ),
];
