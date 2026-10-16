import '../../../models/question.dart';

const interMaQuestions = [
  // Decision making
  Question(
    subjectId: 'i_ma',
    text: 'Which cost is irrelevant for decision making?',
    options: ['Opportunity cost', 'Incremental cost', 'Sunk cost', 'Avoidable cost'],
    answerIndex: 2,
    explanation: 'A sunk cost has already been incurred and cannot be changed by '
        'any decision, so it is irrelevant.',
  ),
  Question(
    subjectId: 'i_ma',
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
    text: 'A product\'s target selling price is ₹500 and the desired profit is '
        '20% of selling price. The target cost is:',
    options: ['₹400', '₹416.67', '₹600', '₹480'],
    answerIndex: 0,
    explanation: 'Target cost = Target price − Desired profit = 500 − 20% × 500 = ₹400.',
  ),

  // Budgeting
  Question(
    subjectId: 'i_ma',
    text: 'A budget designed to change with the level of activity is a:',
    options: ['Fixed budget', 'Master budget', 'Capital budget', 'Flexible budget'],
    answerIndex: 3,
    explanation: 'A flexible budget recognises cost behaviour and shows costs at '
        'different activity levels.',
  ),
  Question(
    subjectId: 'i_ma',
    text: 'Fixed costs are ₹20,000 and variable cost is ₹5 per unit. Under a '
        'flexible budget, the total cost at 6,000 units is:',
    options: ['₹30,000', '₹50,000', '₹26,000', '₹1,20,000'],
    answerIndex: 1,
    explanation: 'Total cost = 20,000 + 6,000 × 5 = ₹50,000.',
  ),
  Question(
    subjectId: 'i_ma',
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
    text: 'The budget that summarises all the functional budgets is the:',
    options: ['Cash budget', 'Master budget', 'Sales budget', 'Production budget'],
    answerIndex: 1,
    explanation: 'The master budget brings together the functional budgets, the '
        'budgeted P&L and the budgeted balance sheet.',
  ),

  // Performance evaluation
  Question(
    subjectId: 'i_ma',
    text: 'A division earns a profit of ₹2,00,000 on capital employed of '
        '₹10,00,000. Its return on investment is:',
    options: ['5%', '50%', '2%', '20%'],
    answerIndex: 3,
    explanation: 'ROI = Profit / Capital employed × 100 = 2,00,000 / 10,00,000 × 100 = 20%.',
  ),
  Question(
    subjectId: 'i_ma',
    text: 'Profit is ₹2,00,000, capital employed is ₹10,00,000 and the cost of '
        'capital is 15%. Residual income is:',
    options: ['₹50,000', '₹1,50,000', '₹2,00,000', '₹30,000'],
    answerIndex: 0,
    explanation: 'RI = Profit − (Capital employed × Cost of capital) = 2,00,000 '
        '− 1,50,000 = ₹50,000.',
  ),
  Question(
    subjectId: 'i_ma',
    text: 'When a perfectly competitive market exists for an intermediate '
        'product, the ideal transfer price is generally the:',
    options: ['Variable cost', 'Full cost', 'Market price', 'Negotiated cost plus 50%'],
    answerIndex: 2,
    explanation: 'Market price is objective and leads both divisions to act in '
        'the interest of the company as a whole.',
  ),
  Question(
    subjectId: 'i_ma',
    text: 'A responsibility centre whose manager controls revenues, costs and '
        'the capital invested is an:',
    options: ['Investment centre', 'Cost centre', 'Revenue centre', 'Expense centre'],
    answerIndex: 0,
    explanation: 'Investment centres are judged on ROI or residual income, since '
        'their managers also control investment.',
  ),
  Question(
    subjectId: 'i_ma',
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
];
