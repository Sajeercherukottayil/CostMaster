import '../../../models/question.dart';

const ecoMoreDescriptive = [
  // Demand & Consumer Behaviour
  DescriptiveQuestion(
    subjectId: 'eco',
    chapter: 'Demand & Consumer Behaviour',
    text: 'What are the determinants of demand for a good?',
    marks: 5,
    answer:
        '• Price of the good: other things equal, a lower price raises '
        'quantity demanded.\n'
        '• Income of consumers: higher income raises demand for normal goods '
        'and lowers it for inferior goods.\n'
        '• Prices of related goods: a rise in the price of a substitute '
        'raises demand; a rise in the price of a complement lowers it.\n'
        '• Tastes and preferences: fashion, advertising and habits shift '
        'demand.\n'
        '• Expectations: if prices are expected to rise, demand rises now.\n'
        '• Population and its composition: more buyers, or a change in age '
        'mix, changes demand.\n'
        '• Government policy, such as taxes and subsidies, and credit '
        'availability.',
  ),
  DescriptiveQuestion(
    subjectId: 'eco',
    chapter: 'Demand & Consumer Behaviour',
    text:
        'A consumer has ₹9 to spend on goods X (price ₹2) and Y (price ₹1). '
        'Marginal utility of successive units: X 20, 16, 12, 8, 4; Y 10, 8, 6, '
        '4, 2. Using the law of equi-marginal utility, find the best '
        'combination and the total utility.',
    marks: 5,
    problem: true,
    answer:
        'Marginal utility per rupee:\n'
        '• X (MU ÷ 2): 10, 8, 6, 4, 2\n'
        '• Y (MU ÷ 1): 10, 8, 6, 4, 2\n'
        'The consumer is in equilibrium where MU per rupee is equal for both '
        'goods and all income is spent.\n'
        '• 3 units of X (MU per rupee 6) and 3 units of Y (MU per rupee 6)\n'
        '• Spending = 3 × 2 + 3 × 1 = ₹9, the whole income\n'
        '• Total utility = (20 + 16 + 12) + (10 + 8 + 6) = 48 + 24 = 72\n'
        'No other combination costing ₹9 gives more utility.',
  ),
  DescriptiveQuestion(
    subjectId: 'eco',
    chapter: 'Demand & Consumer Behaviour',
    text:
        'The demand function is Q = 100 − 5P. Find the point price '
        'elasticity of demand at P = ₹10 and P = ₹12, and say how total '
        'revenue changes when price rises from ₹10 to ₹12.',
    marks: 5,
    problem: true,
    answer:
        'Point elasticity = (dQ/dP) × (P ÷ Q), with dQ/dP = −5.\n'
        '• At P = 10: Q = 50; Ed = 5 × 10 ÷ 50 = 1 (unitary)\n'
        '• At P = 12: Q = 40; Ed = 5 × 12 ÷ 40 = 1.5 (elastic)\n'
        'Total revenue:\n'
        '• At P = 10: 10 × 50 = ₹500\n'
        '• At P = 12: 12 × 40 = ₹480\n'
        'Revenue falls, because demand becomes elastic as price rises above '
        '₹10, where revenue is at its maximum.',
  ),

  // Production & Cost
  DescriptiveQuestion(
    subjectId: 'eco',
    chapter: 'Production & Cost',
    text: 'Explain internal and external economies of scale, with examples.',
    marks: 5,
    answer:
        'Internal economies arise within a firm as it grows:\n'
        '• Technical: larger, more efficient machines and specialisation.\n'
        '• Managerial: specialist managers for each function.\n'
        '• Marketing: bulk buying discounts and lower advertising cost per '
        'unit.\n'
        '• Financial: easier and cheaper borrowing.\n'
        '• Risk-bearing: spreading risk over many products or markets.\n'
        'External economies arise when the whole industry grows, benefiting '
        'all firms:\n'
        '• Better infrastructure, such as roads and power, in an industrial '
        'area.\n'
        '• A pool of skilled labour.\n'
        '• Supporting industries and services nearby.\n'
        '• Shared research and information.\n'
        'Example: software firms in Bengaluru enjoy external economies from '
        'skilled staff and supporting services.',
  ),
  DescriptiveQuestion(
    subjectId: 'eco',
    chapter: 'Production & Cost',
    text:
        'A firm\'s total cost is TC = 500 + 20Q + Q². At Q = 10, find '
        'total fixed cost, average variable cost, average total cost and '
        'marginal cost.',
    marks: 4,
    problem: true,
    answer:
        '• TFC = cost at Q = 0 = ₹500\n'
        '• TVC = 20Q + Q² = 200 + 100 = ₹300\n'
        '• AVC = TVC ÷ Q = 300 ÷ 10 = ₹30\n'
        '• TC = 500 + 300 = 800, so AC = 800 ÷ 10 = ₹80\n'
        '• MC = d(TC)/dQ = 20 + 2Q = 20 + 20 = ₹40',
  ),
  DescriptiveQuestion(
    subjectId: 'eco',
    chapter: 'Production & Cost',
    text: 'Why is the long-run average cost curve U-shaped?',
    marks: 4,
    answer:
        'In the long run all inputs can be varied, so the shape of the '
        'LAC curve depends on returns to scale.\n'
        '• Falling part: as the firm expands, economies of scale (technical, '
        'managerial, marketing, financial) reduce cost per unit.\n'
        '• Bottom: at the optimum scale, economies are fully used and LAC is '
        'at its minimum.\n'
        '• Rising part: beyond this, diseconomies of scale set in, such as '
        'coordination problems, slow decisions and rising input prices, so '
        'cost per unit rises.\n'
        'The LAC is flatter than short-run AC curves, because the firm can '
        'adjust all inputs.',
  ),

  // Market Structures
  DescriptiveQuestion(
    subjectId: 'eco',
    chapter: 'Market Structures',
    text: 'Explain the main features of monopolistic competition.',
    marks: 5,
    answer:
        '• Many sellers: each has a small share and limited control over '
        'price.\n'
        '• Product differentiation: products are close substitutes but not '
        'identical, through brand, design, quality or service.\n'
        '• Downward-sloping demand: each firm has some price-setting power, '
        'but demand is fairly elastic.\n'
        '• Selling costs: advertising and promotion are important.\n'
        '• Free entry and exit: in the long run, firms earn only normal '
        'profit.\n'
        '• Excess capacity: firms produce below the minimum point of AC.\n'
        'Examples: restaurants, clothing brands, toothpaste.',
  ),
  DescriptiveQuestion(
    subjectId: 'eco',
    chapter: 'Market Structures',
    text:
        'A monopolist sells in two separate markets. Price elasticity is 2 '
        'in market A and 4 in market B. Marginal cost is constant at ₹30. '
        'Find the profit-maximising price in each market.',
    marks: 5,
    problem: true,
    answer:
        'In each market, profit is maximised where MR = MC, and MR = P × '
        '(1 − 1/e). So P = MC ÷ (1 − 1/e).\n'
        '• Market A (e = 2): P = 30 ÷ (1 − 1/2) = 30 ÷ 0.5 = ₹60\n'
        '• Market B (e = 4): P = 30 ÷ (1 − 1/4) = 30 ÷ 0.75 = ₹40\n'
        'The price is higher in market A, where demand is less elastic.',
  ),
  DescriptiveQuestion(
    subjectId: 'eco',
    chapter: 'Market Structures',
    text: 'What are the features of oligopoly?',
    marks: 5,
    answer:
        '• Few sellers, each with a large share of the market.\n'
        '• Interdependence: each firm must consider rivals\' reactions before '
        'changing price or output.\n'
        '• Barriers to entry, such as large capital needs or patents.\n'
        '• Products may be homogeneous (steel, cement) or differentiated '
        '(cars, phones).\n'
        '• Price rigidity: firms avoid price wars, which the kinked demand '
        'curve model explains.\n'
        '• Heavy advertising and non-price competition.\n'
        '• Possibility of collusion, such as cartels or price leadership.',
  ),

  // Money & Banking
  DescriptiveQuestion(
    subjectId: 'eco',
    chapter: 'Money & Banking',
    text: 'Explain the functions of commercial banks.',
    marks: 5,
    answer:
        'Primary functions:\n'
        '• Accepting deposits: savings, current and fixed deposits.\n'
        '• Lending: loans, cash credit, overdrafts and discounting bills.\n'
        '• Credit creation: banks lend a multiple of their reserves, '
        'expanding the money supply.\n'
        'Secondary functions:\n'
        '• Agency services: collecting cheques, paying bills, buying and '
        'selling securities for customers.\n'
        '• Utility services: lockers, letters of credit, guarantees, '
        'remittances and digital payments.\n'
        '• Foreign exchange services and help with government schemes.',
  ),
  DescriptiveQuestion(
    subjectId: 'eco',
    chapter: 'Money & Banking',
    text:
        'Explain demand-pull and cost-push inflation, and the effects of '
        'inflation.',
    marks: 5,
    answer:
        '• Demand-pull inflation: aggregate demand grows faster than '
        'supply, for example from rising incomes, government spending or '
        'easy credit, pulling prices up.\n'
        '• Cost-push inflation: rising costs of inputs such as wages, oil or '
        'raw materials push producers to raise prices.\n'
        'Effects:\n'
        '• Fixed-income groups lose, because their real income falls.\n'
        '• Borrowers gain and lenders lose, since debt is repaid in money of '
        'lower value.\n'
        '• Savings are discouraged, and speculation may rise.\n'
        '• Exports become less competitive.\n'
        '• Moderate inflation may encourage investment, but high inflation '
        'creates uncertainty and harms growth.',
  ),
  DescriptiveQuestion(
    subjectId: 'eco',
    chapter: 'Money & Banking',
    text:
        'In a simple model where banks keep only the required reserve, '
        'how much total deposits can a fresh deposit of ₹1 crore support if '
        'CRR is 4%? What happens if CRR rises to 4.5%?',
    marks: 4,
    problem: true,
    answer:
        '• Credit multiplier = 1 ÷ CRR\n'
        '• At 4%: multiplier = 25; total deposits = ₹25 crore; new credit = '
        '₹24 crore\n'
        '• At 4.5%: multiplier = 22.22; total deposits = ₹22.22 crore\n'
        '• Reduction in deposit creation = ₹2.78 crore\n'
        'A higher CRR reduces banks\' ability to lend. In reality, cash held '
        'by the public and excess reserves make the multiplier smaller.',
  ),

  // Principles & Functions of Management
  DescriptiveQuestion(
    subjectId: 'eco',
    chapter: 'Principles & Functions of Management',
    text:
        'Explain the principles of scientific management given by F. W. '
        'Taylor.',
    marks: 5,
    answer:
        '• Science, not rule of thumb: each job should be studied '
        'scientifically to find the best way of doing it.\n'
        '• Harmony, not discord: management and workers should cooperate, '
        'with a change in attitude on both sides (a "mental revolution").\n'
        '• Cooperation, not individualism: work is shared, and management '
        'plans while workers carry out.\n'
        '• Development of each person to their greatest efficiency: through '
        'scientific selection and training.\n'
        'Techniques: time study, motion study, fatigue study, '
        'standardisation of tools, functional foremanship and the '
        'differential piece rate system.',
  ),
  DescriptiveQuestion(
    subjectId: 'eco',
    chapter: 'Principles & Functions of Management',
    text: 'Explain Maslow\'s hierarchy of needs and its use for managers.',
    marks: 5,
    answer:
        'Maslow arranged human needs in five levels. A higher need '
        'motivates only when lower needs are reasonably satisfied.\n'
        '• Physiological: food, water, shelter, so basic pay.\n'
        '• Safety: job security, safe workplace, pension.\n'
        '• Social: belonging, friendship, team work.\n'
        '• Esteem: recognition, status, promotion.\n'
        '• Self-actualisation: realising one\'s full potential, through '
        'challenging work and growth.\n'
        'Use for managers: identify the level each employee is at, and '
        'offer matching incentives. Once a need is satisfied, it no longer '
        'motivates.',
  ),
  DescriptiveQuestion(
    subjectId: 'eco',
    chapter: 'Principles & Functions of Management',
    text:
        'What is Management by Objectives (MBO)? State its process and '
        'benefits.',
    marks: 5,
    answer:
        'MBO is a system in which managers and employees jointly set '
        'clear objectives, and performance is judged against them.\n'
        'Process:\n'
        '• Set organisational goals at the top.\n'
        '• Agree departmental and individual objectives with employees.\n'
        '• Plan the action and resources needed.\n'
        '• Review progress periodically.\n'
        '• Appraise performance against the objectives, and give feedback.\n'
        'Benefits:\n'
        '• Clear targets and better planning.\n'
        '• Higher motivation through participation.\n'
        '• Objective performance appraisal.\n'
        '• Better communication between levels.',
  ),
  DescriptiveQuestion(
    subjectId: 'eco',
    chapter: 'Principles & Functions of Management',
    text:
        'A sales manager is asked to increase sales by 20% this year, but '
        'is not allowed to hire staff, change prices or approve any '
        'promotion spending. Which principle of management is being ignored, '
        'and what should top management do?',
    marks: 4,
    problem: true,
    answer:
        'Principle ignored: parity of authority and responsibility. Fayol '
        'said authority and responsibility should go together. A manager '
        'made responsible for a result must have enough authority to '
        'achieve it.\n'
        'Here, the manager is responsible for a 20% rise in sales but has '
        'no authority over staff, prices or promotion.\n'
        'What top management should do:\n'
        '• Delegate matching authority, such as a promotion budget and power '
        'to hire within limits.\n'
        '• Or agree a lower target that fits the authority given.\n'
        '• Hold the manager accountable only for what is within their '
        'control.',
  ),
];
