import '../../../models/question.dart';

const interOmQuestions = [
  // Operations management
  Question(
    subjectId: 'i_om',
    chapter: 'Productivity & Capacity',
    text: '1,200 units are produced using 300 labour hours. Labour productivity is:',
    options: ['0.25 units per hour', '4 units per hour', '3 units per hour', '900 units'],
    answerIndex: 1,
    explanation: 'Productivity = Output / Input = 1,200 / 300 = 4 units per labour hour.',
  ),
  Question(
    subjectId: 'i_om',
    chapter: 'Productivity & Capacity',
    text: 'A plant designed to produce 10,000 units a month actually produces '
        '8,000 units. Capacity utilisation is:',
    options: ['125%', '20%', '80%', '8%'],
    answerIndex: 2,
    explanation: 'Utilisation = Actual output / Design capacity = 8,000 / 10,000 = 80%.',
  ),
  Question(
    subjectId: 'i_om',
    chapter: 'Productivity & Capacity',
    text: 'Output is valued at ₹5,00,000 and total inputs at ₹4,00,000. Total '
        'productivity is:',
    options: ['9.00', '1.00', '1.25', '0.80'],
    answerIndex: 2,
    explanation: 'Total productivity = Output ÷ Total inputs = 5,00,000 ÷ 4,00,000 = '
        '1.25.',
  ),
  Question(
    subjectId: 'i_om',
    chapter: 'Productivity & Capacity',
    text: 'Effective capacity is 900 units and actual output 810 units. '
        'Efficiency is:',
    options: ['90%', '10%', '81%', '111%'],
    answerIndex: 0,
    explanation: 'Efficiency = Actual output ÷ Effective capacity × 100 = 810 ÷ 900 '
        '× 100 = 90%.',
  ),
  Question(
    subjectId: 'i_om',
    chapter: 'Productivity & Capacity',
    text: 'Design capacity is:',
    options: [
      'The output the market demands',
      'The maximum output possible under ideal conditions',
      'The minimum output for break-even',
      'The actual output achieved',
    ],
    answerIndex: 1,
    explanation: 'Effective capacity is lower than design capacity because of '
        'allowances for maintenance, product mix and so on.',
  ),
  Question(
    subjectId: 'i_om',
    chapter: 'Productivity & Capacity',
    text: 'Output is 2,000 units, labour cost ₹10,000 and material cost '
        '₹30,000. Multifactor productivity (labour + material) is:',
    options: [
      '0.067 units per rupee',
      '20 units per rupee',
      '0.05 units per rupee',
      '0.2 units per rupee',
    ],
    answerIndex: 2,
    explanation: 'Multifactor productivity = 2,000 ÷ (10,000 + 30,000) = 0.05 units '
        'per rupee.',
  ),
  Question(
    subjectId: 'i_om',
    chapter: 'Productivity & Capacity',
    text: 'Partial productivity measures:',
    options: [
      'Output per unit of a single input',
      'Total output only',
      'Profit per unit',
      'Output per unit of all inputs',
    ],
    answerIndex: 0,
    explanation: 'Labour productivity and machine productivity are examples.',
  ),
  Question(
    subjectId: 'i_om',
    chapter: 'Productivity & Capacity',
    text: 'Design capacity is 1,000 units, effective capacity 800 units and '
        'actual output 720 units. Utilisation is:',
    options: ['111%', '72%', '90%', '80%'],
    answerIndex: 1,
    explanation: 'Utilisation = Actual output ÷ Design capacity = 720 ÷ 1,000 = 72%.',
  ),
  Question(
    subjectId: 'i_om',
    chapter: 'Productivity & Capacity',
    text: 'A bottleneck is:',
    options: [
      'The operation with the lowest capacity that limits total output',
      'Idle capacity',
      'A storage area',
      'The fastest machine',
    ],
    answerIndex: 0,
    explanation: 'The output of the whole system cannot exceed the bottleneck\'s '
        'capacity.',
  ),
  Question(
    subjectId: 'i_om',
    chapter: 'Productivity & Capacity',
    text: 'Long-term capacity planning mainly involves decisions about:',
    options: [
      'Daily scheduling',
      'The size and number of facilities',
      'Overtime for one week',
      'Material issues',
    ],
    answerIndex: 1,
    explanation: 'Short-term planning adjusts output using overtime, shifts and '
        'subcontracting.',
  ),
  Question(
    subjectId: 'i_om',
    chapter: 'Plant Layout',
    text: 'A layout in which similar machines are grouped together (all lathes '
        'in one area, all drills in another) is a:',
    options: ['Product layout', 'Fixed-position layout', 'Cellular layout', 'Process layout'],
    answerIndex: 3,
    explanation: 'Process (functional) layout groups machines by function and '
        'suits job and batch production.',
  ),
  Question(
    subjectId: 'i_om',
    chapter: 'Plant Layout',
    text: 'A product (line) layout is most suitable for:',
    options: [
      'Mass production of standardised products',
      'Customised one-off jobs',
      'Building a ship',
      'A hospital',
    ],
    answerIndex: 0,
    explanation: 'Product layout arranges machines in the sequence of operations, '
        'which suits continuous, high-volume production.',
  ),
  Question(
    subjectId: 'i_om',
    chapter: 'Plant Layout',
    text: 'A fixed position layout is used for:',
    options: [
      'Job shops making varied products',
      'Retail stores',
      'Mass production of small items',
      'Large products such as ships and aircraft',
    ],
    answerIndex: 3,
    explanation: 'The product stays in one place and workers, materials and machines '
        'are brought to it.',
  ),
  Question(
    subjectId: 'i_om',
    chapter: 'Plant Layout',
    text: 'A cellular layout groups machines:',
    options: [
      'Into cells that make families of similar parts',
      'Around a fixed product',
      'In one straight line for one product',
      'By function, such as all lathes together',
    ],
    answerIndex: 0,
    explanation: 'Cellular layout uses group technology to combine the benefits of '
        'product and process layouts.',
  ),
  Question(
    subjectId: 'i_om',
    chapter: 'Plant Layout',
    text: 'A major disadvantage of a product (line) layout is that:',
    options: [
      'Work-in-progress is very high',
      'A breakdown of one machine can stop the whole line',
      'Material handling is high',
      'It suits only low volumes',
    ],
    answerIndex: 1,
    explanation: 'Machines are arranged in sequence, so a single breakdown '
        'interrupts all following operations.',
  ),
  Question(
    subjectId: 'i_om',
    chapter: 'Plant Layout',
    text: 'A process layout is best suited to:',
    options: [
      'Low-volume, high-variety production',
      'Continuous mass production',
      'Building a dam',
      'A single standard product',
    ],
    answerIndex: 0,
    explanation: 'Grouping machines by function gives flexibility to handle '
        'different jobs.',
  ),
  Question(
    subjectId: 'i_om',
    chapter: 'Plant Layout',
    text: 'Line balancing aims to:',
    options: [
      'Distribute work evenly across workstations',
      'Increase idle time',
      'Increase inventory',
      'Reduce the number of products',
    ],
    answerIndex: 0,
    explanation: 'Balanced lines reduce idle time and the bottleneck effect.',
  ),
  Question(
    subjectId: 'i_om',
    chapter: 'Plant Layout',
    text: 'Available production time is 480 minutes a day and demand is 240 '
        'units a day. The cycle time is:',
    options: ['240 minutes', '2 minutes', '0.5 minutes', '4 minutes'],
    answerIndex: 1,
    explanation: 'Cycle time = Available time ÷ Demand = 480 ÷ 240 = 2 minutes.',
  ),
  Question(
    subjectId: 'i_om',
    chapter: 'Plant Layout',
    text: 'Total task time is 10 minutes and the cycle time is 2 minutes. The '
        'theoretical minimum number of workstations is:',
    options: ['2', '20', '10', '5'],
    answerIndex: 3,
    explanation: 'Minimum workstations = Total task time ÷ Cycle time = 10 ÷ 2 = 5.',
  ),
  Question(
    subjectId: 'i_om',
    chapter: 'Plant Layout',
    text: 'A plant producing heavy goods from bulky, weight-losing raw '
        'materials is usually located near the:',
    options: [
      'Source of raw materials',
      'Port of export always',
      'Capital city',
      'Head office',
    ],
    answerIndex: 0,
    explanation: 'Locating near raw materials reduces transport costs when material '
        'loses weight in processing.',
  ),
  Question(
    subjectId: 'i_om',
    chapter: 'Project Management (PERT & CPM)',
    text: 'In PERT, an activity has optimistic time 4 days, most likely time 6 '
        'days and pessimistic time 14 days. The expected time is:',
    options: ['8 days', '6 days', '7 days', '24 days'],
    answerIndex: 2,
    explanation: 'Expected time = (o + 4m + p) / 6 = (4 + 24 + 14) / 6 = 7 days.',
  ),
  Question(
    subjectId: 'i_om',
    chapter: 'Project Management (PERT & CPM)',
    text: 'The critical path in a project network is the:',
    options: [
      'Shortest path through the network',
      'Path with the most activities',
      'Path with the highest cost',
      'Longest path, which sets the minimum project duration',
    ],
    answerIndex: 3,
    explanation: 'Activities on the critical path have zero float; any delay in '
        'them delays the whole project.',
  ),
  Question(
    subjectId: 'i_om',
    chapter: 'Project Management (PERT & CPM)',
    text: 'In PERT, an activity has an optimistic time of 4 days and a '
        'pessimistic time of 16 days. The variance of the activity is:',
    options: ['2', '4', '12', '16'],
    answerIndex: 1,
    explanation: 'Variance = [(tp − to) ÷ 6]² = (12 ÷ 6)² = 2² = 4.',
  ),
  Question(
    subjectId: 'i_om',
    chapter: 'Project Management (PERT & CPM)',
    text: 'An activity has an earliest start time of 5 and a latest start '
        'time of 9. Its total float is:',
    options: ['14', '9', '4', '5'],
    answerIndex: 2,
    explanation: 'Total float = Latest start − Earliest start = 9 − 5 = 4.',
  ),
  Question(
    subjectId: 'i_om',
    chapter: 'Project Management (PERT & CPM)',
    text: 'A dummy activity in a network:',
    options: [
      'Is always on the critical path',
      'Is the longest activity',
      'Represents idle labour',
      'Uses no time or resources and only shows a logical dependency',
    ],
    answerIndex: 3,
    explanation: 'Dummy activities are shown by dotted arrows to keep the logic of '
        'the network correct.',
  ),
  Question(
    subjectId: 'i_om',
    chapter: 'Project Management (PERT & CPM)',
    text: 'Crashing a project means:',
    options: [
      'Cancelling the project',
      'Delaying non-critical activities',
      'Removing dummy activities',
      'Reducing its duration by adding resources at extra cost',
    ],
    answerIndex: 3,
    explanation: 'Critical activities with the lowest crash cost per day are '
        'shortened first.',
  ),
  Question(
    subjectId: 'i_om',
    chapter: 'Project Management (PERT & CPM)',
    text: 'In PERT, optimistic time is 2 days, most likely 5 days and '
        'pessimistic 8 days. The expected time is:',
    options: ['5 days', '6 days', '15 days', '4 days'],
    answerIndex: 0,
    explanation: 'tₑ = (2 + 4 × 5 + 8) ÷ 6 = 30 ÷ 6 = 5 days.',
  ),
  Question(
    subjectId: 'i_om',
    chapter: 'Project Management (PERT & CPM)',
    text: 'An activity on the critical path has a total float of:',
    options: ['One day', 'Maximum float', 'Zero', 'Equal to its duration'],
    answerIndex: 2,
    explanation: 'Any delay in a critical activity delays the whole project.',
  ),
  Question(
    subjectId: 'i_om',
    chapter: 'Project Management (PERT & CPM)',
    text: 'CPM differs from PERT mainly because CPM:',
    options: [
      'Uses three time estimates',
      'Is used only for research projects',
      'Uses deterministic time estimates and studies time-cost trade-offs',
      'Ignores the critical path',
    ],
    answerIndex: 2,
    explanation: 'PERT is probabilistic and uses three time estimates.',
  ),
  Question(
    subjectId: 'i_om',
    chapter: 'Project Management (PERT & CPM)',
    text: 'The total variance of the activities on the critical path is 9. '
        'The standard deviation of the project duration is:',
    options: ['9', '81', '3', '4.5'],
    answerIndex: 2,
    explanation: 'SD = √9 = 3.',
  ),
  Question(
    subjectId: 'i_om',
    chapter: 'Quality, JIT & Maintenance',
    text: 'The main aim of a Just-in-Time (JIT) system is to:',
    options: [
      'Hold large buffer stocks',
      'Minimise inventory and eliminate waste',
      'Buy in bulk for discounts',
      'Increase the number of suppliers',
    ],
    answerIndex: 1,
    explanation: 'JIT produces and receives goods only as needed, aiming at '
        'near-zero inventory and elimination of waste.',
  ),
  Question(
    subjectId: 'i_om',
    chapter: 'Quality, JIT & Maintenance',
    text: 'Deming\'s PDCA cycle stands for:',
    options: [
      'Plan, Do, Check, Act',
      'Produce, Deliver, Control, Audit',
      'Plan, Direct, Control, Assess',
      'Prepare, Do, Correct, Adjust',
    ],
    answerIndex: 0,
    explanation: 'PDCA (Plan–Do–Check–Act) is a cycle for continuous improvement.',
  ),
  Question(
    subjectId: 'i_om',
    chapter: 'Quality, JIT & Maintenance',
    text: 'Six Sigma quality aims at no more than:',
    options: [
      '6 defects per hundred',
      '3.4 defects per million opportunities',
      '1 defect per thousand',
      'Zero defects in every case',
    ],
    answerIndex: 1,
    explanation: 'Six Sigma targets 3.4 defects per million opportunities.',
  ),
  Question(
    subjectId: 'i_om',
    chapter: 'Quality, JIT & Maintenance',
    text: 'Maintenance carried out on a schedule to prevent breakdowns is:',
    options: [
      'Breakdown maintenance',
      'Corrective maintenance',
      'Preventive maintenance',
      'Emergency maintenance',
    ],
    answerIndex: 2,
    explanation: 'Preventive maintenance is planned in advance to reduce the '
        'chance of failure, unlike breakdown maintenance done after failure.',
  ),
  Question(
    subjectId: 'i_om',
    chapter: 'Quality, JIT & Maintenance',
    text: 'Total Quality Management (TQM) emphasises:',
    options: [
      'Quality as the job of the QC department alone',
      'Continuous improvement involving everyone in the organisation',
      'Lower quality to cut costs',
      'Inspection only at the final stage',
    ],
    answerIndex: 1,
    explanation: 'TQM is an organisation-wide approach focused on customer '
        'satisfaction and continuous improvement.',
  ),
  Question(
    subjectId: 'i_om',
    chapter: 'Quality, JIT & Maintenance',
    text: 'Kaizen means:',
    options: [
      'Just-in-time purchasing',
      'Continuous, small, incremental improvement',
      'A one-time radical change',
      'Preventive maintenance',
    ],
    answerIndex: 1,
    explanation: 'Kaizen is a Japanese approach in which everyone makes small '
        'improvements continuously.',
  ),
  Question(
    subjectId: 'i_om',
    chapter: 'Quality, JIT & Maintenance',
    text: 'A control chart for the number of defects per unit is a:',
    options: ['c-chart', 'X̄-chart', 'p-chart', 'R-chart'],
    answerIndex: 0,
    explanation: 'A p-chart tracks the fraction defective; X̄ and R charts are for '
        'variables.',
  ),
  Question(
    subjectId: 'i_om',
    chapter: 'Quality, JIT & Maintenance',
    text: 'Breakdown maintenance means:',
    options: [
      'Servicing on a fixed schedule',
      'Repairing equipment after it fails',
      'Replacing all parts every month',
      'Predicting failures using sensors',
    ],
    answerIndex: 1,
    explanation: 'It is reactive maintenance and can cause costly unplanned '
        'stoppages.',
  ),
  Question(
    subjectId: 'i_om',
    chapter: 'Quality, JIT & Maintenance',
    text: 'The 5S technique relates to:',
    options: [
      'Recruitment',
      'Workplace organisation',
      'Marketing strategy',
      'Financial reporting',
    ],
    answerIndex: 1,
    explanation: '5S stands for Sort, Set in order, Shine, Standardise and Sustain.',
  ),
  Question(
    subjectId: 'i_om',
    chapter: 'Quality, JIT & Maintenance',
    text: 'Prevention costs of quality include:',
    options: [
      'Scrap and rework',
      'Warranty claims',
      'Inspection of finished goods',
      'Quality training of employees',
    ],
    answerIndex: 3,
    explanation: 'Scrap and warranty are failure costs; inspection is an appraisal '
        'cost.',
  ),

  // Strategic management
  Question(
    subjectId: 'i_om',
    chapter: 'Strategic Analysis',
    text: 'In SWOT analysis, the external factors are:',
    options: [
      'Strengths and weaknesses',
      'Strengths and opportunities',
      'Weaknesses and threats',
      'Opportunities and threats',
    ],
    answerIndex: 3,
    explanation: 'Strengths and weaknesses are internal; opportunities and threats '
        'come from the external environment.',
  ),
  Question(
    subjectId: 'i_om',
    chapter: 'Strategic Analysis',
    text: 'In the BCG matrix, a business with a high market share in a '
        'low-growth market is a:',
    options: ['Star', 'Question mark', 'Cash cow', 'Dog'],
    answerIndex: 2,
    explanation: 'Cash cows generate more cash than they need. Stars have high '
        'share in high-growth markets; dogs have low share in low-growth markets.',
  ),
  Question(
    subjectId: 'i_om',
    chapter: 'Strategic Analysis',
    text: 'Which of the following is NOT one of Porter\'s five forces?',
    options: [
      'Threat of new entrants',
      'Bargaining power of buyers',
      'Threat of substitutes',
      'Rate of inflation',
    ],
    answerIndex: 3,
    explanation: 'The five forces are rivalry among competitors, threat of new '
        'entrants, threat of substitutes, and bargaining power of buyers and of '
        'suppliers.',
  ),
  Question(
    subjectId: 'i_om',
    chapter: 'Strategic Analysis',
    text: 'PESTLE analysis is used to study an organisation\'s:',
    options: [
      'Financial ratios',
      'Product costs',
      'External macro-environment',
      'Internal strengths only',
    ],
    answerIndex: 2,
    explanation: 'PESTLE covers Political, Economic, Social, Technological, Legal '
        'and Environmental factors.',
  ),
  Question(
    subjectId: 'i_om',
    chapter: 'Strategic Analysis',
    text: 'In the BCG matrix, a business with low market share in a '
        'high-growth market is a:',
    options: ['Dog', 'Star', 'Question mark', 'Cash cow'],
    answerIndex: 2,
    explanation: 'Question marks need heavy investment to gain share; they may '
        'become stars or decline into dogs.',
  ),
  Question(
    subjectId: 'i_om',
    chapter: 'Strategic Analysis',
    text: 'Core competence refers to:',
    options: [
      'The firm\'s total fixed assets',
      'Unique capabilities that give a firm competitive advantage',
      'The legal structure of a company',
      'The minimum skills every firm has',
    ],
    answerIndex: 1,
    explanation: 'Core competencies are hard to imitate, provide customer value and '
        'can be used across markets.',
  ),
  Question(
    subjectId: 'i_om',
    chapter: 'Strategic Analysis',
    text: 'The value chain concept was developed by:',
    options: ['Igor Ansoff', 'Peter Drucker', 'Michael Porter', 'Henri Fayol'],
    answerIndex: 2,
    explanation: 'It splits a firm into primary and support activities that create '
        'value.',
  ),
  Question(
    subjectId: 'i_om',
    chapter: 'Strategic Analysis',
    text: 'In the BCG matrix, a business with high market share in a '
        'high-growth market is a:',
    options: ['Cash cow', 'Dog', 'Star', 'Question mark'],
    answerIndex: 2,
    explanation: 'Stars need investment to keep up with growth but can become cash '
        'cows.',
  ),
  Question(
    subjectId: 'i_om',
    chapter: 'Strategic Analysis',
    text: 'In the BCG matrix, a business with low market share in a '
        'low-growth market is a:',
    options: ['Cash cow', 'Dog', 'Star', 'Question mark'],
    answerIndex: 1,
    explanation: 'Dogs are candidates for divestment.',
  ),
  Question(
    subjectId: 'i_om',
    chapter: 'Strategic Analysis',
    text: 'In SWOT analysis, strengths and weaknesses are:',
    options: [
      'Government policies',
      'External factors',
      'Competitors\' actions',
      'Internal factors',
    ],
    answerIndex: 3,
    explanation: 'Opportunities and threats are external factors.',
  ),
  Question(
    subjectId: 'i_om',
    chapter: 'Strategy Formulation',
    text: 'Which of the following is NOT one of Porter\'s generic strategies?',
    options: ['Cost leadership', 'Diversification', 'Differentiation', 'Focus'],
    answerIndex: 1,
    explanation: 'Porter\'s generic strategies are cost leadership, '
        'differentiation and focus. Diversification comes from Ansoff\'s matrix.',
  ),
  Question(
    subjectId: 'i_om',
    chapter: 'Strategy Formulation',
    text: 'In Ansoff\'s matrix, launching a new product in an existing market is:',
    options: [
      'Market penetration',
      'Market development',
      'Product development',
      'Diversification',
    ],
    answerIndex: 2,
    explanation: 'New product + existing market = product development. Existing '
        'product + new market = market development.',
  ),
  Question(
    subjectId: 'i_om',
    chapter: 'Strategy Formulation',
    text: 'A statement of what an organisation aspires to become in the long '
        'run is its:',
    options: ['Vision', 'Policy', 'Procedure', 'Budget'],
    answerIndex: 0,
    explanation: 'Vision describes the desired future. Mission describes the '
        'organisation\'s purpose and what it does now.',
  ),
  Question(
    subjectId: 'i_om',
    chapter: 'Strategy Formulation',
    text: 'In Ansoff\'s matrix, offering new products in new markets is:',
    options: [
      'Product development',
      'Diversification',
      'Market development',
      'Market penetration',
    ],
    answerIndex: 1,
    explanation: 'Diversification combines a new product with a new market and '
        'carries the highest risk.',
  ),
  Question(
    subjectId: 'i_om',
    chapter: 'Strategy Formulation',
    text: 'A mission statement describes:',
    options: [
      'The detailed annual budget',
      'Next year\'s sales target',
      'The organisation\'s purpose and why it exists',
      'The organisation chart',
    ],
    answerIndex: 2,
    explanation: 'The mission states the present purpose; the vision describes what '
        'the organisation wants to become.',
  ),
  Question(
    subjectId: 'i_om',
    chapter: 'Strategy Formulation',
    text: 'Selling off a business unit or division is called:',
    options: [
      'Market penetration',
      'Integration',
      'Divestment',
      'Diversification',
    ],
    answerIndex: 2,
    explanation: 'Divestment is a retrenchment strategy used to exit unprofitable or '
        'non-core businesses.',
  ),
  Question(
    subjectId: 'i_om',
    chapter: 'Strategy Formulation',
    text: 'A cost leadership strategy aims to:',
    options: [
      'Charge the highest prices',
      'Avoid competition completely',
      'Serve only a small niche',
      'Become the lowest-cost producer in the industry',
    ],
    answerIndex: 3,
    explanation: 'Porter\'s other generic strategies are differentiation and focus.',
  ),
  Question(
    subjectId: 'i_om',
    chapter: 'Strategy Formulation',
    text: 'In Ansoff\'s matrix, selling existing products in existing markets '
        'more aggressively is:',
    options: [
      'Diversification',
      'Market penetration',
      'Product development',
      'Market development',
    ],
    answerIndex: 1,
    explanation: 'It is the least risky growth strategy.',
  ),
  Question(
    subjectId: 'i_om',
    chapter: 'Strategy Formulation',
    text: 'Vertical integration means:',
    options: [
      'Acquiring suppliers or distributors in the same value chain',
      'Entering unrelated businesses',
      'Merging with a competitor',
      'Closing a business unit',
    ],
    answerIndex: 0,
    explanation: 'Backward integration moves towards suppliers; forward integration '
        'towards customers.',
  ),
  Question(
    subjectId: 'i_om',
    chapter: 'Strategy Formulation',
    text: 'A turnaround strategy is used to:',
    options: [
      'Reverse the decline of a loss-making business',
      'Expand into new markets',
      'Increase dividends',
      'Merge with a rival',
    ],
    answerIndex: 0,
    explanation: 'It typically involves cost cuts, restructuring and management '
        'changes.',
  ),
];
