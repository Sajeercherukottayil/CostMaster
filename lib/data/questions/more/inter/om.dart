import '../../../../models/question.dart';

const interOmMoreQuestions = [
  // Productivity & Capacity
  Question(
    subjectId: 'i_om',
    chapter: 'Productivity & Capacity',
    text:
        'Output rises from 5,000 to 5,500 units while labour hours stay at '
        '1,000. Labour productivity has increased by:',
    options: ['5%', '10%', '50%', '0.5%'],
    answerIndex: 1,
    explanation:
        'Productivity rises from 5 to 5.5 units per hour, an increase '
        'of 0.5 ÷ 5 = 10%.',
  ),
  Question(
    subjectId: 'i_om',
    chapter: 'Productivity & Capacity',
    text: 'Productivity differs from production because productivity is:',
    options: [
      'The total quantity produced',
      'The ratio of output to input',
      'The value of sales',
      'The number of workers',
    ],
    answerIndex: 1,
    explanation:
        'Production can rise just by using more inputs; productivity '
        'rises only if output per unit of input improves.',
  ),
  Question(
    subjectId: 'i_om',
    chapter: 'Productivity & Capacity',
    text:
        'Extra capacity kept above expected demand to handle uncertainty is '
        'called a:',
    options: [
      'Bottleneck',
      'Capacity cushion',
      'Lag strategy',
      'Learning curve',
    ],
    answerIndex: 1,
    explanation:
        'A capacity cushion helps meet sudden demand increases, at the '
        'cost of some idle capacity.',
  ),
  Question(
    subjectId: 'i_om',
    chapter: 'Productivity & Capacity',
    text: 'A "lead" capacity strategy means:',
    options: [
      'Adding capacity only after demand has risen',
      'Adding capacity in anticipation of demand growth',
      'Never adding capacity',
      'Reducing capacity first',
    ],
    answerIndex: 1,
    explanation:
        'Leading reduces the risk of lost sales but may leave capacity '
        'idle. A lag strategy waits for demand to appear.',
  ),
  Question(
    subjectId: 'i_om',
    chapter: 'Productivity & Capacity',
    text:
        'The Theory of Constraints, which focuses on managing bottlenecks, '
        'was developed by:',
    options: [
      'Eliyahu Goldratt',
      'W. Edwards Deming',
      'Michael Porter',
      'Taiichi Ohno',
    ],
    answerIndex: 0,
    explanation:
        'Goldratt (in "The Goal") argued that system output is limited '
        'by its constraint, so improvement should focus there.',
  ),
  Question(
    subjectId: 'i_om',
    chapter: 'Productivity & Capacity',
    text:
        'Design capacity is 1,000 units, the utilisation factor 90% and '
        'the efficiency 80%. The rated capacity is:',
    options: ['900 units', '800 units', '720 units', '1,000 units'],
    answerIndex: 2,
    explanation: 'Rated capacity = 1,000 × 0.9 × 0.8 = 720 units.',
  ),
  Question(
    subjectId: 'i_om',
    chapter: 'Productivity & Capacity',
    text:
        'Fixed costs are ₹2,00,000 and contribution is ₹50 per unit. The '
        'break-even capacity is:',
    options: ['400 units', '4,000 units', '40,000 units', '2,500 units'],
    answerIndex: 1,
    explanation:
        'Break-even = 2,00,000 ÷ 50 = 4,000 units. Capacity below this '
        'cannot cover fixed costs.',
  ),
  Question(
    subjectId: 'i_om',
    chapter: 'Productivity & Capacity',
    text: 'Work study consists of:',
    options: [
      'Market research and pricing',
      'Method study and work measurement',
      'Quality control and inspection',
      'Budgeting and forecasting',
    ],
    answerIndex: 1,
    explanation:
        'Method study finds the best way to do a job; work measurement '
        'finds the time it should take.',
  ),
  Question(
    subjectId: 'i_om',
    chapter: 'Productivity & Capacity',
    text:
        'Observed time is 10 minutes, the worker\'s rating 110% and '
        'allowances 10% of normal time. The standard time is:',
    options: ['11 minutes', '12.1 minutes', '11.5 minutes', '10 minutes'],
    answerIndex: 1,
    explanation:
        'Normal time = 10 × 110% = 11. Standard time = 11 × 1.10 = '
        '12.1 minutes.',
  ),
  Question(
    subjectId: 'i_om',
    chapter: 'Productivity & Capacity',
    text: 'Throughput is the:',
    options: [
      'Number of employees',
      'Rate at which a system produces output or sales',
      'Capacity of the largest machine',
      'Value of inventory',
    ],
    answerIndex: 1,
    explanation:
        'In the Theory of Constraints, throughput is the rate at which '
        'money is generated through sales.',
  ),

  // Plant Layout
  Question(
    subjectId: 'i_om',
    chapter: 'Plant Layout',
    text:
        'Total task time is 45 minutes, the line has 5 stations and the '
        'cycle time is 10 minutes. Line efficiency is:',
    options: ['80%', '90%', '45%', '100%'],
    answerIndex: 1,
    explanation: 'Efficiency = 45 ÷ (5 × 10) = 90%.',
  ),
  Question(
    subjectId: 'i_om',
    chapter: 'Plant Layout',
    text: 'If line efficiency is 90%, the balance delay is:',
    options: ['90%', '10%', '9%', '0%'],
    answerIndex: 1,
    explanation:
        'Balance delay = 100% − efficiency = 10%, the idle time on the '
        'line.',
  ),
  Question(
    subjectId: 'i_om',
    chapter: 'Plant Layout',
    text: 'The centre of gravity method is used in location decisions to:',
    options: [
      'Minimise transport costs to markets and suppliers',
      'Choose the cheapest land',
      'Maximise sales',
      'Reduce labour costs',
    ],
    answerIndex: 0,
    explanation:
        'It finds a location weighted by the volumes moved to and '
        'from each point.',
  ),
  Question(
    subjectId: 'i_om',
    chapter: 'Plant Layout',
    text: 'In the factor rating method of plant location:',
    options: [
      'Only cost is considered',
      'Factors are given weights and each site is scored on them',
      'The largest site is chosen',
      'Location is chosen by lottery',
    ],
    answerIndex: 1,
    explanation:
        'The site with the highest weighted score is preferred. It '
        'combines quantitative and qualitative factors.',
  ),
  Question(
    subjectId: 'i_om',
    chapter: 'Plant Layout',
    text: 'A good layout aims to:',
    options: [
      'Maximise material handling',
      'Minimise the distance and handling of materials',
      'Keep all machines in one room',
      'Increase work-in-progress',
    ],
    answerIndex: 1,
    explanation: 'Less handling cuts cost, time and damage.',
  ),
  Question(
    subjectId: 'i_om',
    chapter: 'Plant Layout',
    text: 'A U-shaped production line is popular under JIT because it:',
    options: [
      'Uses more floor space',
      'Improves communication and lets workers handle several stations',
      'Needs more workers',
      'Increases inventory',
    ],
    answerIndex: 1,
    explanation:
        'Entry and exit are close together, and workers can move '
        'between stations as demand changes.',
  ),
  Question(
    subjectId: 'i_om',
    chapter: 'Plant Layout',
    text:
        'A layout that combines features of process and product layouts '
        'is a:',
    options: [
      'Fixed position layout',
      'Hybrid (combination) layout',
      'Line layout',
      'Functional layout',
    ],
    answerIndex: 1,
    explanation:
        'Many factories use process layout for parts and a product '
        'line for final assembly.',
  ),
  Question(
    subjectId: 'i_om',
    chapter: 'Plant Layout',
    text:
        'Available time is 480 minutes a day and the cycle time is 4 '
        'minutes. Maximum output per day is:',
    options: ['120 units', '96 units', '480 units', '1,920 units'],
    answerIndex: 0,
    explanation: 'Output = 480 ÷ 4 = 120 units.',
  ),
  Question(
    subjectId: 'i_om',
    chapter: 'Plant Layout',
    text: 'Location break-even analysis compares sites by:',
    options: [
      'Their fixed and variable costs at different volumes',
      'Their distance from the head office',
      'Only their land price',
      'Their climate',
    ],
    answerIndex: 0,
    explanation:
        'Total cost lines are plotted for each site to find which is '
        'cheapest at the expected volume.',
  ),
  Question(
    subjectId: 'i_om',
    chapter: 'Plant Layout',
    text: 'Ergonomics in workplace design means:',
    options: [
      'Fitting the job and equipment to the worker',
      'Reducing wages',
      'Automating all tasks',
      'Increasing working hours',
    ],
    answerIndex: 0,
    explanation:
        'Good ergonomics reduces fatigue and injuries, and improves '
        'productivity.',
  ),

  // Project Management (PERT & CPM)
  Question(
    subjectId: 'i_om',
    chapter: 'Project Management (PERT & CPM)',
    text: 'Free float of an activity is:',
    options: [
      'Latest finish − Earliest finish',
      'Earliest start of the next activity − Earliest finish of this '
          'activity',
      'Total float + Independent float',
      'Always zero',
    ],
    answerIndex: 1,
    explanation:
        'Free float is the delay possible without delaying the next '
        'activity\'s earliest start.',
  ),
  Question(
    subjectId: 'i_om',
    chapter: 'Project Management (PERT & CPM)',
    text: 'In network analysis, the forward pass is used to find:',
    options: [
      'Latest times',
      'Earliest start and finish times',
      'Costs',
      'Resources',
    ],
    answerIndex: 1,
    explanation: 'The backward pass then finds the latest times.',
  ),
  Question(
    subjectId: 'i_om',
    chapter: 'Project Management (PERT & CPM)',
    text: 'The slack of an event is:',
    options: [
      'Earliest time − Latest time',
      'Latest time − Earliest time',
      'Duration of the longest activity',
      'Zero for all events',
    ],
    answerIndex: 1,
    explanation: 'Events on the critical path have zero slack.',
  ),
  Question(
    subjectId: 'i_om',
    chapter: 'Project Management (PERT & CPM)',
    text:
        'The expected project duration is 24 days with a standard '
        'deviation of 2 days. The probability of finishing within 26 days '
        '(Z = 1 gives 0.8413) is about:',
    options: ['50%', '84.13%', '15.87%', '97.72%'],
    answerIndex: 1,
    explanation: 'Z = (26 − 24) ÷ 2 = 1, so probability ≈ 84.13%.',
  ),
  Question(
    subjectId: 'i_om',
    chapter: 'Project Management (PERT & CPM)',
    text:
        'An activity takes 8 days at ₹6,000 normally, or 5 days at ₹9,000 '
        'when crashed. Its cost slope is:',
    options: ['₹1,000 per day', '₹3,000 per day', '₹375 per day', '₹600'],
    answerIndex: 0,
    explanation: 'Cost slope = (9,000 − 6,000) ÷ (8 − 5) = ₹1,000 per day.',
  ),
  Question(
    subjectId: 'i_om',
    chapter: 'Project Management (PERT & CPM)',
    text: 'Fulkerson\'s rule is used for:',
    options: [
      'Calculating floats',
      'Numbering the events in a network',
      'Crashing',
      'Estimating costs',
    ],
    answerIndex: 1,
    explanation:
        'Events are numbered so that each activity goes from a lower '
        'to a higher number.',
  ),
  Question(
    subjectId: 'i_om',
    chapter: 'Project Management (PERT & CPM)',
    text: 'Resource levelling aims to:',
    options: [
      'Shorten the project at any cost',
      'Smooth out resource use over time without extending the project, as '
          'far as possible',
      'Remove all floats',
      'Add more activities',
    ],
    answerIndex: 1,
    explanation:
        'Non-critical activities are shifted within their floats to '
        'avoid peaks in resource demand.',
  ),
  Question(
    subjectId: 'i_om',
    chapter: 'Project Management (PERT & CPM)',
    text: 'A Gantt chart shows:',
    options: [
      'Activities as bars against a time scale',
      'Only the critical path',
      'Probability of completion',
      'Cost slopes',
    ],
    answerIndex: 0,
    explanation:
        'It is simple and visual, but does not show dependencies as '
        'clearly as a network.',
  ),
  Question(
    subjectId: 'i_om',
    chapter: 'Project Management (PERT & CPM)',
    text: 'The optimum project duration in time-cost trade-off is where:',
    options: [
      'Direct cost is lowest',
      'Total cost (direct + indirect) is lowest',
      'Indirect cost is lowest',
      'Duration is shortest',
    ],
    answerIndex: 1,
    explanation:
        'Crashing raises direct cost but cuts indirect costs such as '
        'overheads and penalties.',
  ),
  Question(
    subjectId: 'i_om',
    chapter: 'Project Management (PERT & CPM)',
    text: 'In PERT, the project duration is assumed to follow a:',
    options: [
      'Uniform distribution',
      'Normal distribution (by the central limit theorem)',
      'Poisson distribution',
      'Binomial distribution',
    ],
    answerIndex: 1,
    explanation:
        'Individual activity times follow a beta distribution, but '
        'their sum along the critical path is treated as normal.',
  ),

  // Quality, JIT & Maintenance
  Question(
    subjectId: 'i_om',
    chapter: 'Quality, JIT & Maintenance',
    text: 'In JIT, a "kanban" is:',
    options: [
      'A type of machine',
      'A card or signal that authorises production or movement',
      'A quality standard',
      'A maintenance schedule',
    ],
    answerIndex: 1,
    explanation:
        'Kanban is the signal in a pull system: nothing is made until '
        'the next stage asks for it.',
  ),
  Question(
    subjectId: 'i_om',
    chapter: 'Quality, JIT & Maintenance',
    text: '"Poka-yoke" means:',
    options: [
      'Continuous improvement',
      'Mistake-proofing a process',
      'Housekeeping',
      'Waste',
    ],
    answerIndex: 1,
    explanation:
        'Devices or designs stop errors from happening, such as parts '
        'that fit only one way.',
  ),
  Question(
    subjectId: 'i_om',
    chapter: 'Quality, JIT & Maintenance',
    text: 'Warranty claims and product recalls are:',
    options: [
      'Prevention costs',
      'Appraisal costs',
      'Internal failure costs',
      'External failure costs',
    ],
    answerIndex: 3,
    explanation:
        'External failure costs arise after the product reaches the '
        'customer. Scrap and rework are internal failure costs.',
  ),
  Question(
    subjectId: 'i_om',
    chapter: 'Quality, JIT & Maintenance',
    text: 'The cost of inspecting incoming materials is an:',
    options: [
      'Appraisal cost',
      'Prevention cost',
      'External failure cost',
      'Opportunity cost',
    ],
    answerIndex: 0,
    explanation:
        'Appraisal costs measure and check quality, such as '
        'inspection and testing.',
  ),
  Question(
    subjectId: 'i_om',
    chapter: 'Quality, JIT & Maintenance',
    text: 'ISO 9001 is an international standard for:',
    options: [
      'Environmental management',
      'Quality management systems',
      'Information security',
      'Occupational safety',
    ],
    answerIndex: 1,
    explanation:
        'ISO 14001 covers environmental management and ISO 27001 '
        'information security.',
  ),
  Question(
    subjectId: 'i_om',
    chapter: 'Quality, JIT & Maintenance',
    text: 'Total Productive Maintenance (TPM) mainly involves:',
    options: [
      'Only maintenance specialists',
      'Machine operators taking part in routine maintenance',
      'Replacing all machines yearly',
      'Repairing only after breakdown',
    ],
    answerIndex: 1,
    explanation:
        'TPM aims at zero breakdowns, with operators doing cleaning, '
        'checks and minor repairs.',
  ),
  Question(
    subjectId: 'i_om',
    chapter: 'Quality, JIT & Maintenance',
    text: 'MTBF in maintenance management stands for:',
    options: [
      'Mean time between failures',
      'Maximum time before failure',
      'Minimum time between fixes',
      'Monthly total breakdown frequency',
    ],
    answerIndex: 0,
    explanation: 'A higher MTBF means more reliable equipment.',
  ),
  Question(
    subjectId: 'i_om',
    chapter: 'Quality, JIT & Maintenance',
    text: 'In statistical process control, an R-chart monitors:',
    options: [
      'The process mean',
      'The variability (range) within samples',
      'The number of defects',
      'The proportion defective',
    ],
    answerIndex: 1,
    explanation:
        'An x̄-chart monitors the mean; R-charts and s-charts monitor '
        'spread.',
  ),
  Question(
    subjectId: 'i_om',
    chapter: 'Quality, JIT & Maintenance',
    text: 'Juran\'s quality trilogy consists of:',
    options: [
      'Plan, do, check',
      'Quality planning, quality control and quality improvement',
      'Inspect, reject, rework',
      'Sort, set, shine',
    ],
    answerIndex: 1,
    explanation:
        'Juran also stressed "fitness for use" as the definition of '
        'quality.',
  ),
  Question(
    subjectId: 'i_om',
    chapter: 'Quality, JIT & Maintenance',
    text: 'In lean thinking, "muda" means:',
    options: ['Quality', 'Waste', 'Improvement', 'Signal'],
    answerIndex: 1,
    explanation:
        'Common wastes include overproduction, waiting, transport, '
        'excess inventory, motion, over-processing and defects.',
  ),

  // Strategic Analysis
  Question(
    subjectId: 'i_om',
    chapter: 'Strategic Analysis',
    text: 'High switching costs for buyers tend to reduce:',
    options: [
      'The bargaining power of buyers',
      'The bargaining power of suppliers',
      'Rivalry among competitors',
      'The firm\'s profitability',
    ],
    answerIndex: 0,
    explanation:
        'If changing supplier is costly, buyers are less able to '
        'press for lower prices.',
  ),
  Question(
    subjectId: 'i_om',
    chapter: 'Strategic Analysis',
    text: 'In Porter\'s value chain, inbound logistics is a:',
    options: [
      'Support activity',
      'Primary activity',
      'Margin',
      'Competitive force',
    ],
    answerIndex: 1,
    explanation:
        'Primary activities are inbound logistics, operations, '
        'outbound logistics, marketing and sales, and service.',
  ),
  Question(
    subjectId: 'i_om',
    chapter: 'Strategic Analysis',
    text: 'Which is a support activity in the value chain?',
    options: [
      'Operations',
      'Human resource management',
      'Outbound logistics',
      'After-sales service',
    ],
    answerIndex: 1,
    explanation:
        'Support activities are firm infrastructure, HR management, '
        'technology development and procurement.',
  ),
  Question(
    subjectId: 'i_om',
    chapter: 'Strategic Analysis',
    text: 'The GE-McKinsey matrix assesses business units on:',
    options: [
      'Market growth and relative market share',
      'Industry attractiveness and business strength',
      'Price and quality',
      'Cost and differentiation',
    ],
    answerIndex: 1,
    explanation:
        'It is a 9-cell matrix using several factors, more detailed '
        'than the 4-cell BCG matrix.',
  ),
  Question(
    subjectId: 'i_om',
    chapter: 'Strategic Analysis',
    text:
        'In the VRIO framework, a resource gives sustained competitive '
        'advantage if it is valuable, rare, organised for, and:',
    options: [
      'Cheap',
      'Inimitable (hard to copy)',
      'International',
      'Intangible',
    ],
    answerIndex: 1,
    explanation: 'If rivals can copy it easily, any advantage is temporary.',
  ),
  Question(
    subjectId: 'i_om',
    chapter: 'Strategic Analysis',
    text: 'Environmental scanning means:',
    options: [
      'Cleaning the factory',
      'Monitoring the external environment for opportunities and threats',
      'Measuring pollution only',
      'Auditing accounts',
    ],
    answerIndex: 1,
    explanation:
        'It covers economic, political, social, technological, legal '
        'and competitive changes.',
  ),
  Question(
    subjectId: 'i_om',
    chapter: 'Strategic Analysis',
    text:
        'Firms in an industry that follow similar strategies, such as '
        'luxury car makers, form a:',
    options: ['Cartel', 'Strategic group', 'Value chain', 'Conglomerate'],
    answerIndex: 1,
    explanation:
        'Firms within a strategic group are each other\'s closest '
        'competitors.',
  ),
  Question(
    subjectId: 'i_om',
    chapter: 'Strategic Analysis',
    text: 'In the maturity stage of the industry life cycle, typically:',
    options: [
      'Sales grow rapidly',
      'Growth slows, competition on price increases and the industry '
          'consolidates',
      'There are no competitors',
      'Products are first introduced',
    ],
    answerIndex: 1,
    explanation: 'Efficiency and cost control become key in maturity.',
  ),
  Question(
    subjectId: 'i_om',
    chapter: 'Strategic Analysis',
    text: 'Mendelow\'s matrix maps stakeholders by:',
    options: [
      'Age and income',
      'Power and interest',
      'Cost and benefit',
      'Growth and share',
    ],
    answerIndex: 1,
    explanation:
        'Stakeholders with high power and high interest are "key '
        'players" who must be managed closely.',
  ),
  Question(
    subjectId: 'i_om',
    chapter: 'Strategic Analysis',
    text: 'The threat of new entrants is low when:',
    options: [
      'Capital requirements and economies of scale are high',
      'There are no barriers to entry',
      'Products are identical and cheap to make',
      'Customers have no brand loyalty',
    ],
    answerIndex: 0,
    explanation: 'High entry barriers protect existing firms\' profits.',
  ),

  // Strategy Formulation
  Question(
    subjectId: 'i_om',
    chapter: 'Strategy Formulation',
    text:
        'A bank entering insurance, a related financial service, is an '
        'example of:',
    options: [
      'Unrelated (conglomerate) diversification',
      'Related (concentric) diversification',
      'Market penetration',
      'Divestment',
    ],
    answerIndex: 1,
    explanation:
        'The new business shares customers, skills and channels with '
        'the existing one.',
  ),
  Question(
    subjectId: 'i_om',
    chapter: 'Strategy Formulation',
    text: 'A company acquiring a direct competitor is pursuing:',
    options: [
      'Backward integration',
      'Forward integration',
      'Horizontal integration',
      'Unrelated diversification',
    ],
    answerIndex: 2,
    explanation:
        'Horizontal integration combines firms at the same stage of '
        'the value chain.',
  ),
  Question(
    subjectId: 'i_om',
    chapter: 'Strategy Formulation',
    text:
        'A car maker buying a steel plant that supplies it is an example '
        'of:',
    options: [
      'Forward integration',
      'Backward integration',
      'Horizontal integration',
      'Market development',
    ],
    answerIndex: 1,
    explanation:
        'Backward integration moves towards sources of supply. Buying '
        'dealerships would be forward integration.',
  ),
  Question(
    subjectId: 'i_om',
    chapter: 'Strategy Formulation',
    text:
        'Creating a new, uncontested market space rather than competing in '
        'an existing one is called:',
    options: [
      'Red ocean strategy',
      'Blue ocean strategy',
      'Harvest strategy',
      'Retrenchment',
    ],
    answerIndex: 1,
    explanation:
        'Kim and Mauborgne\'s idea: make competition irrelevant by '
        'offering new value.',
  ),
  Question(
    subjectId: 'i_om',
    chapter: 'Strategy Formulation',
    text:
        'A strategy of continuing the present business with only small '
        'changes is a:',
    options: [
      'Growth strategy',
      'Stability strategy',
      'Retrenchment strategy',
      'Diversification strategy',
    ],
    answerIndex: 1,
    explanation:
        'It suits firms in stable environments, or those consolidating '
        'after rapid growth.',
  ),
  Question(
    subjectId: 'i_om',
    chapter: 'Strategy Formulation',
    text:
        'Reducing investment in a business to maximise short-term cash '
        'flow before exit is a:',
    options: [
      'Harvest strategy',
      'Growth strategy',
      'Penetration strategy',
      'Integration strategy',
    ],
    answerIndex: 0,
    explanation: 'Harvesting is common for cash cows or declining businesses.',
  ),
  Question(
    subjectId: 'i_om',
    chapter: 'Strategy Formulation',
    text:
        'Decisions about which businesses a company should be in are made '
        'at the:',
    options: [
      'Functional level',
      'Corporate level',
      'Operational level',
      'Team level',
    ],
    answerIndex: 1,
    explanation:
        'Business-level strategy is about how to compete in each '
        'business; functional strategy supports it in areas such as '
        'marketing.',
  ),
  Question(
    subjectId: 'i_om',
    chapter: 'Strategy Formulation',
    text:
        'Two firms forming a separate company that they jointly own and '
        'control is a:',
    options: ['Merger', 'Joint venture', 'Licensing agreement', 'Franchise'],
    answerIndex: 1,
    explanation:
        'A joint venture is a type of strategic alliance with shared '
        'equity, risk and control.',
  ),
  Question(
    subjectId: 'i_om',
    chapter: 'Strategy Formulation',
    text: 'A luxury watch brand serving only wealthy collectors follows:',
    options: [
      'Cost leadership',
      'Differentiation focus',
      'Cost focus',
      'Broad differentiation',
    ],
    answerIndex: 1,
    explanation: 'It serves a narrow segment with a unique, premium offering.',
  ),
  Question(
    subjectId: 'i_om',
    chapter: 'Strategy Formulation',
    text: 'A retrenchment strategy involves:',
    options: [
      'Expanding into new markets',
      'Reducing the scope or size of operations to improve performance',
      'Acquiring competitors',
      'Launching new products',
    ],
    answerIndex: 1,
    explanation: 'Forms include turnaround, divestment and liquidation.',
  ),
];
