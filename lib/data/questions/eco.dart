import '../../models/question.dart';

const ecoQuestions = [
  // Demand and elasticity
  Question(
    subjectId: 'eco',
    text: 'The law of demand states that, other things remaining constant:',
    options: [
      'Quantity demanded rises when price rises',
      'Quantity demanded falls when price rises',
      'Demand does not depend on price',
      'Supply rises when price rises',
    ],
    answerIndex: 1,
    explanation: 'The law of demand describes an inverse relationship between '
        'price and quantity demanded, ceteris paribus.',
  ),
  Question(
    subjectId: 'eco',
    text: 'Giffen goods are an exception to the:',
    options: [
      'Law of supply',
      'Law of diminishing marginal utility',
      'Law of demand',
      'Law of variable proportions',
    ],
    answerIndex: 2,
    explanation: 'For a Giffen good, quantity demanded rises when its price rises, '
        'which contradicts the law of demand.',
  ),
  Question(
    subjectId: 'eco',
    text: 'Price falls from ₹10 to ₹8 and quantity demanded rises from 100 to '
        '130 units. Price elasticity of demand (percentage method) is:',
    options: ['0.67', '3.0', '1.0', '1.5'],
    answerIndex: 3,
    explanation: '% change in quantity = 30/100 = 30%. % change in price = '
        '2/10 = 20%. Ed = 30% / 20% = 1.5.',
  ),
  Question(
    subjectId: 'eco',
    text: 'When price elasticity of demand is greater than 1, demand is:',
    options: [
      'Relatively elastic',
      'Relatively inelastic',
      'Unitary elastic',
      'Perfectly inelastic',
    ],
    answerIndex: 0,
    explanation: 'Ed > 1 means quantity changes proportionately more than price, '
        'so demand is relatively elastic.',
  ),
  Question(
    subjectId: 'eco',
    text: 'A negative income elasticity of demand indicates:',
    options: ['A luxury good', 'A normal good', 'An inferior good', 'A complementary good'],
    answerIndex: 2,
    explanation: 'For an inferior good, demand falls as income rises, so income '
        'elasticity is negative.',
  ),
  Question(
    subjectId: 'eco',
    text: 'Positive cross elasticity of demand between two goods shows that they are:',
    options: ['Complements', 'Substitutes', 'Unrelated', 'Inferior goods'],
    answerIndex: 1,
    explanation: 'If a rise in the price of tea increases the demand for coffee, '
        'cross elasticity is positive: the goods are substitutes.',
  ),
  Question(
    subjectId: 'eco',
    text: 'Total utility rises from 20 to 26 when consumption increases from 4 '
        'to 5 units. Marginal utility of the 5th unit is:',
    options: ['26', '5.2', '46', '6'],
    answerIndex: 3,
    explanation: 'MU = Change in TU / Change in quantity = (26 − 20) / 1 = 6.',
  ),

  // Production and cost
  Question(
    subjectId: 'eco',
    text: 'The law of variable proportions operates in the:',
    options: ['Short run', 'Long run', 'Very long run', 'Market period only'],
    answerIndex: 0,
    explanation: 'It applies when at least one factor is fixed and another is '
        'varied, which is the short run. Returns to scale apply in the long run.',
  ),
  Question(
    subjectId: 'eco',
    text: 'Which cost curve falls continuously as output increases?',
    options: [
      'Average variable cost',
      'Marginal cost',
      'Average total cost',
      'Average fixed cost',
    ],
    answerIndex: 3,
    explanation: 'AFC = TFC / Q. Total fixed cost is constant, so AFC keeps '
        'falling as output rises (a rectangular hyperbola).',
  ),
  Question(
    subjectId: 'eco',
    text: 'Total fixed cost is ₹1,000 and total variable cost of producing 50 '
        'units is ₹1,500. Average total cost is:',
    options: ['₹30', '₹50', '₹20', '₹2,500'],
    answerIndex: 1,
    explanation: 'TC = 1,000 + 1,500 = ₹2,500. ATC = 2,500 / 50 = ₹50.',
  ),

  // Markets
  Question(
    subjectId: 'eco',
    text: 'Under perfect competition, the demand curve faced by an individual '
        'firm is:',
    options: [
      'Downward sloping',
      'Upward sloping',
      'Perfectly elastic (horizontal)',
      'Perfectly inelastic (vertical)',
    ],
    answerIndex: 2,
    explanation: 'The firm is a price taker and can sell any quantity at the '
        'market price, so its demand curve is horizontal (AR = MR = Price).',
  ),
  Question(
    subjectId: 'eco',
    text: 'A firm is in equilibrium (maximising profit) where:',
    options: ['AR = AC', 'MR = MC', 'TR = TC', 'AC = MC'],
    answerIndex: 1,
    explanation: 'Profit is maximised where MR = MC, with MC cutting MR from below.',
  ),
  Question(
    subjectId: 'eco',
    text: 'A market with a single seller of a product with no close substitutes is:',
    options: ['Oligopoly', 'Monopolistic competition', 'Duopoly', 'Monopoly'],
    answerIndex: 3,
    explanation: 'Monopoly means one seller, no close substitutes and barriers '
        'to the entry of new firms.',
  ),

  // Money and banking
  Question(
    subjectId: 'eco',
    text: 'Which of the following is a primary function of money?',
    options: [
      'Medium of exchange',
      'Store of value',
      'Standard of deferred payments',
      'Transfer of value',
    ],
    answerIndex: 0,
    explanation: 'The primary functions are medium of exchange and measure of '
        'value. The others are secondary functions.',
  ),
  Question(
    subjectId: 'eco',
    text: 'The repo rate is the rate at which:',
    options: [
      'Commercial banks lend to the public',
      'The RBI borrows from commercial banks',
      'The RBI lends short-term funds to commercial banks against securities',
      'Banks pay interest on savings deposits',
    ],
    answerIndex: 2,
    explanation: 'Under repo, the RBI lends to banks against government '
        'securities. The rate at which the RBI absorbs funds from banks is the '
        'reverse repo rate.',
  ),
  Question(
    subjectId: 'eco',
    text: 'To control inflation, the RBI is most likely to:',
    options: [
      'Reduce the repo rate',
      'Reduce the Cash Reserve Ratio',
      'Buy government securities in the open market',
      'Increase the repo rate',
    ],
    answerIndex: 3,
    explanation: 'A higher repo rate makes borrowing costlier and reduces money '
        'supply. The other three options would increase liquidity.',
  ),

  // Management
  Question(
    subjectId: 'eco',
    text: 'The 14 principles of management were given by:',
    options: ['F. W. Taylor', 'Henri Fayol', 'Peter Drucker', 'Elton Mayo'],
    answerIndex: 1,
    explanation: 'Henri Fayol gave the 14 principles of general management. '
        'Taylor is known for scientific management.',
  ),
  Question(
    subjectId: 'eco',
    text: 'The principle that an employee should receive orders from only one '
        'superior is:',
    options: ['Unity of direction', 'Scalar chain', 'Unity of command', 'Division of work'],
    answerIndex: 2,
    explanation: 'Unity of command means one boss for each employee. Unity of '
        'direction means one head and one plan for a group of activities with '
        'the same objective.',
  ),
  Question(
    subjectId: 'eco',
    text: 'In Luther Gulick\'s POSDCORB, the letter "B" stands for:',
    options: ['Budgeting', 'Bargaining', 'Benchmarking', 'Branding'],
    answerIndex: 0,
    explanation: 'POSDCORB: Planning, Organising, Staffing, Directing, '
        'Co-ordinating, Reporting and Budgeting.',
  ),
  Question(
    subjectId: 'eco',
    text: 'In Maslow\'s hierarchy of needs, the highest-level need is:',
    options: ['Safety needs', 'Esteem needs', 'Social needs', 'Self-actualisation'],
    answerIndex: 3,
    explanation: 'The order from bottom to top is physiological, safety, social, '
        'esteem and self-actualisation.',
  ),
  Question(
    subjectId: 'eco',
    text: '"Span of control" refers to:',
    options: [
      'The number of levels in an organisation',
      'The number of subordinates a manager can effectively supervise',
      'The area of a manager\'s authority',
      'The time taken to complete a task',
    ],
    answerIndex: 1,
    explanation: 'Span of control (span of management) is the number of '
        'subordinates directly and effectively supervised by one manager.',
  ),
];
