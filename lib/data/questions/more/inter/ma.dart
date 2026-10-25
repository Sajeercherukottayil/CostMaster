import '../../../../models/question.dart';

const interMaMoreQuestions = [
  // Decision Making
  Question(
    subjectId: 'i_ma',
    chapter: 'Decision Making',
    text: 'A cost that will be saved if an activity is stopped is:',
    options: [
      'A committed cost',
      'An avoidable cost',
      'A sunk cost',
      'An apportioned cost',
    ],
    answerIndex: 1,
    explanation:
        'Avoidable costs are relevant to decisions such as closing a '
        'department.',
  ),
  Question(
    subjectId: 'i_ma',
    chapter: 'Decision Making',
    text:
        'Rent payable under a long-term lease that cannot be cancelled is, '
        'for a short-term decision, a:',
    options: [
      'Relevant cost',
      'Committed (irrelevant) cost',
      'Variable cost',
      'Opportunity cost',
    ],
    answerIndex: 1,
    explanation:
        'It must be paid whatever is decided, so it does not affect '
        'the choice.',
  ),
  Question(
    subjectId: 'i_ma',
    chapter: 'Decision Making',
    text:
        'An export order at a price below the normal price should be '
        'accepted, other things equal, if:',
    options: [
      'The price covers total cost',
      'The price covers variable cost, there is spare capacity and the home '
          'market is not affected',
      'The buyer is a large company',
      'Fixed costs are high',
    ],
    answerIndex: 1,
    explanation:
        'Any contribution adds to profit when fixed costs do not '
        'change and regular sales are not disturbed.',
  ),
  Question(
    subjectId: 'i_ma',
    chapter: 'Decision Making',
    text: 'Setting a low initial price to win market share quickly is:',
    options: [
      'Price skimming',
      'Penetration pricing',
      'Cost-plus pricing',
      'Premium pricing',
    ],
    answerIndex: 1,
    explanation:
        'It suits price-sensitive markets and products with economies '
        'of scale.',
  ),
  Question(
    subjectId: 'i_ma',
    chapter: 'Decision Making',
    text:
        'Charging a high price when a new, unique product is launched, and '
        'lowering it later, is:',
    options: [
      'Penetration pricing',
      'Price skimming',
      'Marginal cost pricing',
      'Dumping',
    ],
    answerIndex: 1,
    explanation:
        'Skimming captures buyers willing to pay more before '
        'competitors arrive.',
  ),
  Question(
    subjectId: 'i_ma',
    chapter: 'Decision Making',
    text:
        'In a make-or-buy decision with no spare capacity, the cost of '
        'making must include:',
    options: [
      'Only variable cost',
      'Variable cost plus the contribution lost on work displaced',
      'Apportioned fixed overheads',
      'Sunk costs',
    ],
    answerIndex: 1,
    explanation: 'The contribution given up is an opportunity cost of making.',
  ),
  Question(
    subjectId: 'i_ma',
    chapter: 'Decision Making',
    text: 'A product line should be dropped, on financial grounds, if:',
    options: [
      'It shows a loss after apportioned fixed costs',
      'Its contribution is less than the fixed costs that would be avoided',
      'Its sales fall',
      'It has the lowest P/V ratio',
    ],
    answerIndex: 1,
    explanation:
        'Apportioned unavoidable costs continue anyway, so they do not '
        'matter.',
  ),
  Question(
    subjectId: 'i_ma',
    chapter: 'Decision Making',
    text:
        'An order would raise revenue by ₹50,000 and costs by ₹38,000. The '
        'incremental profit is:',
    options: ['₹88,000', '₹12,000', '₹38,000', '₹50,000'],
    answerIndex: 1,
    explanation: 'Incremental profit = 50,000 − 38,000 = ₹12,000.',
  ),
  Question(
    subjectId: 'i_ma',
    chapter: 'Decision Making',
    text: 'Which is a qualitative factor in a make-or-buy decision?',
    options: [
      'Variable cost of making',
      'Reliability and quality of the outside supplier',
      'Purchase price',
      'Contribution lost',
    ],
    answerIndex: 1,
    explanation:
        'Others include confidentiality, control over supply and '
        'effect on workers.',
  ),
  Question(
    subjectId: 'i_ma',
    chapter: 'Decision Making',
    text:
        'When there are two or more limiting factors, the best product mix '
        'is found using:',
    options: [
      'Contribution per unit',
      'Linear programming',
      'Payback period',
      'The high-low method',
    ],
    answerIndex: 1,
    explanation:
        'With one constraint, ranking by contribution per unit of the '
        'constraint is enough.',
  ),

  // Budgeting & Budgetary Control
  Question(
    subjectId: 'i_ma',
    chapter: 'Budgeting & Budgetary Control',
    text:
        'A document setting out budget procedures, responsibilities and '
        'timetables is the:',
    options: [
      'Master budget',
      'Budget manual',
      'Cash budget',
      'Flexible budget',
    ],
    answerIndex: 1,
    explanation: 'It guides everyone involved in preparing budgets.',
  ),
  Question(
    subjectId: 'i_ma',
    chapter: 'Budgeting & Budgetary Control',
    text: 'Budgeting where managers help set their own budgets is:',
    options: [
      'Imposed budgeting',
      'Participative budgeting',
      'Zero-based budgeting',
      'Incremental budgeting',
    ],
    answerIndex: 1,
    explanation:
        'It improves motivation and uses local knowledge, but may '
        'lead to padding.',
  ),
  Question(
    subjectId: 'i_ma',
    chapter: 'Budgeting & Budgetary Control',
    text:
        'Deliberately overestimating costs or underestimating revenue in a '
        'budget is called:',
    options: ['Budget variance', 'Budgetary slack', 'Flexing', 'Zero-basing'],
    answerIndex: 1,
    explanation:
        'Slack makes targets easier to meet, and reduces the '
        'budget\'s usefulness for control.',
  ),
  Question(
    subjectId: 'i_ma',
    chapter: 'Budgeting & Budgetary Control',
    text:
        'Preparing next year\'s budget by adjusting this year\'s figures '
        'for expected changes is:',
    options: [
      'Zero-based budgeting',
      'Incremental budgeting',
      'Activity-based budgeting',
      'Rolling budgeting',
    ],
    answerIndex: 1,
    explanation: 'It is quick, but can carry forward past inefficiencies.',
  ),
  Question(
    subjectId: 'i_ma',
    chapter: 'Budgeting & Budgetary Control',
    text: 'Activity-based budgeting builds budgets from:',
    options: [
      'Last year\'s totals',
      'Expected activity levels and their cost drivers',
      'Sales only',
      'Head office instructions',
    ],
    answerIndex: 1,
    explanation:
        'Planned activities (such as set-ups or orders) are '
        'multiplied by driver rates to budget overheads.',
  ),
  Question(
    subjectId: 'i_ma',
    chapter: 'Budgeting & Budgetary Control',
    text:
        'Material needed for production is 28,000 kg. Opening stock is '
        '6,000 kg and desired closing stock 4,000 kg. Material to be '
        'purchased is:',
    options: ['26,000 kg', '30,000 kg', '38,000 kg', '18,000 kg'],
    answerIndex: 0,
    explanation: 'Purchases = 28,000 + 4,000 − 6,000 = 26,000 kg.',
  ),
  Question(
    subjectId: 'i_ma',
    chapter: 'Budgeting & Budgetary Control',
    text: 'Which item is excluded from a cash budget?',
    options: [
      'Payment to creditors',
      'Depreciation',
      'Receipts from debtors',
      'Payment of wages',
    ],
    answerIndex: 1,
    explanation: 'Depreciation is a non-cash expense.',
  ),
  Question(
    subjectId: 'i_ma',
    chapter: 'Budgeting & Budgetary Control',
    text:
        'Semi-variable cost is ₹30,000 at 5,000 units and ₹40,000 at 7,500 '
        'units. The flexible budget allowance at 6,000 units is:',
    options: ['₹34,000', '₹36,000', '₹32,000', '₹35,000'],
    answerIndex: 0,
    explanation:
        'Variable rate = 10,000 ÷ 2,500 = ₹4 per unit; fixed = 30,000 '
        '− 20,000 = 10,000. At 6,000 units: 10,000 + 24,000 = ₹34,000.',
  ),
  Question(
    subjectId: 'i_ma',
    chapter: 'Budgeting & Budgetary Control',
    text:
        'Standard hours for actual output are 900, actual hours 1,000 and '
        'budgeted hours 1,200. The activity ratio is:',
    options: ['90%', '83.33%', '75%', '120%'],
    answerIndex: 2,
    explanation:
        'Activity ratio = SH ÷ BH = 900 ÷ 1,200 = 75%. It equals the '
        'efficiency ratio (90%) × capacity ratio (83.33%).',
  ),
  Question(
    subjectId: 'i_ma',
    chapter: 'Budgeting & Budgetary Control',
    text: 'A budget committee usually:',
    options: [
      'Prepares all budgets alone',
      'Coordinates budget preparation and approves budgets before the board',
      'Audits the accounts',
      'Sets tax rates',
    ],
    answerIndex: 1,
    explanation:
        'It typically includes functional heads, with the budget '
        'officer as secretary.',
  ),

  // Performance Measurement
  Question(
    subjectId: 'i_ma',
    chapter: 'Performance Measurement',
    text:
        'ROI equals profit margin × asset turnover. A division can raise '
        'ROI without changing margin by:',
    options: [
      'Increasing assets',
      'Increasing sales from the same assets',
      'Cutting sales',
      'Raising the cost of capital',
    ],
    answerIndex: 1,
    explanation: 'Higher sales per rupee of assets raise asset turnover.',
  ),
  Question(
    subjectId: 'i_ma',
    chapter: 'Performance Measurement',
    text: 'Residual income encourages goal congruence because managers:',
    options: [
      'Reject all new investment',
      'Accept any project earning more than the cost of capital',
      'Focus only on percentages',
      'Ignore the cost of capital',
    ],
    answerIndex: 1,
    explanation:
        'Any project with positive RI increases the division\'s RI, '
        'which matches the company\'s interest.',
  ),
  Question(
    subjectId: 'i_ma',
    chapter: 'Performance Measurement',
    text: 'Market Value Added (MVA) is:',
    options: [
      'Sales minus costs',
      'Market value of the firm minus capital invested',
      'NOPAT minus capital charge',
      'Dividends paid',
    ],
    answerIndex: 1,
    explanation:
        'MVA shows the wealth created for investors over time. EVA is '
        'the yearly measure.',
  ),
  Question(
    subjectId: 'i_ma',
    chapter: 'Performance Measurement',
    text: 'Defect rate is a measure in which Balanced Scorecard perspective?',
    options: [
      'Financial',
      'Customer',
      'Internal business process',
      'Learning and growth',
    ],
    answerIndex: 2,
    explanation:
        'Process measures include cycle time, defect rates and '
        'productivity.',
  ),
  Question(
    subjectId: 'i_ma',
    chapter: 'Performance Measurement',
    text:
        'Employee training hours are a measure in the Balanced Scorecard '
        'perspective of:',
    options: [
      'Financial',
      'Customer',
      'Internal business process',
      'Learning and growth',
    ],
    answerIndex: 3,
    explanation:
        'Learning and growth covers people, systems and culture that '
        'support future improvement.',
  ),
  Question(
    subjectId: 'i_ma',
    chapter: 'Performance Measurement',
    text: 'Under dual transfer pricing:',
    options: [
      'Both divisions use the same price',
      'The selling division records one price (such as market price) and the '
          'buying division another (such as variable cost)',
      'No price is used',
      'Only the head office records the transfer',
    ],
    answerIndex: 1,
    explanation:
        'It motivates both divisions, but total divisional profits '
        'exceed company profit, so an adjustment is needed.',
  ),
  Question(
    subjectId: 'i_ma',
    chapter: 'Performance Measurement',
    text: 'A weakness of full cost-plus transfer pricing is that it:',
    options: [
      'Is hard to calculate',
      'Passes the supplying division\'s inefficiencies on to the buyer',
      'Always gives a loss',
      'Ignores fixed costs',
    ],
    answerIndex: 1,
    explanation: 'Using standard rather than actual cost reduces this problem.',
  ),
  Question(
    subjectId: 'i_ma',
    chapter: 'Performance Measurement',
    text: 'Goal congruence means that:',
    options: [
      'All divisions earn the same profit',
      'Managers\' decisions for their own units also benefit the company as '
          'a whole',
      'Budgets are always met',
      'Transfer prices are equal to cost',
    ],
    answerIndex: 1,
    explanation:
        'Performance measures and transfer prices should be designed '
        'to support it.',
  ),
  Question(
    subjectId: 'i_ma',
    chapter: 'Performance Measurement',
    text:
        'For judging a divisional manager, the most appropriate profit '
        'measure is:',
    options: [
      'Net profit after all head office charges',
      'Controllable profit',
      'Gross profit only',
      'Sales',
    ],
    answerIndex: 1,
    explanation: 'Managers should be judged on items they can influence.',
  ),
  Question(
    subjectId: 'i_ma',
    chapter: 'Performance Measurement',
    text:
        'A transfer price set by discussion between the buying and selling '
        'divisions is a:',
    options: [
      'Market-based price',
      'Negotiated transfer price',
      'Cost-based price',
      'Dual price',
    ],
    answerIndex: 1,
    explanation:
        'It works best when managers have equal bargaining power and '
        'good information.',
  ),
];
