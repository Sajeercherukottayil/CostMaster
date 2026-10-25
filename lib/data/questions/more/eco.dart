import '../../../models/question.dart';

const ecoMoreQuestions = [
  // Demand & Consumer Behaviour
  Question(
    subjectId: 'eco',
    chapter: 'Demand & Consumer Behaviour',
    text: 'When price elasticity of demand is zero, demand is:',
    options: [
      'Perfectly elastic',
      'Perfectly inelastic',
      'Unitary elastic',
      'Relatively elastic',
    ],
    answerIndex: 1,
    explanation:
        'Quantity demanded does not change at all with price; the '
        'demand curve is vertical.',
  ),
  Question(
    subjectId: 'eco',
    chapter: 'Demand & Consumer Behaviour',
    text:
        'If demand has unitary elasticity, a fall in price will make total '
        'expenditure:',
    options: ['Rise', 'Fall', 'Stay the same', 'Become zero'],
    answerIndex: 2,
    explanation:
        'With Ed = 1, the percentage rise in quantity equals the '
        'percentage fall in price, so total spending is unchanged.',
  ),
  Question(
    subjectId: 'eco',
    chapter: 'Demand & Consumer Behaviour',
    text:
        'The law of diminishing marginal utility states that as more units '
        'of a good are consumed:',
    options: [
      'Total utility falls',
      'Marginal utility falls',
      'Marginal utility rises',
      'Price falls',
    ],
    answerIndex: 1,
    explanation:
        'Each extra unit adds less satisfaction than the one before, '
        'though total utility may still rise.',
  ),
  Question(
    subjectId: 'eco',
    chapter: 'Demand & Consumer Behaviour',
    text:
        'A consumer is willing to pay ₹50 for a good but its price is ₹30. '
        'Consumer surplus is:',
    options: ['₹80', '₹20', '₹30', '₹50'],
    answerIndex: 1,
    explanation:
        'Consumer surplus = willingness to pay − actual price = 50 − '
        '30 = ₹20.',
  ),
  Question(
    subjectId: 'eco',
    chapter: 'Demand & Consumer Behaviour',
    text: 'For a normal good, a rise in consumer income causes:',
    options: [
      'A movement along the demand curve',
      'A rightward shift of the demand curve',
      'A leftward shift of the demand curve',
      'No change in demand',
    ],
    answerIndex: 1,
    explanation:
        'A change in a factor other than the good\'s own price shifts '
        'the curve. More income raises demand for normal goods at every '
        'price.',
  ),
  Question(
    subjectId: 'eco',
    chapter: 'Demand & Consumer Behaviour',
    text: 'Cars and petrol are an example of:',
    options: [
      'Substitute goods',
      'Complementary goods',
      'Giffen goods',
      'Inferior goods',
    ],
    answerIndex: 1,
    explanation:
        'Complements are used together, so a rise in the price of one '
        'reduces demand for the other. Their cross elasticity is negative.',
  ),
  Question(
    subjectId: 'eco',
    chapter: 'Demand & Consumer Behaviour',
    text:
        'Along a normal indifference curve, the marginal rate of '
        'substitution:',
    options: ['Rises', 'Diminishes', 'Is constant', 'Is zero'],
    answerIndex: 1,
    explanation:
        'As a consumer has more of X, they give up less of Y for each '
        'extra unit of X. This is why indifference curves are convex.',
  ),
  Question(
    subjectId: 'eco',
    chapter: 'Demand & Consumer Behaviour',
    text:
        'The slope of a budget line (X on the horizontal axis) is equal '
        'to:',
    options: ['−Px ÷ Py', '−Py ÷ Px', 'Income ÷ Px', 'MUx ÷ MUy'],
    answerIndex: 0,
    explanation:
        'The budget line shows the rate at which the market lets the '
        'consumer trade Y for X, which is the price ratio.',
  ),
  Question(
    subjectId: 'eco',
    chapter: 'Demand & Consumer Behaviour',
    text:
        'On a straight-line demand curve, price elasticity at the mid-point '
        'is:',
    options: ['0', '1', 'Infinity', 'Greater than 1'],
    answerIndex: 1,
    explanation:
        'Elasticity = lower segment ÷ upper segment. At the mid-point '
        'the two are equal, so Ed = 1.',
  ),
  Question(
    subjectId: 'eco',
    chapter: 'Demand & Consumer Behaviour',
    text: 'A consumer of a single good is in equilibrium when:',
    options: [
      'Total utility is zero',
      'Marginal utility equals the price paid',
      'Marginal utility is at its maximum',
      'Price is zero',
    ],
    answerIndex: 1,
    explanation:
        'The consumer buys until the satisfaction from the last unit '
        '(in money terms) equals its price.',
  ),

  // Production & Cost
  Question(
    subjectId: 'eco',
    chapter: 'Production & Cost',
    text:
        'Total fixed cost is ₹1,200 and output is 40 units. Average fixed '
        'cost is:',
    options: ['₹48,000', '₹30', '₹40', '₹1,240'],
    answerIndex: 1,
    explanation: 'AFC = TFC ÷ Q = 1,200 ÷ 40 = ₹30.',
  ),
  Question(
    subjectId: 'eco',
    chapter: 'Production & Cost',
    text: 'When all inputs are doubled and output triples, there are:',
    options: [
      'Constant returns to scale',
      'Increasing returns to scale',
      'Decreasing returns to scale',
      'Diminishing marginal returns',
    ],
    answerIndex: 1,
    explanation:
        'Output rises more than in proportion to inputs, so returns to '
        'scale are increasing.',
  ),
  Question(
    subjectId: 'eco',
    chapter: 'Production & Cost',
    text:
        'The rent an owner could have earned by letting out his own '
        'building, used in his business, is an:',
    options: ['Explicit cost', 'Implicit cost', 'Sunk cost', 'Variable cost'],
    answerIndex: 1,
    explanation:
        'Implicit costs are the opportunity costs of using the firm\'s '
        'own resources. No payment is made to outsiders.',
  ),
  Question(
    subjectId: 'eco',
    chapter: 'Production & Cost',
    text: 'Average variable cost is at its minimum where it equals:',
    options: [
      'Average fixed cost',
      'Marginal cost',
      'Average revenue',
      'Total cost',
    ],
    answerIndex: 1,
    explanation: 'The MC curve cuts both AVC and AC at their lowest points.',
  ),
  Question(
    subjectId: 'eco',
    chapter: 'Production & Cost',
    text: 'The long-run average cost curve is also called the:',
    options: ['Envelope curve', 'Demand curve', 'Isoquant', 'Kinked curve'],
    answerIndex: 0,
    explanation:
        'It envelopes the short-run average cost curves, touching each '
        'at one point.',
  ),
  Question(
    subjectId: 'eco',
    chapter: 'Production & Cost',
    text: 'A production function shows the relationship between:',
    options: [
      'Price and quantity demanded',
      'Physical inputs and physical output',
      'Cost and revenue',
      'Income and consumption',
    ],
    answerIndex: 1,
    explanation:
        'It states the maximum output obtainable from given inputs '
        'with given technology.',
  ),
  Question(
    subjectId: 'eco',
    chapter: 'Production & Cost',
    text: 'An isocost line shows:',
    options: [
      'Combinations of inputs giving the same output',
      'Combinations of inputs that cost the same total amount',
      'Output at different prices',
      'Costs at different outputs',
    ],
    answerIndex: 1,
    explanation:
        'All points on an isocost line cost the firm the same total '
        'outlay, given input prices.',
  ),
  Question(
    subjectId: 'eco',
    chapter: 'Production & Cost',
    text:
        'A producer minimises cost for a given output where the marginal '
        'rate of technical substitution equals:',
    options: [
      'The ratio of input prices',
      'The price of output',
      'Average product',
      'Zero',
    ],
    answerIndex: 0,
    explanation:
        'At equilibrium the isoquant is tangent to the isocost line: '
        'MRTS = w ÷ r (wage ÷ rental rate).',
  ),
  Question(
    subjectId: 'eco',
    chapter: 'Production & Cost',
    text: 'Diseconomies of scale cause long-run average cost to:',
    options: ['Fall', 'Rise', 'Stay constant', 'Become zero'],
    answerIndex: 1,
    explanation:
        'Beyond a point, problems of management and coordination '
        'raise cost per unit as the firm grows.',
  ),
  Question(
    subjectId: 'eco',
    chapter: 'Production & Cost',
    text: 'In economics, normal profit is:',
    options: [
      'Excluded from cost',
      'Included in the cost of production',
      'The same as supernormal profit',
      'Always zero',
    ],
    answerIndex: 1,
    explanation:
        'Normal profit is the minimum return needed to keep the '
        'entrepreneur in the industry, so it is treated as part of cost.',
  ),

  // Market Structures
  Question(
    subjectId: 'eco',
    chapter: 'Market Structures',
    text:
        'In the short run, a competitive firm should shut down if price '
        'falls below:',
    options: [
      'Average total cost',
      'Average variable cost',
      'Marginal revenue',
      'Average fixed cost',
    ],
    answerIndex: 1,
    explanation:
        'If price does not cover AVC, the firm loses less by shutting '
        'down and paying only fixed costs.',
  ),
  Question(
    subjectId: 'eco',
    chapter: 'Market Structures',
    text: 'Under perfect competition:',
    options: ['AR > MR', 'AR = MR = Price', 'MR > AR', 'Price > AR'],
    answerIndex: 1,
    explanation:
        'The firm sells any quantity at the market price, so each '
        'extra unit adds the price to revenue.',
  ),
  Question(
    subjectId: 'eco',
    chapter: 'Market Structures',
    text:
        'A profit-maximising monopolist never operates on the part of the '
        'demand curve where demand is:',
    options: ['Elastic', 'Inelastic', 'Unitary elastic', 'Perfectly elastic'],
    answerIndex: 1,
    explanation:
        'Where demand is inelastic, MR is negative, but MC is '
        'positive, so MR = MC cannot hold there.',
  ),
  Question(
    subjectId: 'eco',
    chapter: 'Market Structures',
    text:
        'A group of firms agreeing to fix prices and share output, such as '
        'OPEC, is a:',
    options: ['Monopsony', 'Cartel', 'Perfect market', 'Duopsony'],
    answerIndex: 1,
    explanation:
        'A cartel is a form of collusive oligopoly, where members act '
        'together like a monopoly.',
  ),
  Question(
    subjectId: 'eco',
    chapter: 'Market Structures',
    text: 'In the long run under monopolistic competition, firms earn:',
    options: [
      'Supernormal profit with full capacity',
      'Normal profit, with excess capacity',
      'Losses',
      'Monopoly profit',
    ],
    answerIndex: 1,
    explanation:
        'Free entry removes supernormal profit. Firms produce where '
        'AC is still falling, leaving excess capacity.',
  ),
  Question(
    subjectId: 'eco',
    chapter: 'Market Structures',
    text: 'A natural monopoly arises mainly because of:',
    options: [
      'Government licences only',
      'Large economies of scale',
      'Many small sellers',
      'Product differentiation',
    ],
    answerIndex: 1,
    explanation:
        'When one firm can supply the whole market at lower cost than '
        'several firms, as in water supply or railways, a natural monopoly '
        'results.',
  ),
  Question(
    subjectId: 'eco',
    chapter: 'Market Structures',
    text:
        'Under third-degree price discrimination, a monopolist charges a '
        'higher price in the market where demand is:',
    options: ['More elastic', 'Less elastic', 'Unitary', 'Perfectly elastic'],
    answerIndex: 1,
    explanation:
        'Buyers with less elastic demand are less responsive to price, '
        'so they can be charged more.',
  ),
  Question(
    subjectId: 'eco',
    chapter: 'Market Structures',
    text: 'A market with a single buyer is called:',
    options: ['Monopoly', 'Monopsony', 'Duopoly', 'Oligopsony'],
    answerIndex: 1,
    explanation:
        'Monopsony is a single buyer, for example one large employer '
        'in a small town.',
  ),
  Question(
    subjectId: 'eco',
    chapter: 'Market Structures',
    text: 'A market with exactly two sellers is a:',
    options: ['Monopoly', 'Duopoly', 'Oligopoly with many firms', 'Monopsony'],
    answerIndex: 1,
    explanation: 'Duopoly is the simplest form of oligopoly.',
  ),
  Question(
    subjectId: 'eco',
    chapter: 'Market Structures',
    text: 'Products sold under perfect competition are:',
    options: ['Differentiated', 'Homogeneous', 'Unique', 'Branded'],
    answerIndex: 1,
    explanation:
        'Identical products mean buyers have no reason to prefer one '
        'seller, so no firm can charge more than the market price.',
  ),

  // Money & Banking
  Question(
    subjectId: 'eco',
    chapter: 'Money & Banking',
    text: 'The main difficulty of a barter system is the lack of:',
    options: ['Double coincidence of wants', 'Banks', 'Government', 'Taxation'],
    answerIndex: 0,
    explanation:
        'In barter, each trader must find someone who has what they '
        'want and wants what they have. Money removes this problem.',
  ),
  Question(
    subjectId: 'eco',
    chapter: 'Money & Banking',
    text: 'Broad money (M3) in India includes:',
    options: [
      'Only currency with the public',
      'Currency, demand deposits and time deposits with banks',
      'Only demand deposits',
      'Only gold reserves',
    ],
    answerIndex: 1,
    explanation:
        'M3 = M1 (currency with the public, demand deposits, other '
        'deposits with RBI) + time deposits with banks.',
  ),
  Question(
    subjectId: 'eco',
    chapter: 'Money & Banking',
    text: 'The reverse repo rate is the rate at which:',
    options: [
      'Banks borrow from the RBI',
      'The RBI borrows from banks',
      'Banks lend to customers',
      'The government borrows from the public',
    ],
    answerIndex: 1,
    explanation:
        'Under reverse repo, banks park surplus funds with the RBI. '
        'Since 2022, the standing deposit facility has largely taken this '
        'role.',
  ),
  Question(
    subjectId: 'eco',
    chapter: 'Money & Banking',
    text: 'A sustained fall in the general price level is called:',
    options: ['Inflation', 'Deflation', 'Stagflation', 'Reflation'],
    answerIndex: 1,
    explanation:
        'Deflation increases the real value of money and debt, and can '
        'lead to lower spending and output.',
  ),
  Question(
    subjectId: 'eco',
    chapter: 'Money & Banking',
    text: 'Moral suasion by the RBI is a:',
    options: [
      'Quantitative credit control',
      'Qualitative (selective) credit control',
      'Fiscal measure',
      'Tax',
    ],
    answerIndex: 1,
    explanation:
        'Moral suasion means persuading banks through advice and '
        'meetings to follow RBI policy.',
  ),
  Question(
    subjectId: 'eco',
    chapter: 'Money & Banking',
    text: 'The central bank acting as "lender of last resort" means it:',
    options: [
      'Lends only to the government',
      'Gives financial help to banks in times of crisis',
      'Lends to the public directly',
      'Issues coins',
    ],
    answerIndex: 1,
    explanation:
        'When banks cannot get funds elsewhere, the central bank '
        'provides liquidity to prevent a collapse of the banking system.',
  ),
  Question(
    subjectId: 'eco',
    chapter: 'Money & Banking',
    text:
        'Inflation caused by aggregate demand exceeding aggregate supply at '
        'full employment is:',
    options: [
      'Cost-push inflation',
      'Demand-pull inflation',
      'Deflation',
      'Structural unemployment',
    ],
    answerIndex: 1,
    explanation:
        'Too much money chasing too few goods pulls prices up. '
        'Cost-push inflation comes from rising input costs.',
  ),
  Question(
    subjectId: 'eco',
    chapter: 'Money & Banking',
    text: 'The primary functions of a commercial bank are:',
    options: [
      'Issuing currency and controlling credit',
      'Accepting deposits and lending money',
      'Collecting taxes',
      'Fixing exchange rates',
    ],
    answerIndex: 1,
    explanation:
        'Accepting deposits and advancing loans are the core '
        'functions. Agency and utility services are secondary.',
  ),
  Question(
    subjectId: 'eco',
    chapter: 'Money & Banking',
    text: 'RTGS in India is mainly used for:',
    options: [
      'Small transfers in batches',
      'High-value transfers settled in real time (minimum ₹2 lakh)',
      'Cheque clearing',
      'Foreign exchange only',
    ],
    answerIndex: 1,
    explanation:
        'Real Time Gross Settlement settles each transaction '
        'individually and immediately. NEFT settles in half-hourly batches.',
  ),
  Question(
    subjectId: 'eco',
    chapter: 'Money & Banking',
    text: 'India\'s Monetary Policy Committee, which sets the repo rate, has:',
    options: ['3 members', '6 members', '9 members', '12 members'],
    answerIndex: 1,
    explanation:
        'The MPC has 6 members: 3 from the RBI (including the '
        'Governor, who has a casting vote) and 3 external members.',
  ),

  // Principles & Functions of Management
  Question(
    subjectId: 'eco',
    chapter: 'Principles & Functions of Management',
    text: 'The "father of scientific management" is:',
    options: ['Henri Fayol', 'F. W. Taylor', 'Peter Drucker', 'Elton Mayo'],
    answerIndex: 1,
    explanation:
        'Taylor introduced time and motion study, standardisation and '
        'differential piece rates.',
  ),
  Question(
    subjectId: 'eco',
    chapter: 'Principles & Functions of Management',
    text: 'Management by Objectives (MBO) was popularised by:',
    options: [
      'Peter Drucker',
      'Abraham Maslow',
      'Douglas McGregor',
      'F. W. Taylor',
    ],
    answerIndex: 0,
    explanation:
        'Drucker described MBO in "The Practice of Management" '
        '(1954): managers and staff agree objectives together.',
  ),
  Question(
    subjectId: 'eco',
    chapter: 'Principles & Functions of Management',
    text:
        'The Hawthorne experiments, which highlighted human relations at '
        'work, are associated with:',
    options: ['Elton Mayo', 'Henri Fayol', 'Max Weber', 'Herzberg'],
    answerIndex: 0,
    explanation:
        'The studies showed that social factors and attention to '
        'workers affect productivity, not just physical conditions.',
  ),
  Question(
    subjectId: 'eco',
    chapter: 'Principles & Functions of Management',
    text: 'In a line organisation, authority flows:',
    options: [
      'Horizontally between departments',
      'Vertically from top to bottom',
      'Only through committees',
      'From specialists to managers',
    ],
    answerIndex: 1,
    explanation:
        'Line organisation is the simplest structure, with a direct '
        'chain of command from top to bottom.',
  ),
  Question(
    subjectId: 'eco',
    chapter: 'Principles & Functions of Management',
    text: 'Decentralisation means:',
    options: [
      'Keeping all authority at the top',
      'Systematic dispersal of authority to lower levels',
      'Removing managers',
      'Merging departments',
    ],
    answerIndex: 1,
    explanation:
        'Under decentralisation, decision-making authority is spread '
        'across levels, with only key decisions kept at the top.',
  ),
  Question(
    subjectId: 'eco',
    chapter: 'Principles & Functions of Management',
    text: 'Planning premises are:',
    options: [
      'Office buildings',
      'Assumptions about the future on which plans are based',
      'Final targets',
      'Budgets',
    ],
    answerIndex: 1,
    explanation:
        'Premises are forecasts and assumptions, such as expected '
        'demand or prices, that form the basis of plans.',
  ),
  Question(
    subjectId: 'eco',
    chapter: 'Principles & Functions of Management',
    text: 'Fayol\'s "gang plank" allows:',
    options: [
      'Direct communication between employees at the same level in '
          'different chains',
      'Workers to bypass all managers',
      'Promotion based on seniority',
      'Payment of bonuses',
    ],
    answerIndex: 0,
    explanation:
        'The gang plank is a short cut across the scalar chain for '
        'quick communication, with superiors kept informed.',
  ),
  Question(
    subjectId: 'eco',
    chapter: 'Principles & Functions of Management',
    text: 'Fayol\'s principle of "esprit de corps" means:',
    options: [
      'Strict discipline',
      'Team spirit and harmony',
      'Fair pay',
      'Centralisation',
    ],
    answerIndex: 1,
    explanation:
        'Management should promote unity and team spirit, since union '
        'is strength.',
  ),
  Question(
    subjectId: 'eco',
    chapter: 'Principles & Functions of Management',
    text: 'In Maslow\'s hierarchy, the most basic needs are:',
    options: [
      'Esteem needs',
      'Physiological needs',
      'Social needs',
      'Self-actualisation',
    ],
    answerIndex: 1,
    explanation:
        'Physiological needs such as food, water and shelter come '
        'first, followed by safety, social, esteem and self-actualisation.',
  ),
  Question(
    subjectId: 'eco',
    chapter: 'Principles & Functions of Management',
    text:
        'A leader who takes all decisions alone and expects them to be '
        'obeyed follows the:',
    options: [
      'Democratic style',
      'Autocratic style',
      'Laissez-faire style',
      'Participative style',
    ],
    answerIndex: 1,
    explanation:
        'Autocratic leadership centralises decision-making. It can be '
        'fast, but may lower morale.',
  ),
];
