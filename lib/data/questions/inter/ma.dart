import '../../../models/question.dart';

const interMaQuestions = [
  // Decision making
  Question(
    subjectId: 'i_ma',
    chapter: 'Decision Making',
    text: 'Which cost is irrelevant for decision making?',
    options: ['Opportunity cost', 'Incremental cost', 'Sunk cost', 'Avoidable cost'],
    answerIndex: 2,
    explanation: 'A sunk cost has already been incurred and cannot be changed by '
        'any decision, so it is irrelevant.',
  ),
  Question(
    subjectId: 'i_ma',
    chapter: 'Decision Making',
    text: 'Opportunity cost is:',
    options: [
      'The cost already incurred on a project',
      'The benefit given up by choosing the next best alternative',
      'The total of fixed costs',
      'The cost of idle capacity',
    ],
    answerIndex: 1,
    explanation: 'Opportunity cost is the value of the best alternative '
        'forgone. It is relevant for decisions even though it is not recorded '
        'in the books.',
  ),
  Question(
    subjectId: 'i_ma',
    chapter: 'Decision Making',
    text: 'Machine hours are the limiting factor. Product X has contribution of '
        '₹40 per unit and needs 4 machine hours. Product Y has contribution of '
        '₹30 per unit and needs 2 machine hours. Which product should be '
        'preferred?',
    options: [
      'X, because its contribution per unit is higher',
      'Y, because its contribution per machine hour is ₹15',
      'Both equally',
      'X, because its contribution per machine hour is ₹10',
    ],
    answerIndex: 1,
    explanation: 'Rank products by contribution per unit of the key factor: X = '
        '40/4 = ₹10 per hour and Y = 30/2 = ₹15 per hour, so Y is preferred.',
  ),
  Question(
    subjectId: 'i_ma',
    chapter: 'Decision Making',
    text: 'A component has a variable cost of ₹45 to make, and it can be bought '
        'for ₹50. Fixed costs are unavoidable. The firm should:',
    options: [
      'Buy, saving ₹5 per unit',
      'Make, saving ₹5 per unit',
      'Buy, because fixed costs are saved',
      'Be indifferent',
    ],
    answerIndex: 1,
    explanation: 'Unavoidable fixed costs are irrelevant. Making costs ₹45 '
        'against ₹50 to buy, so making saves ₹5 per unit.',
  ),
  Question(
    subjectId: 'i_ma',
    chapter: 'Decision Making',
    text: 'In the short run, a firm should continue operating rather than shut '
        'down as long as the selling price covers:',
    options: [
      'Average total cost',
      'Average fixed cost',
      'Average variable cost',
      'Marginal revenue',
    ],
    answerIndex: 2,
    explanation: 'If price covers variable cost, every unit contributes towards '
        'fixed costs that would be incurred even after shutdown.',
  ),
  Question(
    subjectId: 'i_ma',
    chapter: 'Decision Making',
    text: 'A product\'s target selling price is ₹500 and the desired profit is '
        '20% of selling price. The target cost is:',
    options: ['₹400', '₹416.67', '₹600', '₹480'],
    answerIndex: 0,
    explanation: 'Target cost = Target price − Desired profit = 500 − 20% × 500 = ₹400.',
  ),
  Question(
    subjectId: 'i_ma',
    chapter: 'Decision Making',
    text: 'A firm with spare capacity receives a special order at ₹60 per '
        'unit. Variable cost is ₹50 per unit and no extra fixed cost is '
        'needed. The order should be:',
    options: [
      'Rejected, as the price is below full cost',
      'Accepted, as it adds ₹10 contribution per unit',
      'Accepted only at ₹70',
      'Rejected, as fixed costs are not covered',
    ],
    answerIndex: 1,
    explanation: 'With spare capacity and no extra fixed costs, any price above '
        'variable cost increases profit.',
  ),
  Question(
    subjectId: 'i_ma',
    chapter: 'Decision Making',
    text: 'Differential cost is:',
    options: [
      'The cost already incurred',
      'The cost of the next best alternative forgone',
      'The total fixed cost',
      'The difference in total cost between two alternatives',
    ],
    answerIndex: 3,
    explanation: 'Differential (incremental) cost is the change in cost caused by '
        'choosing one alternative over another.',
  ),
  Question(
    subjectId: 'i_ma',
    chapter: 'Decision Making',
    text: 'A key (limiting) factor is:',
    options: [
      'A factor that limits the volume of output or sales',
      'The most profitable product',
      'The total fixed cost',
      'A cost that cannot be controlled',
    ],
    answerIndex: 0,
    explanation: 'When a resource is scarce, products are ranked by contribution per '
        'unit of that key factor.',
  ),
  Question(
    subjectId: 'i_ma',
    chapter: 'Decision Making',
    text: 'Product X sells at ₹100 with variable cost ₹60. Product Y sells at '
        '₹80 with variable cost ₹40. Which has the higher P/V ratio?',
    options: ['X, at 40%', 'Y, at 50%', 'Both have 40%', 'X, at 60%'],
    answerIndex: 1,
    explanation: 'X: 40 ÷ 100 = 40%. Y: 40 ÷ 80 = 50%. Y has the higher P/V ratio.',
  ),

  // Budgeting
  Question(
    subjectId: 'i_ma',
    chapter: 'Budgeting & Budgetary Control',
    text: 'A budget designed to change with the level of activity is a:',
    options: ['Fixed budget', 'Master budget', 'Capital budget', 'Flexible budget'],
    answerIndex: 3,
    explanation: 'A flexible budget recognises cost behaviour and shows costs at '
        'different activity levels.',
  ),
  Question(
    subjectId: 'i_ma',
    chapter: 'Budgeting & Budgetary Control',
    text: 'Fixed costs are ₹20,000 and variable cost is ₹5 per unit. Under a '
        'flexible budget, the total cost at 6,000 units is:',
    options: ['₹30,000', '₹50,000', '₹26,000', '₹1,20,000'],
    answerIndex: 1,
    explanation: 'Total cost = 20,000 + 6,000 × 5 = ₹50,000.',
  ),
  Question(
    subjectId: 'i_ma',
    chapter: 'Budgeting & Budgetary Control',
    text: 'A budgeting method in which every activity must be justified from '
        'scratch each period is:',
    options: [
      'Incremental budgeting',
      'Rolling budgeting',
      'Zero-base budgeting',
      'Flexible budgeting',
    ],
    answerIndex: 2,
    explanation: 'Zero-base budgeting starts from zero, not from last year\'s '
        'figures.',
  ),
  Question(
    subjectId: 'i_ma',
    chapter: 'Budgeting & Budgetary Control',
    text: 'The budget that summarises all the functional budgets is the:',
    options: ['Cash budget', 'Master budget', 'Sales budget', 'Production budget'],
    answerIndex: 1,
    explanation: 'The master budget brings together the functional budgets, the '
        'budgeted P&L and the budgeted balance sheet.',
  ),
  Question(
    subjectId: 'i_ma',
    chapter: 'Budgeting & Budgetary Control',
    text: 'A cash budget shows:',
    options: [
      'Assets and liabilities',
      'Expected cash receipts and payments for the budget period',
      'Profit for the year',
      'Production in units',
    ],
    answerIndex: 1,
    explanation: 'The cash budget helps plan for cash surpluses and shortages.',
  ),
  Question(
    subjectId: 'i_ma',
    chapter: 'Budgeting & Budgetary Control',
    text: 'Budgeted sales are 5,000 units, opening finished stock 800 units '
        'and desired closing stock 1,000 units. The production budget is:',
    options: ['6,800 units', '5,000 units', '4,800 units', '5,200 units'],
    answerIndex: 3,
    explanation: 'Production = Sales + Closing stock − Opening stock = 5,000 + 1,000 '
        '− 800 = 5,200 units.',
  ),
  Question(
    subjectId: 'i_ma',
    chapter: 'Budgeting & Budgetary Control',
    text: 'The principal (key) budget factor is:',
    options: [
      'The budget prepared first by accident',
      'The profit target',
      'The factor that limits the activities of the business, often sales',
      'The largest expense',
    ],
    answerIndex: 2,
    explanation: 'The budget for the limiting factor is prepared first and other '
        'budgets are built around it.',
  ),
  Question(
    subjectId: 'i_ma',
    chapter: 'Budgeting & Budgetary Control',
    text: 'Performance budgeting focuses on:',
    options: [
      'Only the inputs used',
      'The results (outputs) achieved by activities',
      'Cash flows only',
      'Past year\'s figures',
    ],
    answerIndex: 1,
    explanation: 'Performance budgeting links resources to measurable outputs and '
        'results.',
  ),
  Question(
    subjectId: 'i_ma',
    chapter: 'Budgeting & Budgetary Control',
    text: 'A rolling (continuous) budget is one that:',
    options: [
      'Is never revised',
      'Is updated by adding a new period as each period ends',
      'Is prepared once every five years',
      'Covers only one month',
    ],
    answerIndex: 1,
    explanation: 'It always looks the same period ahead, for example 12 months.',
  ),
  Question(
    subjectId: 'i_ma',
    chapter: 'Budgeting & Budgetary Control',
    text: 'The master budget includes:',
    options: [
      'The budgeted profit and loss account and budgeted balance sheet',
      'Only the cash budget',
      'Only capital expenditure',
      'Only the sales budget',
    ],
    answerIndex: 0,
    explanation: 'It summarises all functional budgets.',
  ),

  // Performance evaluation
  Question(
    subjectId: 'i_ma',
    chapter: 'Performance Measurement',
    text: 'A division earns a profit of ₹2,00,000 on capital employed of '
        '₹10,00,000. Its return on investment is:',
    options: ['5%', '50%', '2%', '20%'],
    answerIndex: 3,
    explanation: 'ROI = Profit / Capital employed × 100 = 2,00,000 / 10,00,000 × 100 = 20%.',
  ),
  Question(
    subjectId: 'i_ma',
    chapter: 'Performance Measurement',
    text: 'Profit is ₹2,00,000, capital employed is ₹10,00,000 and the cost of '
        'capital is 15%. Residual income is:',
    options: ['₹50,000', '₹1,50,000', '₹2,00,000', '₹30,000'],
    answerIndex: 0,
    explanation: 'RI = Profit − (Capital employed × Cost of capital) = 2,00,000 '
        '− 1,50,000 = ₹50,000.',
  ),
  Question(
    subjectId: 'i_ma',
    chapter: 'Performance Measurement',
    text: 'When a perfectly competitive market exists for an intermediate '
        'product, the ideal transfer price is generally the:',
    options: ['Variable cost', 'Full cost', 'Market price', 'Negotiated cost plus 50%'],
    answerIndex: 2,
    explanation: 'Market price is objective and leads both divisions to act in '
        'the interest of the company as a whole.',
  ),
  Question(
    subjectId: 'i_ma',
    chapter: 'Performance Measurement',
    text: 'A responsibility centre whose manager controls revenues, costs and '
        'the capital invested is an:',
    options: ['Investment centre', 'Cost centre', 'Revenue centre', 'Expense centre'],
    answerIndex: 0,
    explanation: 'Investment centres are judged on ROI or residual income, since '
        'their managers also control investment.',
  ),
  Question(
    subjectId: 'i_ma',
    chapter: 'Performance Measurement',
    text: 'Which is NOT one of the four perspectives of the Balanced Scorecard?',
    options: [
      'Financial',
      'Customer',
      'Learning and growth',
      'Competitor',
    ],
    answerIndex: 3,
    explanation: 'The four perspectives are financial, customer, internal '
        'business process, and learning and growth.',
  ),
  Question(
    subjectId: 'i_ma',
    chapter: 'Performance Measurement',
    text: 'The manager of a cost centre is responsible for:',
    options: [
      'Revenues and costs',
      'Revenues, costs and capital invested',
      'Costs only',
      'Revenues only',
    ],
    answerIndex: 2,
    explanation: 'A profit centre adds revenues; an investment centre also covers '
        'the capital invested.',
  ),
  Question(
    subjectId: 'i_ma',
    chapter: 'Performance Measurement',
    text: 'The manager of a profit centre is responsible for:',
    options: [
      'Cash only',
      'Capital investment only',
      'Both revenues and costs',
      'Costs only',
    ],
    answerIndex: 2,
    explanation: 'Profit centre performance is judged by the profit it earns.',
  ),
  Question(
    subjectId: 'i_ma',
    chapter: 'Performance Measurement',
    text: 'NOPAT is ₹3,00,000, capital employed ₹20,00,000 and WACC 12%. '
        'Economic Value Added (EVA) is:',
    options: ['₹3,00,000', '−₹60,000', '₹2,40,000', '₹60,000'],
    answerIndex: 3,
    explanation: 'EVA = NOPAT − (Capital employed × WACC) = 3,00,000 − 2,40,000 = '
        '₹60,000.',
  ),
  Question(
    subjectId: 'i_ma',
    chapter: 'Performance Measurement',
    text: 'If the transfer price is set at variable cost, the selling '
        '(supplying) division:',
    options: [
      'Always gains at the buyer\'s expense',
      'Gets full cost plus profit',
      'Earns no contribution towards its fixed costs and profit',
      'Earns a market-level profit',
    ],
    answerIndex: 2,
    explanation: 'At variable cost, the supplying division only recovers its '
        'variable costs, which may demotivate its manager.',
  ),
  Question(
    subjectId: 'i_ma',
    chapter: 'Performance Measurement',
    text: 'A weakness of ROI as a measure of divisional performance is that '
        'managers may:',
    options: [
      'Always maximise company value',
      'Accept every project',
      'Ignore profit',
      'Reject projects earning above the cost of capital but below the division\'s current ROI',
    ],
    answerIndex: 3,
    explanation: 'Residual income and EVA reduce this goal-congruence problem.',
  ),
];
