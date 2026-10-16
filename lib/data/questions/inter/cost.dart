import '../../../models/question.dart';

const interCostQuestions = [
  Question(
    subjectId: 'i_cost',
    text: 'CAS-4 deals with:',
    options: [
      'Classification of cost',
      'Capacity determination',
      'Cost of production for captive consumption',
      'Material cost',
    ],
    answerIndex: 2,
    explanation: 'CAS-4 is Cost of Production for Captive Consumption. CAS-1 is '
        'Classification of Cost, CAS-2 Capacity Determination and CAS-6 '
        'Material Cost.',
  ),
  Question(
    subjectId: 'i_cost',
    text: 'In activity based costing, the factor that causes a change in the '
        'cost of an activity is called a:',
    options: ['Cost pool', 'Cost driver', 'Cost centre', 'Cost unit'],
    answerIndex: 1,
    explanation: 'A cost driver (for example, number of set-ups) causes the cost '
        'of an activity. A cost pool collects the costs of an activity.',
  ),
  Question(
    subjectId: 'i_cost',
    text: 'Joint cost of ₹60,000 is apportioned on the sales value method. '
        'Product A: 2,000 units at ₹30. Product B: 1,000 units at ₹40. Joint '
        'cost apportioned to A is:',
    options: ['₹40,000', '₹24,000', '₹30,000', '₹36,000'],
    answerIndex: 3,
    explanation: 'Sales value: A = ₹60,000, B = ₹40,000 (ratio 3 : 2). A\'s '
        'share = 60,000 × 3/5 = ₹36,000.',
  ),
  Question(
    subjectId: 'i_cost',
    text: 'A product of relatively small value produced incidentally along with '
        'the main product is a:',
    options: ['Joint product', 'By-product', 'Scrap', 'Co-product'],
    answerIndex: 1,
    explanation: 'By-products have small value compared with the main product. '
        'Joint products have comparable values.',
  ),
  Question(
    subjectId: 'i_cost',
    text: 'Annual demand is 10,000 units, set-up cost is ₹200 per batch and '
        'carrying cost is ₹4 per unit per year. The economic batch quantity is:',
    options: ['1,000 units', '500 units', '2,000 units', '707 units'],
    answerIndex: 0,
    explanation: 'EBQ = √(2DS/C) = √(2 × 10,000 × 200 / 4) = √10,00,000 = 1,000 units.',
  ),
  Question(
    subjectId: 'i_cost',
    text: 'Overtime premium paid because a customer asked for urgent delivery '
        'of a specific job is:',
    options: [
      'Charged to factory overheads',
      'Charged to Costing P&L Account',
      'Charged directly to that job',
      'Ignored in cost accounts',
    ],
    answerIndex: 2,
    explanation: 'When overtime is due to a specific customer\'s request, the '
        'premium is a direct cost of that job. Overtime due to general pressure '
        'of work is an overhead.',
  ),
  Question(
    subjectId: 'i_cost',
    text: 'A bus runs 200 km a day for 25 days in a month, carrying 40 '
        'passengers on average. Passenger-km for the month are:',
    options: ['5,000', '8,000', '2,00,000', '1,000'],
    answerIndex: 2,
    explanation: 'Passenger-km = 200 × 40 × 25 = 2,00,000.',
  ),
  Question(
    subjectId: 'i_cost',
    text: 'Standard quantity for actual output is 1,000 kg, actual quantity '
        'used is 1,100 kg and standard price is ₹5 per kg. The material usage '
        'variance is:',
    options: ['₹500 (F)', '₹550 (A)', '₹5,000 (A)', '₹500 (A)'],
    answerIndex: 3,
    explanation: 'MUV = (SQ − AQ) × SP = (1,000 − 1,100) × 5 = ₹500 adverse.',
  ),
  Question(
    subjectId: 'i_cost',
    text: 'Budgeted fixed overheads are ₹50,000 for 10,000 units. Actual output '
        'is 9,000 units. The fixed overhead volume variance is:',
    options: ['₹5,000 (A)', '₹5,000 (F)', '₹4,500 (A)', '₹50,000 (A)'],
    answerIndex: 0,
    explanation: 'Standard rate = ₹5 per unit. Volume variance = (Actual output − '
        'Budgeted output) × Rate = (9,000 − 10,000) × 5 = ₹5,000 adverse.',
  ),
  Question(
    subjectId: 'i_cost',
    text: '1,000 units are sold at ₹48 each against a standard price of ₹50. '
        'The sales price variance is:',
    options: ['₹2,000 (F)', '₹2,000 (A)', '₹48,000 (A)', '₹200 (A)'],
    answerIndex: 1,
    explanation: 'Sales price variance = (AP − SP) × Actual quantity = '
        '(48 − 50) × 1,000 = ₹2,000 adverse.',
  ),
  Question(
    subjectId: 'i_cost',
    text: 'Starting from profit as per cost accounts, factory overheads '
        'under-absorbed in cost accounts are:',
    options: [
      'Added to get profit as per financial accounts',
      'Ignored',
      'Shown separately as a memorandum item',
      'Deducted to get profit as per financial accounts',
    ],
    answerIndex: 3,
    explanation: 'Cost accounts charged less than the actual overhead, so cost '
        'profit is higher. Deduct the under-absorption to reach financial profit.',
  ),
  Question(
    subjectId: 'i_cost',
    text: 'Which item appears only in financial accounts and not in cost accounts?',
    options: [
      'Direct wages',
      'Factory rent',
      'Interest received on investments',
      'Depreciation of plant',
    ],
    answerIndex: 2,
    explanation: 'Interest received on investments is a purely financial item. '
        'The others are costs of production.',
  ),
  Question(
    subjectId: 'i_cost',
    text: 'In an integrated (integral) accounting system:',
    options: [
      'Separate books are kept for cost and financial accounts',
      'One set of books serves both cost and financial accounting',
      'Reconciliation of cost and financial profit is compulsory',
      'Only cost accounts are kept',
    ],
    answerIndex: 1,
    explanation: 'Integrated accounts merge cost and financial records, so no '
        'reconciliation is needed.',
  ),
  Question(
    subjectId: 'i_cost',
    text: 'Inter-firm comparison is best supported by:',
    options: ['Uniform costing', 'Job costing', 'Marginal costing', 'Batch costing'],
    answerIndex: 0,
    explanation: 'Uniform costing means firms in an industry follow the same '
        'costing principles, so their costs can be compared.',
  ),
  Question(
    subjectId: 'i_cost',
    text: 'In process costing, profit included in inter-process transfers is '
        'eliminated mainly to:',
    options: [
      'Increase reported profit',
      'Avoid tax',
      'Reduce the number of processes',
      'Show stock at cost and recognise only realised profit',
    ],
    answerIndex: 3,
    explanation: 'Stock in later processes would otherwise include unrealised '
        'profit. A provision removes it so closing stock is at cost.',
  ),
];
