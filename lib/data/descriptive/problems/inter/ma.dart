import '../../../../models/question.dart';

const interMaProblems = [
  DescriptiveQuestion(
    subjectId: 'i_ma',
    chapter: 'Decision Making',
    text:
        'Capacity is 10,000 units; current sales are 8,000 units at ₹50 '
        'each. Variable cost is ₹30 per unit and fixed costs are ₹1,20,000. '
        '(a) Should a special order of 1,500 units at ₹38 be accepted? (b) '
        'What if the order were for 3,000 units at ₹38?',
    marks: 6,
    problem: true,
    answer:
        '(a) Spare capacity is 2,000 units, so the order uses idle '
        'capacity and fixed costs do not change.\n'
        '• Extra contribution = 1,500 × (38 − 30) = ₹12,000. Accept.\n'
        '(b) The order needs 3,000 units, but only 2,000 are spare, so 1,000 '
        'units of regular sales must be given up.\n'
        '• Contribution from order = 3,000 × 8 = 24,000\n'
        '• Contribution lost on regular sales = 1,000 × 20 = (20,000)\n'
        '• Net gain = ₹4,000. Accept, but also consider the effect on '
        'regular customers.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_ma',
    chapter: 'Decision Making',
    text:
        'Products A, B and C have sales of ₹1,00,000, ₹80,000 and ₹60,000, '
        'and variable costs of ₹60,000, ₹50,000 and ₹45,000. Fixed costs of '
        '₹60,000 are shared equally and will not change if a product is '
        'dropped. C shows a loss. Should it be dropped?',
    marks: 5,
    problem: true,
    answer:
        'Contribution: A 40,000; B 30,000; C 15,000\n'
        'Profit after fixed costs of 20,000 each: A 20,000; B 10,000; C '
        '(5,000)\n'
        'Total profit with C = 85,000 − 60,000 = ₹25,000\n'
        'If C is dropped, fixed costs stay at 60,000:\n'
        '• Total profit = 70,000 − 60,000 = ₹10,000\n'
        'C makes a positive contribution of ₹15,000 towards fixed costs, so '
        'it should not be dropped. Dropping it would lower profit by ₹15,000.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_ma',
    chapter: 'Budgeting & Budgetary Control',
    text:
        'At 100% capacity (10,000 units): variable costs ₹20 per unit; '
        'semi-variable costs ₹40,000, of which 60% is fixed; fixed costs '
        '₹50,000. Prepare a flexible budget at 60%, 80% and 100%, showing '
        'cost per unit.',
    marks: 6,
    problem: true,
    answer:
        'Semi-variable: fixed part 24,000; variable part 16,000 at 100%, '
        'so ₹1.60 per unit.\n'
        '60% (6,000 units):\n'
        '• Variable 1,20,000 + semi-variable 24,000 + 9,600 + fixed 50,000 = '
        '2,03,600; ₹33.93 per unit\n'
        '80% (8,000 units):\n'
        '• Variable 1,60,000 + semi-variable 24,000 + 12,800 + fixed 50,000 = '
        '2,46,800; ₹30.85 per unit\n'
        '100% (10,000 units):\n'
        '• Variable 2,00,000 + semi-variable 40,000 + fixed 50,000 = '
        '2,90,000; ₹29.00 per unit\n'
        'Cost per unit falls as output rises, because fixed costs are spread '
        'over more units.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_ma',
    chapter: 'Budgeting & Budgetary Control',
    text:
        'Prepare a cash budget for February and March. Sales: January '
        '₹50,000, February ₹60,000, March ₹70,000; 40% is cash and 60% is '
        'collected next month. Purchases are 60% of the month\'s sales, paid '
        'the next month. Expenses of ₹8,000 a month are paid in the same '
        'month. Cash on 1 February is ₹10,000.',
    marks: 6,
    problem: true,
    answer:
        'February\n'
        '• Receipts: cash sales 24,000 + January debtors 30,000 = 54,000\n'
        '• Payments: January purchases 30,000 + expenses 8,000 = 38,000\n'
        '• Closing cash = 10,000 + 54,000 − 38,000 = ₹26,000\n'
        'March\n'
        '• Receipts: cash sales 28,000 + February debtors 36,000 = 64,000\n'
        '• Payments: February purchases 36,000 + expenses 8,000 = 44,000\n'
        '• Closing cash = 26,000 + 64,000 − 44,000 = ₹46,000',
  ),
  DescriptiveQuestion(
    subjectId: 'i_ma',
    chapter: 'Budgeting & Budgetary Control',
    text:
        'Budgeted sales are 10,000 units. Opening finished goods are 2,000 '
        'units and closing finished goods should be 1,500. Each unit needs '
        '3 kg of material; opening material stock is 5,000 kg and closing '
        'should be 4,000 kg. Prepare the production and material purchase '
        'budgets.',
    marks: 4,
    problem: true,
    answer:
        'Production budget\n'
        '• Production = Sales + Closing stock − Opening stock = 10,000 + '
        '1,500 − 2,000 = 9,500 units\n'
        'Material purchase budget\n'
        '• Material needed = 9,500 × 3 = 28,500 kg\n'
        '• Purchases = Needed + Closing − Opening = 28,500 + 4,000 − 5,000 = '
        '27,500 kg',
  ),
  DescriptiveQuestion(
    subjectId: 'i_ma',
    chapter: 'Performance Measurement',
    text:
        'Division A can make 10,000 units with a variable cost of ₹40 '
        'each. It sells 8,000 units outside at ₹60. Division B needs 3,000 '
        'units from A. Find the minimum transfer price A should accept.',
    marks: 5,
    problem: true,
    answer:
        'Minimum transfer price = Variable cost + Opportunity cost\n'
        '• 2,000 units from spare capacity: no sales are lost, so the '
        'minimum price is ₹40\n'
        '• The other 1,000 units mean giving up outside sales, losing a '
        'contribution of ₹20 each, so the minimum price is 40 + 20 = ₹60\n'
        'Total minimum = 2,000 × 40 + 1,000 × 60 = ₹1,40,000, an average of '
        '₹46.67 per unit\n'
        'Below this, A would be worse off, and so would the company as a '
        'whole.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_ma',
    chapter: 'Performance Measurement',
    text:
        'A company\'s net operating profit after tax is ₹30,00,000, its '
        'capital employed is ₹1,50,00,000 and its weighted average cost of '
        'capital is 12%. Calculate the Economic Value Added and explain what '
        'it shows.',
    marks: 4,
    problem: true,
    answer:
        '• Capital charge = 1,50,00,000 × 12% = ₹18,00,000\n'
        '• EVA = NOPAT − Capital charge = 30,00,000 − 18,00,000 = '
        '₹12,00,000\n'
        'A positive EVA means the company earned more than the cost of all '
        'the capital it used, debt and equity, so it created value for '
        'shareholders. A negative EVA would mean value was destroyed, even '
        'if accounting profit was positive.',
  ),
];
