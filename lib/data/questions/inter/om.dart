import '../../../models/question.dart';

const interOmQuestions = [
  // Operations management
  Question(
    subjectId: 'i_om',
    text: '1,200 units are produced using 300 labour hours. Labour productivity is:',
    options: ['0.25 units per hour', '4 units per hour', '3 units per hour', '900 units'],
    answerIndex: 1,
    explanation: 'Productivity = Output / Input = 1,200 / 300 = 4 units per labour hour.',
  ),
  Question(
    subjectId: 'i_om',
    text: 'A plant designed to produce 10,000 units a month actually produces '
        '8,000 units. Capacity utilisation is:',
    options: ['125%', '20%', '80%', '8%'],
    answerIndex: 2,
    explanation: 'Utilisation = Actual output / Design capacity = 8,000 / 10,000 = 80%.',
  ),
  Question(
    subjectId: 'i_om',
    text: 'A layout in which similar machines are grouped together (all lathes '
        'in one area, all drills in another) is a:',
    options: ['Product layout', 'Fixed-position layout', 'Cellular layout', 'Process layout'],
    answerIndex: 3,
    explanation: 'Process (functional) layout groups machines by function and '
        'suits job and batch production.',
  ),
  Question(
    subjectId: 'i_om',
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
    text: 'In PERT, an activity has optimistic time 4 days, most likely time 6 '
        'days and pessimistic time 14 days. The expected time is:',
    options: ['8 days', '6 days', '7 days', '24 days'],
    answerIndex: 2,
    explanation: 'Expected time = (o + 4m + p) / 6 = (4 + 24 + 14) / 6 = 7 days.',
  ),
  Question(
    subjectId: 'i_om',
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

  // Strategic management
  Question(
    subjectId: 'i_om',
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
    text: 'In the BCG matrix, a business with a high market share in a '
        'low-growth market is a:',
    options: ['Star', 'Question mark', 'Cash cow', 'Dog'],
    answerIndex: 2,
    explanation: 'Cash cows generate more cash than they need. Stars have high '
        'share in high-growth markets; dogs have low share in low-growth markets.',
  ),
  Question(
    subjectId: 'i_om',
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
    text: 'Which of the following is NOT one of Porter\'s generic strategies?',
    options: ['Cost leadership', 'Diversification', 'Differentiation', 'Focus'],
    answerIndex: 1,
    explanation: 'Porter\'s generic strategies are cost leadership, '
        'differentiation and focus. Diversification comes from Ansoff\'s matrix.',
  ),
  Question(
    subjectId: 'i_om',
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
    text: 'A statement of what an organisation aspires to become in the long '
        'run is its:',
    options: ['Vision', 'Policy', 'Procedure', 'Budget'],
    answerIndex: 0,
    explanation: 'Vision describes the desired future. Mission describes the '
        'organisation\'s purpose and what it does now.',
  ),
];
