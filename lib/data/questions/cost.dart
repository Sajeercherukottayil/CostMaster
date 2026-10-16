import '../../models/question.dart';

const costQuestions = [
  Question(
    subjectId: 'cost',
    text: 'Annual demand is 2,400 units, ordering cost is ₹100 per order and '
        'carrying cost is ₹3 per unit per year. The EOQ is:',
    options: ['200 units', '400 units', '800 units', '160 units'],
    answerIndex: 1,
    explanation: 'EOQ = √(2AO/C) = √(2 × 2,400 × 100 / 3) = √1,60,000 = 400 units.',
  ),
  Question(
    subjectId: 'cost',
    text: 'Maximum usage is 50 units per day and maximum re-order period is '
        '10 days. The re-order level is:',
    options: ['250 units', '1,000 units', '500 units', '60 units'],
    answerIndex: 2,
    explanation: 'Re-order level = Maximum usage × Maximum re-order period = 50 × 10 = 500 units.',
  ),
  Question(
    subjectId: 'cost',
    text: 'Re-order level is 500 units, normal usage is 30 units per day and '
        'normal re-order period is 8 days. The minimum stock level is:',
    options: ['740 units', '240 units', '260 units', '470 units'],
    answerIndex: 2,
    explanation: 'Minimum level = ROL − (Normal usage × Normal re-order period) '
        '= 500 − (30 × 8) = 260 units.',
  ),
  Question(
    subjectId: 'cost',
    text: 'Re-order level is 500 units, re-order quantity is 400 units, minimum '
        'usage is 20 units per day and minimum re-order period is 6 days. The '
        'maximum stock level is:',
    options: ['780 units', '900 units', '1,020 units', '620 units'],
    answerIndex: 0,
    explanation: 'Maximum level = ROL + ROQ − (Minimum usage × Minimum re-order '
        'period) = 500 + 400 − (20 × 6) = 780 units.',
  ),
  Question(
    subjectId: 'cost',
    text: 'In ABC analysis of inventory, category \'A\' items are usually:',
    options: [
      'Few in number but high in value',
      'Many in number but low in value',
      'Many in number and high in value',
      'Few in number and low in value',
    ],
    answerIndex: 0,
    explanation: 'A-items are a small percentage of items that account for a '
        'large share of inventory value, so they need the tightest control.',
  ),
  Question(
    subjectId: 'cost',
    text: 'In a period of rising prices, which method of pricing material issues '
        'gives the highest value of closing stock?',
    options: ['LIFO', 'Simple average', 'Weighted average', 'FIFO'],
    answerIndex: 3,
    explanation: 'Under FIFO older (cheaper) lots are issued first, so closing '
        'stock is valued at the latest (higher) prices.',
  ),
  Question(
    subjectId: 'cost',
    text: 'Direct material ₹50,000, direct labour ₹30,000, direct expenses '
        '₹5,000 and factory overheads ₹15,000. The prime cost is:',
    options: ['₹80,000', '₹1,00,000', '₹85,000', '₹95,000'],
    answerIndex: 2,
    explanation: 'Prime cost = Direct material + Direct labour + Direct expenses '
        '= 50,000 + 30,000 + 5,000 = ₹85,000. Factory overheads are not part of prime cost.',
  ),
  Question(
    subjectId: 'cost',
    text: 'Prime cost ₹85,000, factory overheads ₹15,000, opening WIP ₹4,000 '
        'and closing WIP ₹9,000. The works (factory) cost is:',
    options: ['₹1,00,000', '₹95,000', '₹1,04,000', '₹90,000'],
    answerIndex: 1,
    explanation: 'Works cost = Prime cost + Factory overheads + Opening WIP − '
        'Closing WIP = 85,000 + 15,000 + 4,000 − 9,000 = ₹95,000.',
  ),
  Question(
    subjectId: 'cost',
    text: 'Time allowed 10 hours, time taken 8 hours, rate ₹50 per hour. '
        'Earnings under the Halsey Premium Plan (50%) are:',
    options: ['₹400', '₹450', '₹480', '₹500'],
    answerIndex: 1,
    explanation: 'Halsey = (TT × R) + 50% × (TA − TT) × R = 400 + 50% × 2 × 50 = ₹450.',
  ),
  Question(
    subjectId: 'cost',
    text: 'Time allowed 10 hours, time taken 8 hours, rate ₹50 per hour. '
        'Earnings under the Rowan Plan are:',
    options: ['₹450', '₹500', '₹480', '₹420'],
    answerIndex: 2,
    explanation: 'Rowan = (TT × R) + (TA − TT)/TA × TT × R = 400 + (2/10) × 8 × 50 = ₹480.',
  ),
  Question(
    subjectId: 'cost',
    text: 'Taylor\'s differential piece rate system provides:',
    options: [
      'Guaranteed time wages with a bonus',
      'Three piece rates for different efficiency levels',
      'A lower piece rate below standard and a higher piece rate at or above standard',
      'A bonus of 50% of the time saved',
    ],
    answerIndex: 2,
    explanation: 'Taylor\'s plan has two piece rates. Merrick\'s plan uses three '
        'rates, and the 50% bonus on time saved is the Halsey plan.',
  ),
  Question(
    subjectId: 'cost',
    text: 'During a year, 12 workers left and were not replaced. The average '
        'number of workers on the roll was 240. Labour turnover rate under the '
        'separation method is:',
    options: ['12%', '5%', '2.4%', '20%'],
    answerIndex: 1,
    explanation: 'Separation method = Separations / Average workers × 100 = 12 / 240 × 100 = 5%.',
  ),
  Question(
    subjectId: 'cost',
    text: 'The cost of abnormal idle time (for example, a long strike) is:',
    options: [
      'Added to direct labour cost',
      'Included in factory overheads',
      'Spread over good units produced',
      'Charged to Costing Profit & Loss Account',
    ],
    answerIndex: 3,
    explanation: 'Normal idle time is part of the cost of production, but abnormal '
        'idle time is not a normal cost and is written off to Costing P&L Account.',
  ),
  Question(
    subjectId: 'cost',
    text: 'Factory overheads of a machine are ₹1,20,000 for 6,000 machine hours. '
        'The machine hour rate is:',
    options: ['₹12', '₹60', '₹2', '₹20'],
    answerIndex: 3,
    explanation: 'Machine hour rate = Overheads / Machine hours = 1,20,000 / 6,000 = ₹20 per hour.',
  ),
  Question(
    subjectId: 'cost',
    text: 'Under-absorption of overheads occurs when:',
    options: [
      'Absorbed overheads exceed actual overheads',
      'Actual overheads exceed absorbed overheads',
      'Actual and absorbed overheads are equal',
      'Overheads are apportioned on a wrong basis',
    ],
    answerIndex: 1,
    explanation: 'When the overheads absorbed into production are less than the '
        'overheads actually incurred, the shortfall is under-absorption.',
  ),
  Question(
    subjectId: 'cost',
    text: 'Sales are ₹2,00,000 and variable costs are ₹1,20,000. The P/V ratio is:',
    options: ['60%', '40%', '30%', '66.67%'],
    answerIndex: 1,
    explanation: 'P/V ratio = Contribution / Sales = 80,000 / 2,00,000 × 100 = 40%.',
  ),
  Question(
    subjectId: 'cost',
    text: 'Fixed costs are ₹60,000 and the P/V ratio is 40%. Break-even sales are:',
    options: ['₹24,000', '₹1,00,000', '₹2,40,000', '₹1,50,000'],
    answerIndex: 3,
    explanation: 'BEP = Fixed cost / P/V ratio = 60,000 / 40% = ₹1,50,000.',
  ),
  Question(
    subjectId: 'cost',
    text: '5,000 units are sold at ₹40 each. Variable cost is ₹24 per unit and '
        'fixed costs are ₹50,000. The profit is:',
    options: ['₹80,000', '₹50,000', '₹1,30,000', '₹30,000'],
    answerIndex: 3,
    explanation: 'Contribution = 5,000 × (40 − 24) = ₹80,000. Profit = '
        'Contribution − Fixed cost = 80,000 − 50,000 = ₹30,000.',
  ),
  Question(
    subjectId: 'cost',
    text: 'Actual sales are ₹2,00,000 and break-even sales are ₹1,50,000. The '
        'margin of safety ratio is:',
    options: ['75%', '25%', '33.33%', '50%'],
    answerIndex: 1,
    explanation: 'Margin of safety = 2,00,000 − 1,50,000 = ₹50,000. As a ratio '
        'of actual sales: 50,000 / 2,00,000 × 100 = 25%.',
  ),
  Question(
    subjectId: 'cost',
    text: 'In process costing, the cost of abnormal loss is transferred to:',
    options: [
      'Good units of the process',
      'Next process',
      'Costing Profit & Loss Account',
      'Normal loss account',
    ],
    answerIndex: 2,
    explanation: 'Normal loss is absorbed by good units, but abnormal loss is '
        'valued like good units and written off to Costing P&L Account.',
  ),
  Question(
    subjectId: 'cost',
    text: '1,000 units are introduced into a process at a cost of ₹10,000. '
        'Normal loss is 10% and scrap is sold at ₹2 per unit. Output is 900 '
        'units. The cost per good unit is approximately:',
    options: ['₹10.00', '₹11.11', '₹10.80', '₹10.89'],
    answerIndex: 3,
    explanation: 'Scrap value of normal loss = 100 × 2 = ₹200. Cost per unit = '
        '(10,000 − 200) / (1,000 − 100) = 9,800 / 900 = ₹10.89.',
  ),
  Question(
    subjectId: 'cost',
    text: 'There is no opening WIP. 1,000 units are completed and 400 units '
        'are in closing WIP, 50% complete. Equivalent units of production are:',
    options: ['1,400', '1,000', '1,200', '1,100'],
    answerIndex: 2,
    explanation: 'Equivalent units = Completed units + (Closing WIP × % complete) '
        '= 1,000 + 400 × 50% = 1,200.',
  ),
  Question(
    subjectId: 'cost',
    text: 'Job costing is most suitable for:',
    options: [
      'A cement factory',
      'An oil refinery',
      'A printing press executing customer orders',
      'A power generation plant',
    ],
    answerIndex: 2,
    explanation: 'Job costing suits work done to customer specifications where '
        'each order is distinct. The others are continuous processes.',
  ),
  Question(
    subjectId: 'cost',
    text: 'The most appropriate cost unit for an electricity generation company is:',
    options: ['Per tonne', 'Per kilowatt-hour (kWh)', 'Per passenger-km', 'Per bed-day'],
    answerIndex: 1,
    explanation: 'Power is sold and measured in kWh, so cost per kWh is the '
        'natural unit. Passenger-km suits transport and bed-day suits hospitals.',
  ),
  Question(
    subjectId: 'cost',
    text: 'Standard price is ₹10 per kg, actual price is ₹11 per kg and actual '
        'quantity purchased is 1,000 kg. The material price variance is:',
    options: ['₹1,000 (F)', '₹1,000 (A)', '₹1,100 (A)', '₹11,000 (A)'],
    answerIndex: 1,
    explanation: 'MPV = (SP − AP) × AQ = (10 − 11) × 1,000 = ₹1,000 adverse, '
        'because more was paid than the standard.',
  ),
  Question(
    subjectId: 'cost',
    text: 'Standard hours for actual output are 400, actual hours worked are '
        '450 and the standard rate is ₹30 per hour. The labour efficiency '
        'variance is:',
    options: ['₹1,500 (F)', '₹1,350 (A)', '₹1,500 (A)', '₹13,500 (A)'],
    answerIndex: 2,
    explanation: 'LEV = (SH − AH) × SR = (400 − 450) × 30 = ₹1,500 adverse, '
        'because more hours were taken than the standard.',
  ),
  Question(
    subjectId: 'cost',
    text: 'Which Cost Accounting Standard deals with Employee Cost?',
    options: ['CAS-6', 'CAS-7', 'CAS-8', 'CAS-3'],
    answerIndex: 1,
    explanation: 'CAS-7 covers Employee Cost. CAS-6 is Material Cost, CAS-8 is '
        'Cost of Utilities and CAS-3 is Production and Operation Overheads.',
  ),
];
