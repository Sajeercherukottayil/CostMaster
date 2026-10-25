import '../../../../models/question.dart';

const interOmMoreDescriptive = [
  // Productivity & Capacity
  DescriptiveQuestion(
    subjectId: 'i_om',
    chapter: 'Productivity & Capacity',
    text:
        'A worker is observed to take 8 minutes per unit at a performance '
        'rating of 125%. Allowances are 20% of normal time. Find the normal '
        'time, standard time and standard output in an 8-hour shift.',
    marks: 4,
    problem: true,
    answer:
        '• Normal time = Observed time × Rating = 8 × 125% = 10 minutes\n'
        '• Standard time = Normal time × (1 + allowances) = 10 × 1.20 = 12 '
        'minutes\n'
        '• Standard output per shift = 480 ÷ 12 = 40 units\n'
        'Allowances cover personal needs, fatigue and unavoidable delays.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_om',
    chapter: 'Productivity & Capacity',
    text: 'What factors affect productivity? How can it be improved?',
    marks: 5,
    answer:
        'Factors:\n'
        '• Technology and equipment: modern machines raise output per worker.\n'
        '• Human factors: skills, training, motivation and health.\n'
        '• Methods and layout: efficient processes reduce wasted effort.\n'
        '• Management: planning, scheduling and maintenance.\n'
        '• Materials: quality and timely supply.\n'
        '• External factors: power supply, infrastructure and government '
        'policy.\n'
        'Ways to improve:\n'
        '• Work study and process simplification.\n'
        '• Training and incentive schemes.\n'
        '• Preventive maintenance and automation.\n'
        '• Reducing waste and rework through quality programmes.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_om',
    chapter: 'Productivity & Capacity',
    text: 'Explain the lead, lag and match strategies of capacity planning.',
    marks: 4,
    answer:
        '• Lead strategy: capacity is added before demand rises. It '
        'avoids lost sales and can build market share, but risks idle '
        'capacity if demand does not grow.\n'
        '• Lag strategy: capacity is added only after demand has risen. It '
        'keeps utilisation high and reduces risk, but may lose customers '
        'during shortages.\n'
        '• Match (tracking) strategy: capacity is added in small steps to '
        'follow demand closely. It balances the two, but needs frequent '
        'changes.\n'
        'The choice depends on the cost of idle capacity versus the cost of '
        'lost sales.',
  ),

  // Plant Layout
  DescriptiveQuestion(
    subjectId: 'i_om',
    chapter: 'Plant Layout',
    text:
        'Three sites are scored out of 10 on four factors: labour (weight '
        '0.4): A 8, B 6, C 7; transport (0.3): A 6, B 9, C 7; power (0.2): A '
        '7, B 7, C 9; community (0.1): A 9, B 6, C 6. Which site should be '
        'chosen by the factor rating method?',
    marks: 5,
    problem: true,
    answer:
        'Weighted scores:\n'
        '• A = 0.4 × 8 + 0.3 × 6 + 0.2 × 7 + 0.1 × 9 = 3.2 + 1.8 + 1.4 + 0.9 '
        '= 7.3\n'
        '• B = 0.4 × 6 + 0.3 × 9 + 0.2 × 7 + 0.1 × 6 = 2.4 + 2.7 + 1.4 + 0.6 '
        '= 7.1\n'
        '• C = 0.4 × 7 + 0.3 × 7 + 0.2 × 9 + 0.1 × 6 = 2.8 + 2.1 + 1.8 + 0.6 '
        '= 7.3\n'
        'A and C tie at 7.3. Management should consider other factors, such '
        'as cost or expansion space, to break the tie. B is eliminated.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_om',
    chapter: 'Plant Layout',
    text:
        'Site X has fixed costs of ₹3,00,000 a year and variable cost of '
        '₹20 per unit; site Y has fixed costs of ₹5,00,000 and variable cost '
        '₹15 per unit. Find the volume at which costs are equal, and the '
        'better site for 50,000 units.',
    marks: 4,
    problem: true,
    answer:
        'At the break-even volume Q:\n'
        '• 3,00,000 + 20Q = 5,00,000 + 15Q, so 5Q = 2,00,000 and Q = 40,000 '
        'units\n'
        'At 50,000 units:\n'
        '• X = 3,00,000 + 10,00,000 = ₹13,00,000\n'
        '• Y = 5,00,000 + 7,50,000 = ₹12,50,000\n'
        'Site Y is cheaper above 40,000 units, so choose Y for 50,000 units.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_om',
    chapter: 'Plant Layout',
    text: 'State the objectives of a good plant layout.',
    marks: 4,
    answer:
        '• Minimise material handling and the distance materials travel.\n'
        '• Make the best use of floor space.\n'
        '• Ensure a smooth flow of work without bottlenecks.\n'
        '• Provide safe and comfortable working conditions.\n'
        '• Allow easy supervision and communication.\n'
        '• Keep work-in-progress and throughput time low.\n'
        '• Allow flexibility for future changes in products or volume.\n'
        '• Make maintenance of machines easy.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_om',
    chapter: 'Plant Layout',
    text: 'What is a cellular layout? State its advantages.',
    marks: 4,
    answer:
        'In a cellular layout, machines needed to make a family of '
        'similar parts are grouped into a cell, based on group technology. '
        'Each cell works like a small product line.\n'
        'Advantages:\n'
        '• Less material handling and shorter throughput time.\n'
        '• Lower work-in-progress and set-up times.\n'
        '• Better teamwork and responsibility for quality within each cell.\n'
        '• Flexibility close to a process layout with efficiency close to a '
        'product layout.\n'
        'It suits batch production of a variety of similar parts.',
  ),

  // Project Management (PERT & CPM)
  DescriptiveQuestion(
    subjectId: 'i_om',
    chapter: 'Project Management (PERT & CPM)',
    text:
        'Activities with times (days): A 3 (start); B 4 (start); C 5 '
        '(after A); D 2 (after B); E 3 (after C and D). Draw the logic, find '
        'the critical path and project duration, and the float of D.',
    marks: 6,
    problem: true,
    answer:
        'Paths:\n'
        '• A–C–E = 3 + 5 + 3 = 11 days\n'
        '• B–D–E = 4 + 2 + 3 = 9 days\n'
        'Critical path: A–C–E, duration 11 days.\n'
        'For D:\n'
        '• Earliest start = 4 (after B); earliest finish = 6\n'
        '• E must start by 11 − 3 = 8, so D\'s latest finish = 8\n'
        '• Total float of D = 8 − 6 = 2 days (B–D shares this float)',
  ),
  DescriptiveQuestion(
    subjectId: 'i_om',
    chapter: 'Project Management (PERT & CPM)',
    text:
        'A project\'s normal duration is 20 days with direct cost ₹50,000 '
        'and indirect cost ₹2,000 a day. Critical activity P can be crashed '
        'by 2 days at ₹1,500 a day, and Q by 3 days at ₹2,500 a day. No new '
        'critical path appears. Which should be crashed, and what is the '
        'minimum total cost?',
    marks: 6,
    problem: true,
    answer:
        'Normal total cost = 50,000 + 20 × 2,000 = ₹90,000\n'
        '• Crash P (₹1,500 a day) first, since it is cheaper than the '
        '₹2,000 indirect cost saved: 2 days, saving 2 × 500 = ₹1,000\n'
        '• Q costs ₹2,500 a day, more than the ₹2,000 saved, so crashing it '
        'raises total cost\n'
        'Optimum: crash P by 2 days, duration 18 days\n'
        '• Total cost = 50,000 + 3,000 + 18 × 2,000 = ₹89,000',
  ),
  DescriptiveQuestion(
    subjectId: 'i_om',
    chapter: 'Project Management (PERT & CPM)',
    text: 'Explain total float, free float and independent float.',
    marks: 4,
    answer:
        '• Total float: how long an activity can be delayed without '
        'delaying the project. Total float = LFT − EST − duration.\n'
        '• Free float: how long it can be delayed without delaying the '
        'earliest start of any following activity. Free float = EST of the '
        'next activity − EFT of this activity.\n'
        '• Independent float: delay possible even if preceding activities '
        'finish as late as possible and following ones must start as early '
        'as possible. Independent float = EST of next − LFT of previous − '
        'duration (minimum zero).\n'
        'Critical activities have zero total float.',
  ),

  // Quality, JIT & Maintenance
  DescriptiveQuestion(
    subjectId: 'i_om',
    chapter: 'Quality, JIT & Maintenance',
    text: 'Explain the four categories of the cost of quality, with examples.',
    marks: 5,
    answer:
        '• Prevention costs: to stop defects happening, such as quality '
        'training, process design and supplier development.\n'
        '• Appraisal costs: to find defects, such as inspection, testing and '
        'quality audits.\n'
        '• Internal failure costs: defects found before delivery, such as '
        'scrap, rework and downtime.\n'
        '• External failure costs: defects found by customers, such as '
        'warranty claims, returns, recalls and lost reputation.\n'
        'Spending more on prevention usually lowers the total cost of '
        'quality, because failure costs fall faster.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_om',
    chapter: 'Quality, JIT & Maintenance',
    text:
        'Eight samples of 5 items have means (mm) 10.2, 9.8, 10.1, 10.0, '
        '9.9, 10.3, 9.7, 10.0 and an average range of 0.5. With A₂ = 0.577, '
        'find the control limits for the x̄-chart.',
    marks: 5,
    problem: true,
    answer:
        '• Grand mean x̿ = (10.2 + 9.8 + 10.1 + 10.0 + 9.9 + 10.3 + 9.7 + '
        '10.0) ÷ 8 = 80.0 ÷ 8 = 10.0 mm\n'
        '• UCL = x̿ + A₂R̄ = 10.0 + 0.577 × 0.5 = 10.29 mm\n'
        '• LCL = x̿ − A₂R̄ = 10.0 − 0.289 = 9.71 mm\n'
        'Sample 6 (10.3) is above the UCL and sample 7 (9.7) is just below '
        'the LCL, so the process may be out of control and the causes should '
        'be investigated.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_om',
    chapter: 'Quality, JIT & Maintenance',
    text: 'Explain Total Quality Management and its main principles.',
    marks: 5,
    answer:
        'TQM is an organisation-wide approach in which everyone works to '
        'improve quality continuously, to satisfy customers.\n'
        'Principles:\n'
        '• Customer focus: quality is defined by the customer.\n'
        '• Total involvement: all employees, not just the quality department.\n'
        '• Continuous improvement (kaizen).\n'
        '• Process approach: improve processes, not just inspect products.\n'
        '• Decisions based on facts and data, using tools like control '
        'charts.\n'
        '• Leadership commitment from top management.\n'
        '• Supplier partnerships for consistent inputs.',
  ),

  // Strategic Analysis
  DescriptiveQuestion(
    subjectId: 'i_om',
    chapter: 'Strategic Analysis',
    text: 'Explain Porter\'s five forces model.',
    marks: 6,
    answer:
        'Porter argued that industry profitability depends on five '
        'forces:\n'
        '• Threat of new entrants: low when entry barriers (capital, scale, '
        'brands, licences) are high.\n'
        '• Bargaining power of suppliers: high when suppliers are few, inputs '
        'are unique or switching is costly.\n'
        '• Bargaining power of buyers: high when buyers are few, large, or '
        'can switch easily.\n'
        '• Threat of substitutes: high when other products meet the same '
        'need at similar cost.\n'
        '• Rivalry among existing competitors: high when there are many '
        'similar firms, slow growth, high fixed costs or exit barriers.\n'
        'The stronger the forces, the lower the industry\'s potential profit.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_om',
    chapter: 'Strategic Analysis',
    text:
        'A mobile phone retailer reviews its environment: a new '
        'government digital payment push; falling phone prices; customers '
        'buying online; new data protection rules; demand for recycled '
        'packaging. Classify each item using PESTLE.',
    marks: 5,
    problem: true,
    answer:
        '• Political: government digital payment push.\n'
        '• Economic: falling phone prices (affects revenue per sale).\n'
        '• Social: customers shifting to online buying.\n'
        '• Technological: online platforms and digital payments enabling '
        'new channels.\n'
        '• Legal: new data protection rules on customer data.\n'
        '• Environmental: demand for recycled packaging.\n'
        'The retailer should build an online channel, comply with data rules '
        'and use greener packaging.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_om',
    chapter: 'Strategic Analysis',
    text:
        'Explain Porter\'s value chain and how it helps in strategic '
        'analysis.',
    marks: 5,
    answer:
        'The value chain breaks a firm into activities that create value '
        'for customers.\n'
        'Primary activities:\n'
        '• Inbound logistics, operations, outbound logistics, marketing and '
        'sales, and service.\n'
        'Support activities:\n'
        '• Firm infrastructure, human resource management, technology '
        'development and procurement.\n'
        'Uses:\n'
        '• Shows which activities create competitive advantage through '
        'lower cost or differentiation.\n'
        '• Identifies activities to improve or outsource.\n'
        '• Shows links between activities, such as how better procurement '
        'improves quality in operations.\n'
        'Margin is the difference between the value customers pay and the '
        'cost of all activities.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_om',
    chapter: 'Strategic Analysis',
    text: 'What is core competence? How can a firm identify and use it?',
    marks: 4,
    answer:
        'A core competence (Prahalad and Hamel) is a combination of '
        'skills and technologies that gives a firm a distinctive advantage.\n'
        'Tests:\n'
        '• It gives access to a range of markets.\n'
        '• It makes a significant contribution to customer benefits.\n'
        '• It is difficult for competitors to copy.\n'
        'Uses:\n'
        '• Build new products and enter new markets based on it, such as a '
        'firm skilled in engines making cars, bikes and generators.\n'
        '• Outsource activities that are not core.\n'
        '• Keep investing to protect and deepen it.',
  ),

  // Strategy Formulation
  DescriptiveQuestion(
    subjectId: 'i_om',
    chapter: 'Strategy Formulation',
    text: 'Explain the main types of grand strategies.',
    marks: 5,
    answer:
        '• Stability: continue the present business with small '
        'changes, suited to stable environments.\n'
        '• Expansion (growth): through intensification (market penetration, '
        'market development, product development), integration (vertical or '
        'horizontal), diversification (related or unrelated), or '
        'cooperation (mergers, alliances, joint ventures).\n'
        '• Retrenchment: reduce scope to improve performance, through '
        'turnaround, divestment or liquidation.\n'
        '• Combination: different strategies for different businesses at '
        'the same time, such as expanding one division and divesting '
        'another.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_om',
    chapter: 'Strategy Formulation',
    text:
        'A textile company has three units: a growing export unit with '
        'strong share, a profitable but slow-growing domestic unit, and a '
        'small loss-making retail chain in a crowded market. Suggest a '
        'strategy for each.',
    marks: 5,
    problem: true,
    answer:
        '• Export unit (high growth, strong share, like a BCG star): '
        'expansion. Invest in capacity, markets and design to keep its '
        'lead.\n'
        '• Domestic unit (low growth, profitable, like a cash cow): '
        'stability. Keep costs low and use its cash to fund the export unit.\n'
        '• Retail chain (small share, crowded market, losses, like a dog): '
        'retrenchment. Try a turnaround if a clear niche exists; otherwise '
        'divest or close it.\n'
        'Together this is a combination strategy for the company.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_om',
    chapter: 'Strategy Formulation',
    text: 'Distinguish between vision, mission and objectives.',
    marks: 4,
    answer:
        '• Vision: what the organisation wants to become in the long '
        'term. It is inspiring and broad, for example "to be the most '
        'trusted bank in India".\n'
        '• Mission: why the organisation exists, whom it serves and how. It '
        'defines the business and its values.\n'
        '• Objectives: specific, measurable targets to achieve the mission, '
        'for example "increase market share to 15% by 2028".\n'
        'Vision gives direction, mission defines purpose, and objectives '
        'turn them into results that can be measured.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_om',
    chapter: 'Strategy Formulation',
    text:
        'Distinguish between corporate-level, business-level and '
        'functional-level strategies.',
    marks: 4,
    answer:
        '• Corporate level: decided by top management; answers "which '
        'businesses should we be in?" Examples: diversification, acquisitions '
        'and divestment.\n'
        '• Business level: decided by business unit heads; answers "how do '
        'we compete in this business?" Examples: cost leadership, '
        'differentiation or focus.\n'
        '• Functional level: decided by functional managers; answers "how '
        'does each function support the business strategy?" Examples: '
        'marketing, production, finance and HR plans.\n'
        'The three levels must be consistent, with each lower level '
        'supporting the one above.',
  ),
];
