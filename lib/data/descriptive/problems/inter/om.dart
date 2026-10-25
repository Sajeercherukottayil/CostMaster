import '../../../../models/question.dart';

const interOmProblems = [
  DescriptiveQuestion(
    subjectId: 'i_om',
    chapter: 'Productivity & Capacity',
    text:
        'Last month a unit made 2,000 units in 500 labour hours; this month '
        'it made 2,400 units in 550 hours. Find the change in labour '
        'productivity. This month\'s output is worth ₹1,00,000, using labour '
        '₹20,000, materials ₹30,000 and overheads ₹10,000. Find the '
        'multifactor productivity.',
    marks: 5,
    problem: true,
    answer:
        'Labour productivity\n'
        '• Last month: 2,000 ÷ 500 = 4 units per hour\n'
        '• This month: 2,400 ÷ 550 = 4.36 units per hour\n'
        '• Increase = (4.36 − 4) ÷ 4 × 100 = 9.1%\n'
        'Multifactor productivity\n'
        '• = Output value ÷ (Labour + Materials + Overheads) = 1,00,000 ÷ '
        '60,000 = 1.67\n'
        'Each rupee of input produces ₹1.67 of output.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_om',
    chapter: 'Productivity & Capacity',
    text:
        'Annual demand is 50,000 units and each unit takes 0.5 machine '
        'hours. A machine is available for 2,000 hours a year and works at '
        '80% efficiency. How many machines are needed?',
    marks: 4,
    problem: true,
    answer:
        '• Machine hours required = 50,000 × 0.5 = 25,000 hours\n'
        '• Effective hours per machine = 2,000 × 80% = 1,600 hours\n'
        '• Machines needed = 25,000 ÷ 1,600 = 15.6, so 16 machines\n'
        'Machines are rounded up, since a fraction of a machine cannot be '
        'bought.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_om',
    chapter: 'Plant Layout',
    text:
        'An assembly line must produce 60 units in an 8-hour shift. Task '
        'times (minutes): A 4, B 3, C 5, D 2, E 6. A comes before B and D; B '
        'before C; C and D before E. Find the cycle time and minimum number '
        'of stations, assign the tasks, and find the line efficiency.',
    marks: 6,
    problem: true,
    answer:
        '• Cycle time = Available time ÷ Output = 480 ÷ 60 = 8 minutes\n'
        '• Total task time = 4 + 3 + 5 + 2 + 6 = 20 minutes\n'
        '• Minimum stations = 20 ÷ 8 = 2.5, so 3\n'
        'Assignment (respecting precedence and the 8-minute limit):\n'
        '• Station 1: A + B = 7 minutes\n'
        '• Station 2: C + D = 7 minutes\n'
        '• Station 3: E = 6 minutes\n'
        '• Efficiency = Total task time ÷ (Stations × Cycle time) = 20 ÷ '
        '(3 × 8) = 83.3%\n'
        'Idle time is 4 minutes per cycle (balance delay 16.7%).',
  ),
  DescriptiveQuestion(
    subjectId: 'i_om',
    chapter: 'Project Management (PERT & CPM)',
    text:
        'Activities (node to node, days): A 1–2 (4), B 1–3 (6), C 2–4 (5), '
        'D 3–4 (4), E 4–5 (2), F 2–5 (6). Find the critical path, project '
        'duration and the total float of each activity.',
    marks: 8,
    problem: true,
    answer:
        'Paths:\n'
        '• A–C–E = 4 + 5 + 2 = 11 days\n'
        '• B–D–E = 6 + 4 + 2 = 12 days\n'
        '• A–F = 4 + 6 = 10 days\n'
        'Critical path is B–D–E, and the project takes 12 days.\n'
        'Latest event times: node 5 = 12; node 4 = 10; node 3 = 6; node 2 = '
        'min(10 − 5, 12 − 6) = 5; node 1 = 0.\n'
        'Total float = Latest finish − Earliest start − Duration:\n'
        '• A: 5 − 0 − 4 = 1\n'
        '• B: 6 − 0 − 6 = 0\n'
        '• C: 10 − 4 − 5 = 1\n'
        '• D: 10 − 6 − 4 = 0\n'
        '• E: 12 − 10 − 2 = 0\n'
        '• F: 12 − 4 − 6 = 2\n'
        'Activities with zero float (B, D, E) are critical.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_om',
    chapter: 'Project Management (PERT & CPM)',
    text:
        '(a) The critical path has an expected duration of 30 days and a '
        'variance of 4. Find the probability of finishing within 33 days and '
        'within 28 days (Z = 1.5 gives 0.9332; Z = 1 gives 0.8413). (b) An '
        'activity takes 10 days at ₹5,000, or 7 days at ₹6,500 if crashed. '
        'Find its cost slope.',
    marks: 5,
    problem: true,
    answer:
        '(a) Standard deviation = √4 = 2 days\n'
        '• Within 33 days: Z = (33 − 30) ÷ 2 = 1.5, so probability = 93.32%\n'
        '• Within 28 days: Z = (28 − 30) ÷ 2 = −1, so probability = 1 − '
        '0.8413 = 15.87%\n'
        '(b) Cost slope = (Crash cost − Normal cost) ÷ (Normal time − Crash '
        'time) = (6,500 − 5,000) ÷ (10 − 7) = ₹500 per day\n'
        'When crashing, critical activities with the lowest cost slope are '
        'shortened first.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_om',
    chapter: 'Quality, JIT & Maintenance',
    text:
        'Ten samples of 100 items each contained 50 defectives in total. '
        'Set up the control limits for a p-chart.',
    marks: 5,
    problem: true,
    answer:
        '• Average fraction defective p̄ = 50 ÷ (10 × 100) = 0.05\n'
        '• Standard error = √[p̄ (1 − p̄) ÷ n] = √(0.05 × 0.95 ÷ 100) = 0.0218\n'
        '• Upper control limit = 0.05 + 3 × 0.0218 = 0.1154\n'
        '• Lower control limit = 0.05 − 0.0654, which is negative, so 0\n'
        'A sample with more than about 11.5% defectives shows the process is '
        'out of control.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_om',
    chapter: 'Quality, JIT & Maintenance',
    text:
        'A plant has 20 machines. Each breakdown costs ₹2,000. Without '
        'preventive maintenance, a machine breaks down 0.3 times a month on '
        'average. Monthly preventive maintenance costs ₹400 per machine and '
        'cuts breakdowns to 0.05 per machine a month. Which policy is '
        'cheaper?',
    marks: 4,
    problem: true,
    answer:
        'Breakdown maintenance only:\n'
        '• 20 × 0.3 × 2,000 = ₹12,000 a month\n'
        'Preventive maintenance:\n'
        '• Preventive cost = 20 × 400 = 8,000\n'
        '• Breakdown cost = 20 × 0.05 × 2,000 = 2,000\n'
        '• Total = ₹10,000 a month\n'
        'Preventive maintenance saves ₹2,000 a month, and also reduces '
        'disruption to production.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_om',
    chapter: 'Strategic Analysis',
    text:
        'Classify each product in the BCG matrix (high growth above 10%; '
        'high share means relative market share above 1): P (growth 15%, '
        'relative share 2.0); Q (3%, 1.5); R (18%, 0.4); S (2%, 0.3). '
        'Suggest a strategy for each.',
    marks: 5,
    problem: true,
    answer:
        '• P – Star (high growth, high share): invest to keep its lead.\n'
        '• Q – Cash cow (low growth, high share): harvest the cash it '
        'generates, with modest investment.\n'
        '• R – Question mark (high growth, low share): either invest heavily '
        'to build share, or exit.\n'
        '• S – Dog (low growth, low share): divest, or keep only if it '
        'supports other products.\n'
        'Cash from Q can fund P and selected question marks such as R.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_om',
    chapter: 'Strategy Formulation',
    text:
        'Identify the Ansoff growth strategy in each case: (a) a bank '
        'offers existing customers better rates to open more savings '
        'accounts; (b) an Indian soap maker starts selling the same soap in '
        'Africa; (c) a phone maker launches a smartwatch for its existing '
        'customers; (d) a cement company opens a chain of hotels.',
    marks: 4,
    problem: true,
    answer:
        '(a) Market penetration: existing product, existing market.\n'
        '(b) Market development: existing product, new market.\n'
        '(c) Product development: new product, existing market.\n'
        '(d) Diversification (unrelated): new product, new market. This '
        'carries the highest risk.',
  ),
];
