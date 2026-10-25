import '../../../models/question.dart';

const costMoreDescriptive = [
  DescriptiveQuestion(
    subjectId: 'cost',
    chapter: 'Cost Concepts & Cost Sheet',
    text: 'Distinguish between cost accounting and financial accounting.',
    marks: 5,
    answer:
        '• Purpose: cost accounting gives management information on costs '
        'for control and decisions; financial accounting shows profit and '
        'financial position to outsiders.\n'
        '• Users: cost accounts are mainly for internal use; financial '
        'accounts are for shareholders, lenders and tax authorities.\n'
        '• Detail: cost accounts analyse costs by product, job, process or '
        'department; financial accounts show totals for the whole business.\n'
        '• Period: cost reports are prepared often, even weekly; financial '
        'statements are prepared yearly (quarterly for listed companies).\n'
        '• Rules: financial accounts follow the Companies Act and accounting '
        'standards; cost accounts follow Cost Accounting Standards where '
        'required, but are otherwise flexible.\n'
        '• Items: cost accounts may include notional costs and exclude '
        'purely financial items, such as interest received.',
  ),
  DescriptiveQuestion(
    subjectId: 'cost',
    chapter: 'Cost Concepts & Cost Sheet',
    text:
        'Power costs were ₹26,000 in a month with 4,000 machine hours, and '
        '₹35,000 in a month with 7,000 machine hours. Using the high-low '
        'method, separate the fixed and variable elements and estimate the '
        'cost for 6,000 hours.',
    marks: 4,
    problem: true,
    answer:
        '• Variable cost per hour = (35,000 − 26,000) ÷ (7,000 − 4,000) = '
        '9,000 ÷ 3,000 = ₹3\n'
        '• Fixed cost = 26,000 − 4,000 × 3 = ₹14,000\n'
        'Check: 14,000 + 7,000 × 3 = 35,000.\n'
        '• Estimated cost for 6,000 hours = 14,000 + 6,000 × 3 = ₹32,000\n'
        'The method uses only two points, so it is quick but can be '
        'distorted by an unusual month.',
  ),
  DescriptiveQuestion(
    subjectId: 'cost',
    chapter: 'Material Cost',
    text:
        'Opening stock is 100 units at ₹10. On the 5th, 200 units are '
        'bought at ₹12. On the 10th, 250 units are issued. On the 15th, 150 '
        'units are bought at ₹13. On the 20th, 120 units are issued. Find '
        'the value of issues and closing stock under LIFO.',
    marks: 5,
    problem: true,
    answer:
        '• Issue on 10th (250 units): latest first, so 200 × 12 + 50 × 10 '
        '= 2,400 + 500 = ₹2,900; balance 50 units at ₹10\n'
        '• Purchase on 15th: balance 50 at ₹10 and 150 at ₹13\n'
        '• Issue on 20th (120 units): 120 × 13 = ₹1,560; balance 50 at ₹10 '
        'and 30 at ₹13\n'
        '• Closing stock = 50 × 10 + 30 × 13 = 500 + 390 = ₹890\n'
        'Total issues = ₹4,460. Compared with FIFO (issues ₹4,310, closing '
        'stock ₹1,040), LIFO gives higher issue cost and lower closing stock '
        'when prices are rising.',
  ),
  DescriptiveQuestion(
    subjectId: 'cost',
    chapter: 'Employee Cost',
    text:
        'Under Merrick\'s multiple piece rate, the standard is 100 units a '
        'day and the normal rate is ₹2 per unit. Workers A, B and C make 80, '
        '95 and 110 units in a day. Calculate their earnings.',
    marks: 5,
    problem: true,
    answer:
        'Rates: below 83% efficiency, normal rate; 83% to 100%, 110% of '
        'normal; above 100%, 120% of normal.\n'
        '• A: efficiency 80%, so normal rate ₹2: 80 × 2 = ₹160\n'
        '• B: efficiency 95%, so 110% rate ₹2.20: 95 × 2.20 = ₹209\n'
        '• C: efficiency 110%, so 120% rate ₹2.40: 110 × 2.40 = ₹264\n'
        'Unlike Taylor\'s plan, slower workers are not penalised with a '
        'lower rate.',
  ),
  DescriptiveQuestion(
    subjectId: 'cost',
    chapter: 'Overheads',
    text:
        'Service departments X and Y serve each other. Their own '
        'overheads are X ₹9,400 and Y ₹4,000. X\'s services go 50% to P1, 30% '
        'to P2 and 20% to Y. Y\'s services go 40% to P1, 50% to P2 and 10% to '
        'X. P1 and P2 have primary overheads of ₹20,000 and ₹15,000. Using '
        'simultaneous equations, find the total overheads of P1 and P2.',
    marks: 8,
    problem: true,
    answer:
        'Let X and Y be total overheads after reciprocal transfers.\n'
        '• X = 9,400 + 0.1Y\n'
        '• Y = 4,000 + 0.2X\n'
        'Substitute: X = 9,400 + 0.1 (4,000 + 0.2X) = 9,800 + 0.02X, so 0.98X '
        '= 9,800 and X = ₹10,000. Then Y = 4,000 + 2,000 = ₹6,000.\n'
        'Distribution to production departments:\n'
        '• P1: 20,000 + 50% × 10,000 + 40% × 6,000 = 20,000 + 5,000 + 2,400 '
        '= ₹27,400\n'
        '• P2: 15,000 + 30% × 10,000 + 50% × 6,000 = 15,000 + 3,000 + 3,000 '
        '= ₹21,000\n'
        'Check: 27,400 + 21,000 = 48,400 = 20,000 + 15,000 + 9,400 + 4,000.',
  ),
  DescriptiveQuestion(
    subjectId: 'cost',
    chapter: 'Job & Process Costing',
    text:
        'A contract for ₹20,00,000 has cost ₹9,00,000 to date. Work '
        'certified is ₹11,00,000 and uncertified ₹50,000. Cash received is '
        '80% of work certified. Find the notional profit and the profit to '
        'be credited to Profit and Loss under the traditional rules.',
    marks: 6,
    problem: true,
    answer:
        '• Value of work done = 11,00,000 + 50,000 = 11,50,000\n'
        '• Notional profit = 11,50,000 − 9,00,000 = ₹2,50,000\n'
        '• Stage of completion = 11,00,000 ÷ 20,00,000 = 55%\n'
        'Traditional rules: below 25%, no profit; 25% to 50%, 1/3 of notional '
        'profit × cash ratio; 50% to 90%, 2/3 of notional profit × cash '
        'ratio; above 90%, based on estimated total profit.\n'
        '• Profit to P&L = 2/3 × 2,50,000 × 80% = ₹1,33,333\n'
        '• The rest (₹1,16,667) is kept as a reserve against future losses.\n'
        'Financial reporting uses the percentage-of-completion approach '
        'under accounting standards instead.',
  ),
  DescriptiveQuestion(
    subjectId: 'cost',
    chapter: 'Marginal Costing & CVP Analysis',
    text:
        'What is break-even analysis? State its assumptions and '
        'limitations.',
    marks: 5,
    answer:
        'Break-even analysis studies the relationship between cost, '
        'volume and profit, and finds the level of sales at which there is '
        'no profit and no loss.\n'
        'Assumptions:\n'
        '• Costs can be split into fixed and variable.\n'
        '• Fixed costs stay constant, and variable cost per unit stays '
        'constant.\n'
        '• Selling price per unit does not change with volume.\n'
        '• The sales mix is constant, and production equals sales.\n'
        'Limitations:\n'
        '• In practice, prices fall and costs change at higher volumes.\n'
        '• Some costs are hard to separate.\n'
        '• It ignores capital employed and is a short-term tool.\n'
        '• For many products, a changing mix makes the break-even point '
        'unreliable.',
  ),
  DescriptiveQuestion(
    subjectId: 'cost',
    chapter: 'Marginal Costing & CVP Analysis',
    text:
        '10,000 units are produced and 8,000 sold at ₹50. Variable cost is '
        '₹30 per unit, fixed production overheads ₹1,00,000 and fixed selling '
        'and administration overheads ₹40,000. There is no opening stock. '
        'Find profit under marginal and absorption costing, and explain the '
        'difference.',
    marks: 8,
    problem: true,
    answer:
        'Marginal costing\n'
        '• Contribution = 8,000 × (50 − 30) = 1,60,000\n'
        '• Less fixed costs 1,00,000 + 40,000 = 1,40,000\n'
        '• Profit = ₹20,000\n'
        'Absorption costing\n'
        '• Fixed overhead per unit = 1,00,000 ÷ 10,000 = 10, so full cost = '
        '₹40 per unit\n'
        '• Sales 4,00,000 − cost of sales 8,000 × 40 = 3,20,000\n'
        '• Gross profit 80,000 − selling and administration 40,000\n'
        '• Profit = ₹40,000\n'
        'Difference = 20,000 = closing stock 2,000 units × fixed overhead '
        '₹10. Absorption costing carries this fixed overhead forward in '
        'stock.',
  ),
  DescriptiveQuestion(
    subjectId: 'cost',
    chapter: 'Standard Costing',
    text: 'Explain the types of standards used in standard costing.',
    marks: 4,
    answer:
        '• Ideal standard: set for perfect conditions, with no waste, '
        'breakdowns or idle time. Rarely achieved, and can demotivate '
        'workers.\n'
        '• Basic standard: set once and kept unchanged for a long time, '
        'used to show trends over the years.\n'
        '• Currently attainable standard: achievable under efficient '
        'working, with allowance for normal loss, idle time and fatigue. It '
        'is the most widely used, because it is realistic and motivating.\n'
        '• Normal standard: an average expected over a period long enough '
        'to cover a trade cycle.',
  ),
  DescriptiveQuestion(
    subjectId: 'cost',
    chapter: 'Standard Costing',
    text:
        'The standard is 2 hours per unit with variable overheads at ₹5 '
        'an hour. Actual output was 900 units, actual hours 1,850 and actual '
        'variable overheads ₹9,620. Calculate the variable overhead cost, '
        'expenditure and efficiency variances.',
    marks: 5,
    problem: true,
    answer:
        'Standard hours for actual output = 900 × 2 = 1,800\n'
        '• Cost variance = SH × SR − Actual = 9,000 − 9,620 = ₹620 (A)\n'
        '• Expenditure variance = AH × SR − Actual = 9,250 − 9,620 = ₹370 '
        '(A)\n'
        '• Efficiency variance = SR × (SH − AH) = 5 × (1,800 − 1,850) = ₹250 '
        '(A)\n'
        'Check: 370 A + 250 A = 620 A.',
  ),
];
