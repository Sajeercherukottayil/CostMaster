import '../../models/question.dart';

const ecoQuestions = [
  // Demand and elasticity
  Question(
    subjectId: 'eco',
    chapter: 'Demand & Consumer Behaviour',
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
    chapter: 'Demand & Consumer Behaviour',
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
    chapter: 'Demand & Consumer Behaviour',
    text: 'Price falls from ₹10 to ₹8 and quantity demanded rises from 100 to '
        '130 units. Price elasticity of demand (percentage method) is:',
    options: ['0.67', '3.0', '1.0', '1.5'],
    answerIndex: 3,
    explanation: '% change in quantity = 30/100 = 30%. % change in price = '
        '2/10 = 20%. Ed = 30% / 20% = 1.5.',
  ),
  Question(
    subjectId: 'eco',
    chapter: 'Demand & Consumer Behaviour',
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
    chapter: 'Demand & Consumer Behaviour',
    text: 'A negative income elasticity of demand indicates:',
    options: ['A luxury good', 'A normal good', 'An inferior good', 'A complementary good'],
    answerIndex: 2,
    explanation: 'For an inferior good, demand falls as income rises, so income '
        'elasticity is negative.',
  ),
  Question(
    subjectId: 'eco',
    chapter: 'Demand & Consumer Behaviour',
    text: 'Positive cross elasticity of demand between two goods shows that they are:',
    options: ['Complements', 'Substitutes', 'Unrelated', 'Inferior goods'],
    answerIndex: 1,
    explanation: 'If a rise in the price of tea increases the demand for coffee, '
        'cross elasticity is positive: the goods are substitutes.',
  ),
  Question(
    subjectId: 'eco',
    chapter: 'Demand & Consumer Behaviour',
    text: 'Total utility rises from 20 to 26 when consumption increases from 4 '
        'to 5 units. Marginal utility of the 5th unit is:',
    options: ['26', '5.2', '46', '6'],
    answerIndex: 3,
    explanation: 'MU = Change in TU / Change in quantity = (26 − 20) / 1 = 6.',
  ),
  Question(
    subjectId: 'eco',
    chapter: 'Demand & Consumer Behaviour',
    text: 'A change in quantity demanded caused only by a change in the '
        'good\'s own price is shown by:',
    options: [
      'A movement along the same demand curve',
      'A leftward shift of the demand curve',
      'A rightward shift of the demand curve',
      'A shift of the supply curve',
    ],
    answerIndex: 0,
    explanation: 'Own-price changes cause movement along the curve (extension or '
        'contraction); other factors shift the curve.',
  ),
  Question(
    subjectId: 'eco',
    chapter: 'Demand & Consumer Behaviour',
    text: 'Indifference curves are normally:',
    options: [
      'Convex to the origin',
      'Vertical straight lines',
      'Upward sloping',
      'Concave to the origin',
    ],
    answerIndex: 0,
    explanation: 'They are convex because of the diminishing marginal rate of '
        'substitution.',
  ),
  Question(
    subjectId: 'eco',
    chapter: 'Demand & Consumer Behaviour',
    text: 'The demand curve for a normal good generally slopes:',
    options: [
      'Downward from left to right',
      'Horizontally',
      'Upward from left to right',
      'Vertically',
    ],
    answerIndex: 0,
    explanation: 'As price falls, quantity demanded rises, giving a negative slope.',
  ),

  // Production and cost
  Question(
    subjectId: 'eco',
    chapter: 'Production & Cost',
    text: 'The law of variable proportions operates in the:',
    options: ['Short run', 'Long run', 'Very long run', 'Market period only'],
    answerIndex: 0,
    explanation: 'It applies when at least one factor is fixed and another is '
        'varied, which is the short run. Returns to scale apply in the long run.',
  ),
  Question(
    subjectId: 'eco',
    chapter: 'Production & Cost',
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
    chapter: 'Production & Cost',
    text: 'Total fixed cost is ₹1,000 and total variable cost of producing 50 '
        'units is ₹1,500. Average total cost is:',
    options: ['₹30', '₹50', '₹20', '₹2,500'],
    answerIndex: 1,
    explanation: 'TC = 1,000 + 1,500 = ₹2,500. ATC = 2,500 / 50 = ₹50.',
  ),
  Question(
    subjectId: 'eco',
    chapter: 'Production & Cost',
    text: 'Total cost of 10 units is ₹500 and of 11 units ₹540. The marginal '
        'cost of the 11th unit is:',
    options: ['₹49.09', '₹540', '₹50', '₹40'],
    answerIndex: 3,
    explanation: 'MC = TC of 11 units − TC of 10 units = 540 − 500 = ₹40.',
  ),
  Question(
    subjectId: 'eco',
    chapter: 'Production & Cost',
    text: 'In the long run:',
    options: [
      'All factors of production are variable',
      'Only labour is variable',
      'All factors are fixed',
      'Only capital is variable',
    ],
    answerIndex: 0,
    explanation: 'The long run is a period long enough for the firm to change every '
        'input, including plant size.',
  ),
  Question(
    subjectId: 'eco',
    chapter: 'Production & Cost',
    text: 'Economies of scale lead to:',
    options: [
      'A fall in long-run average cost as output increases',
      'A rise in long-run average cost',
      'A rise in fixed cost',
      'No change in cost per unit',
    ],
    answerIndex: 0,
    explanation: 'Benefits of large-scale production, such as specialisation and '
        'bulk buying, reduce the cost per unit.',
  ),
  Question(
    subjectId: 'eco',
    chapter: 'Production & Cost',
    text: 'When total product is at its maximum, marginal product is:',
    options: [
      'Zero',
      'Negative and falling',
      'Maximum',
      'Equal to average product',
    ],
    answerIndex: 0,
    explanation: 'Beyond this point, MP becomes negative and TP starts falling.',
  ),
  Question(
    subjectId: 'eco',
    chapter: 'Production & Cost',
    text: 'The reward for the entrepreneur as a factor of production is:',
    options: ['Profit', 'Interest', 'Wages', 'Rent'],
    answerIndex: 0,
    explanation: 'Land earns rent, labour wages and capital interest.',
  ),
  Question(
    subjectId: 'eco',
    chapter: 'Production & Cost',
    text: 'An isoquant shows:',
    options: [
      'Total cost at each output',
      'Combinations of goods giving equal satisfaction',
      'Combinations of inputs that produce the same output',
      'Prices of inputs',
    ],
    answerIndex: 2,
    explanation: 'It is the producer\'s equivalent of an indifference curve.',
  ),
  Question(
    subjectId: 'eco',
    chapter: 'Production & Cost',
    text: 'The marginal cost curve cuts the average cost curve at:',
    options: [
      'The minimum point of the average cost curve',
      'The point where output is zero',
      'The maximum point of the average cost curve',
      'The origin',
    ],
    answerIndex: 0,
    explanation: 'When MC is below AC, AC falls; when MC is above AC, AC rises.',
  ),

  // Markets
  Question(
    subjectId: 'eco',
    chapter: 'Market Structures',
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
    chapter: 'Market Structures',
    text: 'A firm is in equilibrium (maximising profit) where:',
    options: ['AR = AC', 'MR = MC', 'TR = TC', 'AC = MC'],
    answerIndex: 1,
    explanation: 'Profit is maximised where MR = MC, with MC cutting MR from below.',
  ),
  Question(
    subjectId: 'eco',
    chapter: 'Market Structures',
    text: 'A market with a single seller of a product with no close substitutes is:',
    options: ['Oligopoly', 'Monopolistic competition', 'Duopoly', 'Monopoly'],
    answerIndex: 3,
    explanation: 'Monopoly means one seller, no close substitutes and barriers '
        'to the entry of new firms.',
  ),
  Question(
    subjectId: 'eco',
    chapter: 'Market Structures',
    text: 'Under monopolistic competition, firms sell:',
    options: [
      'Identical products',
      'Products with no substitutes',
      'Differentiated products',
      'Only government-controlled products',
    ],
    answerIndex: 2,
    explanation: 'Many sellers offer similar but differentiated products, for '
        'example toothpaste brands.',
  ),
  Question(
    subjectId: 'eco',
    chapter: 'Market Structures',
    text: 'A market with a few large sellers is called:',
    options: ['Perfect competition', 'Monopsony', 'Oligopoly', 'Monopoly'],
    answerIndex: 2,
    explanation: 'In an oligopoly, a few firms dominate and each firm\'s decisions '
        'affect its rivals.',
  ),
  Question(
    subjectId: 'eco',
    chapter: 'Market Structures',
    text: 'In the long run under perfect competition, firms earn:',
    options: [
      'Monopoly profit',
      'Supernormal profit',
      'Only normal profit',
      'Losses',
    ],
    answerIndex: 2,
    explanation: 'Free entry and exit remove supernormal profit or losses, leaving '
        'only normal profit.',
  ),
  Question(
    subjectId: 'eco',
    chapter: 'Market Structures',
    text: 'Price discrimination is possible mainly under:',
    options: [
      'Perfect competition',
      'Free entry markets',
      'Pure competition',
      'Monopoly',
    ],
    answerIndex: 3,
    explanation: 'A monopolist with market power can charge different prices in '
        'separable markets.',
  ),
  Question(
    subjectId: 'eco',
    chapter: 'Market Structures',
    text: 'The kinked demand curve model is associated with:',
    options: [
      'Monopoly',
      'Monopolistic competition',
      'Perfect competition',
      'Oligopoly',
    ],
    answerIndex: 3,
    explanation: 'It explains price rigidity among a few interdependent sellers.',
  ),
  Question(
    subjectId: 'eco',
    chapter: 'Market Structures',
    text: 'Under perfect competition, an individual firm is a:',
    options: [
      'Price discriminator',
      'Price leader',
      'Price taker',
      'Price maker',
    ],
    answerIndex: 2,
    explanation: 'The price is set by industry demand and supply.',
  ),
  Question(
    subjectId: 'eco',
    chapter: 'Market Structures',
    text: 'Selling costs such as advertising are most important in:',
    options: [
      'Perfect competition',
      'A barter economy',
      'Monopolistic competition',
      'Pure monopoly with no substitutes',
    ],
    answerIndex: 2,
    explanation: 'Firms advertise to differentiate their products from close '
        'substitutes.',
  ),

  // Money and banking
  Question(
    subjectId: 'eco',
    chapter: 'Money & Banking',
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
    chapter: 'Money & Banking',
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
    chapter: 'Money & Banking',
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
  Question(
    subjectId: 'eco',
    chapter: 'Money & Banking',
    text: 'The Cash Reserve Ratio (CRR) is the share of deposits that banks '
        'must keep with:',
    options: [
      'The Government of India',
      'SEBI',
      'Themselves as cash in hand',
      'The Reserve Bank of India',
    ],
    answerIndex: 3,
    explanation: 'CRR is held as balances with the RBI; the SLR is kept by banks '
        'themselves in liquid assets.',
  ),
  Question(
    subjectId: 'eco',
    chapter: 'Money & Banking',
    text: 'Inflation means:',
    options: [
      'A rise in the price of one commodity',
      'An increase in production',
      'A sustained rise in the general price level',
      'A fall in the general price level',
    ],
    answerIndex: 2,
    explanation: 'Inflation is a continuous rise in the overall level of prices, '
        'which reduces the purchasing power of money.',
  ),
  Question(
    subjectId: 'eco',
    chapter: 'Money & Banking',
    text: 'In India, currency notes (other than the one-rupee note) are '
        'issued by the:',
    options: [
      'Security Printing Press',
      'Reserve Bank of India',
      'Ministry of Finance',
      'State Bank of India',
    ],
    answerIndex: 1,
    explanation: 'The RBI has the sole right to issue banknotes; one-rupee notes and '
        'coins are issued by the Government of India.',
  ),
  Question(
    subjectId: 'eco',
    chapter: 'Money & Banking',
    text: 'The bank rate is the rate at which:',
    options: [
      'The RBI lends long-term funds to or rediscounts bills of commercial banks',
      'Banks lend to customers',
      'Banks pay interest on savings accounts',
      'The government borrows from the public',
    ],
    answerIndex: 0,
    explanation: 'Changes in the bank rate influence the cost of credit in the '
        'economy.',
  ),
  Question(
    subjectId: 'eco',
    chapter: 'Money & Banking',
    text: 'The Statutory Liquidity Ratio (SLR) is maintained by banks in the '
        'form of:',
    options: [
      'Fixed assets',
      'Loans to customers',
      'Balances with the RBI only',
      'Liquid assets such as cash, gold and approved securities',
    ],
    answerIndex: 3,
    explanation: 'SLR assets are held by the banks themselves, unlike CRR balances '
        'kept with the RBI.',
  ),
  Question(
    subjectId: 'eco',
    chapter: 'Money & Banking',
    text: 'If the cash reserve requirement is 20%, the credit multiplier is:',
    options: ['20', '0.2', '5', '2'],
    answerIndex: 2,
    explanation: 'Credit multiplier = 1 ÷ Reserve ratio = 1 ÷ 0.2 = 5.',
  ),
  Question(
    subjectId: 'eco',
    chapter: 'Money & Banking',
    text: 'Open market operations mean:',
    options: [
      'Issue of new currency notes',
      'Foreign trade transactions',
      'The RBI buying or selling government securities',
      'Banks opening new branches',
    ],
    answerIndex: 2,
    explanation: 'Selling securities absorbs liquidity; buying them injects '
        'liquidity.',
  ),

  // Management
  Question(
    subjectId: 'eco',
    chapter: 'Principles & Functions of Management',
    text: 'The 14 principles of management were given by:',
    options: ['F. W. Taylor', 'Henri Fayol', 'Peter Drucker', 'Elton Mayo'],
    answerIndex: 1,
    explanation: 'Henri Fayol gave the 14 principles of general management. '
        'Taylor is known for scientific management.',
  ),
  Question(
    subjectId: 'eco',
    chapter: 'Principles & Functions of Management',
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
    chapter: 'Principles & Functions of Management',
    text: 'In Luther Gulick\'s POSDCORB, the letter "B" stands for:',
    options: ['Budgeting', 'Bargaining', 'Benchmarking', 'Branding'],
    answerIndex: 0,
    explanation: 'POSDCORB: Planning, Organising, Staffing, Directing, '
        'Co-ordinating, Reporting and Budgeting.',
  ),
  Question(
    subjectId: 'eco',
    chapter: 'Principles & Functions of Management',
    text: 'In Maslow\'s hierarchy of needs, the highest-level need is:',
    options: ['Safety needs', 'Esteem needs', 'Social needs', 'Self-actualisation'],
    answerIndex: 3,
    explanation: 'The order from bottom to top is physiological, safety, social, '
        'esteem and self-actualisation.',
  ),
  Question(
    subjectId: 'eco',
    chapter: 'Principles & Functions of Management',
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
  Question(
    subjectId: 'eco',
    chapter: 'Principles & Functions of Management',
    text: 'Which function of management is considered the primary function?',
    options: ['Controlling', 'Staffing', 'Directing', 'Planning'],
    answerIndex: 3,
    explanation: 'Planning comes first; organising, staffing, directing and '
        'controlling are performed to achieve the plans.',
  ),
  Question(
    subjectId: 'eco',
    chapter: 'Principles & Functions of Management',
    text: 'McGregor\'s Theory X assumes that employees:',
    options: [
      'Are self-motivated',
      'Dislike work and need close supervision',
      'Enjoy work and seek responsibility',
      'Prefer to work without any control',
    ],
    answerIndex: 1,
    explanation: 'Theory X is a pessimistic view; Theory Y assumes people like work '
        'and accept responsibility.',
  ),
  Question(
    subjectId: 'eco',
    chapter: 'Principles & Functions of Management',
    text: 'The controlling function of management involves:',
    options: [
      'Setting objectives for the first time',
      'Recruiting employees',
      'Designing the organisation structure',
      'Comparing actual performance with standards and taking corrective action',
    ],
    answerIndex: 3,
    explanation: 'Controlling ensures that activities go according to plan.',
  ),
  Question(
    subjectId: 'eco',
    chapter: 'Principles & Functions of Management',
    text: 'Under Herzberg\'s two-factor theory, salary and working conditions '
        'are:',
    options: [
      'Motivators',
      'Esteem needs',
      'Self-actualisation needs',
      'Hygiene factors',
    ],
    answerIndex: 3,
    explanation: 'Hygiene factors prevent dissatisfaction; motivators such as '
        'achievement and recognition create satisfaction.',
  ),
  Question(
    subjectId: 'eco',
    chapter: 'Principles & Functions of Management',
    text: 'In delegation of authority, which of the following cannot be '
        'delegated?',
    options: [
      'Work',
      'Authority',
      'Ultimate responsibility (accountability)',
      'Routine tasks',
    ],
    answerIndex: 2,
    explanation: 'A manager may delegate authority, but remains accountable for the '
        'result.',
  ),
];
