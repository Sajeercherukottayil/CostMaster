import '../../../models/question.dart';

const costProblems = [
  DescriptiveQuestion(
    subjectId: 'cost',
    chapter: 'Cost Concepts & Cost Sheet',
    text:
        'Prepare a cost sheet: opening raw material ₹20,000; purchases '
        '₹1,50,000; closing raw material ₹30,000; direct wages ₹80,000; '
        'direct expenses ₹10,000; factory overheads ₹50,000; opening WIP '
        '₹15,000; closing WIP ₹25,000; administration overheads (production) '
        '₹20,000; opening finished goods ₹30,000; closing finished goods '
        '₹40,000; selling and distribution overheads ₹25,000; sales '
        '₹3,60,000.',
    marks: 8,
    problem: true,
    answer:
        'Cost Sheet\n'
        '• Materials consumed = 20,000 + 1,50,000 − 30,000 = 1,40,000\n'
        '• Add direct wages 80,000 and direct expenses 10,000\n'
        '• Prime cost = 2,30,000\n'
        '• Add factory overheads 50,000, add opening WIP 15,000, less '
        'closing WIP 25,000\n'
        '• Works (factory) cost = 2,70,000\n'
        '• Add administration overheads (production) 20,000\n'
        '• Cost of production = 2,90,000\n'
        '• Add opening finished goods 30,000, less closing finished goods '
        '40,000\n'
        '• Cost of goods sold = 2,80,000\n'
        '• Add selling and distribution overheads 25,000\n'
        '• Cost of sales = 3,05,000\n'
        '• Profit = 3,60,000 − 3,05,000 = ₹55,000',
  ),
  DescriptiveQuestion(
    subjectId: 'cost',
    chapter: 'Cost Concepts & Cost Sheet',
    text:
        'For 1,000 units: materials ₹40,000; wages ₹30,000; factory '
        'overheads 60% of wages; administration overheads 10% of works cost. '
        'The firm wants a profit of 20% on selling price. Find the cost per '
        'unit and the selling price per unit.',
    marks: 5,
    problem: true,
    answer:
        '• Prime cost = 40,000 + 30,000 = 70,000\n'
        '• Factory overheads = 30,000 × 60% = 18,000\n'
        '• Works cost = 88,000\n'
        '• Administration overheads = 88,000 × 10% = 8,800\n'
        '• Cost of production = 96,800, so ₹96.80 per unit\n'
        'Profit is 20% of selling price, so cost is 80% of selling price.\n'
        '• Selling price = 96.80 ÷ 0.80 = ₹121 per unit\n'
        '• Profit = 121 − 96.80 = ₹24.20 per unit (20% of 121)',
  ),
  DescriptiveQuestion(
    subjectId: 'cost',
    chapter: 'Material Cost',
    text:
        'Normal usage is 100 units a day, minimum 60 and maximum 130. The '
        're-order period is 10 to 15 days (normal 12.5). The re-order '
        'quantity is 1,500 units. Calculate the re-order level, minimum '
        'level, maximum level and average stock level.',
    marks: 6,
    problem: true,
    answer:
        '• Re-order level = Maximum usage × Maximum re-order period = '
        '130 × 15 = 1,950 units\n'
        '• Minimum level = ROL − (Normal usage × Normal re-order period) = '
        '1,950 − (100 × 12.5) = 700 units\n'
        '• Maximum level = ROL + ROQ − (Minimum usage × Minimum re-order '
        'period) = 1,950 + 1,500 − (60 × 10) = 2,850 units\n'
        '• Average stock level = (Minimum + Maximum) ÷ 2 = (700 + 2,850) ÷ 2 '
        '= 1,775 units\n'
        '  or Minimum + ½ ROQ = 700 + 750 = 1,450 units',
  ),
  DescriptiveQuestion(
    subjectId: 'cost',
    chapter: 'Material Cost',
    text:
        'Opening stock is 100 units at ₹10. On the 5th, 200 units are '
        'bought at ₹12. On the 10th, 250 units are issued. On the 15th, 150 '
        'units are bought at ₹13. On the 20th, 120 units are issued. Find '
        'the value of issues and closing stock under FIFO and the weighted '
        'average method.',
    marks: 6,
    problem: true,
    answer:
        'FIFO\n'
        '• Issue on 10th: 100 × 10 + 150 × 12 = ₹2,800; balance 50 at ₹12\n'
        '• Issue on 20th: 50 × 12 + 70 × 13 = ₹1,510; balance 80 at ₹13\n'
        '• Closing stock = 80 × 13 = ₹1,040\n'
        'Weighted average\n'
        '• After 5th: 300 units worth 1,000 + 2,400 = 3,400; rate ₹11.333\n'
        '• Issue on 10th: 250 × 11.333 = ₹2,833.33; balance 50 units '
        '₹566.67\n'
        '• After 15th: 200 units worth 566.67 + 1,950 = 2,516.67; rate '
        '₹12.583\n'
        '• Issue on 20th: 120 × 12.583 = ₹1,510\n'
        '• Closing stock = 80 × 12.583 = ₹1,006.67\n'
        'In rising prices, FIFO gives a higher closing stock and lower cost '
        'of issues.',
  ),
  DescriptiveQuestion(
    subjectId: 'cost',
    chapter: 'Material Cost',
    text:
        'Annual demand is 6,000 units, ordering cost ₹120 per order, price '
        '₹40 per unit, and carrying cost 10% of price a year. (a) Find the '
        'EOQ and total cost. (b) The supplier offers a 2% discount on orders '
        'of 1,000 units or more. Should it be accepted?',
    marks: 8,
    problem: true,
    answer:
        '(a) Carrying cost per unit = 40 × 10% = ₹4\n'
        'EOQ = √(2 × 6,000 × 120 ÷ 4) = √3,60,000 = 600 units\n'
        '• Purchase cost = 6,000 × 40 = 2,40,000\n'
        '• Ordering cost = (6,000 ÷ 600) × 120 = 1,200\n'
        '• Carrying cost = (600 ÷ 2) × 4 = 1,200\n'
        '• Total = ₹2,42,400\n'
        '(b) Order 1,000 units: price = 40 × 98% = ₹39.20; carrying cost = '
        '₹3.92\n'
        '• Purchase cost = 6,000 × 39.20 = 2,35,200\n'
        '• Ordering cost = (6,000 ÷ 1,000) × 120 = 720\n'
        '• Carrying cost = (1,000 ÷ 2) × 3.92 = 1,960\n'
        '• Total = ₹2,37,880\n'
        'The discount saves 2,42,400 − 2,37,880 = ₹4,520 a year, so it '
        'should be accepted.',
  ),
  DescriptiveQuestion(
    subjectId: 'cost',
    chapter: 'Employee Cost',
    text:
        'Standard time for a job is 10 hours and the wage rate is ₹60 an '
        'hour. A worker finishes it in 8 hours. Calculate earnings under (a) '
        'the Halsey plan (50% bonus) and (b) the Rowan plan.',
    marks: 4,
    problem: true,
    answer:
        'Time saved = 10 − 8 = 2 hours\n'
        '(a) Halsey: Time taken × Rate + 50% × Time saved × Rate\n'
        '= 8 × 60 + 50% × 2 × 60 = 480 + 60 = ₹540\n'
        '(b) Rowan: Time taken × Rate + (Time saved ÷ Standard time) × Time '
        'taken × Rate\n'
        '= 480 + (2 ÷ 10) × 8 × 60 = 480 + 96 = ₹576\n'
        'Effective hourly rate: Halsey ₹67.50; Rowan ₹72.',
  ),
  DescriptiveQuestion(
    subjectId: 'cost',
    chapter: 'Employee Cost',
    text:
        'At the start of the year there were 380 workers and at the end '
        '420. During the year 20 left, 16 were replaced, and 44 new workers '
        'joined for expansion. Calculate labour turnover by the separation, '
        'replacement and flux methods.',
    marks: 5,
    problem: true,
    answer:
        'Average workers = (380 + 420) ÷ 2 = 400\n'
        '• Separation method = 20 ÷ 400 × 100 = 5%\n'
        '• Replacement method = 16 ÷ 400 × 100 = 4%\n'
        '• Flux method = (Separations + Replacements) ÷ Average × 100 = '
        '(20 + 16) ÷ 400 × 100 = 9%\n'
        '• Flux method including all new joiners = (20 + 16 + 44) ÷ 400 × '
        '100 = 20%\n'
        'Check: 380 − 20 + 16 + 44 = 420.',
  ),
  DescriptiveQuestion(
    subjectId: 'cost',
    chapter: 'Employee Cost',
    text:
        'Under Taylor\'s differential piece rate, the standard is 20 units '
        'an hour, the normal rate is ₹4 per unit, the low rate is 80% and '
        'the high rate is 120% of normal. In an 8-hour day, worker A makes '
        '150 units and worker B makes 180 units. Calculate their earnings.',
    marks: 4,
    problem: true,
    answer:
        'Standard output for 8 hours = 20 × 8 = 160 units\n'
        '• Low rate = 4 × 80% = ₹3.20; high rate = 4 × 120% = ₹4.80\n'
        '• Worker A: 150 units is below standard, so 150 × 3.20 = ₹480\n'
        '• Worker B: 180 units is above standard, so 180 × 4.80 = ₹864\n'
        'The big gap between the two rates rewards efficient workers and '
        'penalises slow ones.',
  ),
  DescriptiveQuestion(
    subjectId: 'cost',
    chapter: 'Overheads',
    text:
        'Apportion overheads to production departments A, B, C and service '
        'department S, then reapportion S in the ratio 40 : 40 : 20. Rent '
        '₹24,000 (area in sq ft: A 1,500, B 1,000, C 1,000, S 500); power '
        '₹15,000 (HP: A 50, B 30, C 20, S 0); supervision ₹18,000 (employees: '
        'A 20, B 30, C 10, S 30).',
    marks: 8,
    problem: true,
    answer:
        'Primary distribution\n'
        '• Rent at ₹6 per sq ft: A 9,000; B 6,000; C 6,000; S 3,000\n'
        '• Power at ₹150 per HP: A 7,500; B 4,500; C 3,000; S 0\n'
        '• Supervision at ₹200 per employee: A 4,000; B 6,000; C 2,000; '
        'S 6,000\n'
        '• Totals: A 20,500; B 16,500; C 11,000; S 9,000 (= 57,000)\n'
        'Secondary distribution of S (9,000 in 40 : 40 : 20)\n'
        '• A 3,600; B 3,600; C 1,800\n'
        'Final overheads\n'
        '• A = ₹24,100; B = ₹20,100; C = ₹12,800 (total ₹57,000)',
  ),
  DescriptiveQuestion(
    subjectId: 'cost',
    chapter: 'Overheads',
    text:
        'Compute a machine hour rate: machine cost ₹2,00,000, life 10 '
        'years, scrap ₹20,000; power 10 units an hour at ₹8 per unit; '
        'repairs ₹12,000 a year; rent apportioned ₹6,000 a year; '
        'supervisor\'s salary ₹36,000 a year shared equally by 3 machines. '
        'The machine runs 2,000 hours a year.',
    marks: 6,
    problem: true,
    answer:
        'Standing charges (per year)\n'
        '• Rent 6,000 + Supervision (36,000 ÷ 3) 12,000 = 18,000\n'
        '• Per hour = 18,000 ÷ 2,000 = ₹9.00\n'
        'Machine expenses (per hour)\n'
        '• Depreciation = (2,00,000 − 20,000) ÷ 10 = 18,000 a year, so ₹9.00\n'
        '• Repairs = 12,000 ÷ 2,000 = ₹6.00\n'
        '• Power = 10 × 8 = ₹80.00\n'
        'Machine hour rate = 9 + 9 + 6 + 80 = ₹104 per hour',
  ),
  DescriptiveQuestion(
    subjectId: 'cost',
    chapter: 'Overheads',
    text:
        'Overheads are absorbed at ₹20 per labour hour. Actual hours were '
        '9,000 and actual overheads ₹1,95,000. Find the under- or '
        'over-absorption. If it is spread by a supplementary rate over cost '
        'of sales (6,000 units), finished goods (3,000 units) and WIP (1,000 '
        'equivalent units), how much goes to each?',
    marks: 5,
    problem: true,
    answer:
        '• Overheads absorbed = 9,000 × 20 = ₹1,80,000\n'
        '• Actual overheads = ₹1,95,000\n'
        '• Under-absorption = ₹15,000\n'
        'Supplementary rate = 15,000 ÷ (6,000 + 3,000 + 1,000) = ₹1.50 per '
        'unit\n'
        '• Cost of sales: 6,000 × 1.50 = ₹9,000\n'
        '• Finished goods: 3,000 × 1.50 = ₹4,500\n'
        '• Work-in-progress: 1,000 × 1.50 = ₹1,500',
  ),
  DescriptiveQuestion(
    subjectId: 'cost',
    chapter: 'Job & Process Costing',
    text:
        '10,000 units are put into a process at ₹20 each. Labour is '
        '₹50,000 and overheads ₹25,000. Normal loss is 10% of input, sold as '
        'scrap at ₹5 a unit. Actual output is 8,800 units. Prepare the '
        'process account and abnormal loss account.',
    marks: 8,
    problem: true,
    answer:
        '• Total cost = 2,00,000 + 50,000 + 25,000 = 2,75,000\n'
        '• Normal loss = 1,000 units; scrap value = 5,000\n'
        '• Expected output = 9,000 units\n'
        '• Cost per unit = (2,75,000 − 5,000) ÷ 9,000 = ₹30\n'
        '• Abnormal loss = 9,000 − 8,800 = 200 units × 30 = ₹6,000\n'
        'Process Account\n'
        '• Debit: material 2,00,000; labour 50,000; overheads 25,000 = '
        '2,75,000\n'
        '• Credit: normal loss 5,000; abnormal loss 6,000; output '
        'transferred 8,800 × 30 = 2,64,000 = 2,75,000\n'
        'Abnormal Loss Account\n'
        '• Debit: process 6,000\n'
        '• Credit: scrap 200 × 5 = 1,000; Costing P&L 5,000',
  ),
  DescriptiveQuestion(
    subjectId: 'cost',
    chapter: 'Job & Process Costing',
    text:
        'Using the same data (input 10,000 units, total cost ₹2,75,000, '
        'normal loss 10% with scrap at ₹5), suppose actual output is 9,200 '
        'units. Calculate the abnormal gain and show its treatment.',
    marks: 6,
    problem: true,
    answer:
        '• Expected output = 9,000 units; cost per unit = ₹30 (as before)\n'
        '• Abnormal gain = 9,200 − 9,000 = 200 units × 30 = ₹6,000, debited '
        'to the process account\n'
        '• Output transferred = 9,200 × 30 = ₹2,76,000\n'
        'Check: debits 2,75,000 + 6,000 = 2,81,000; credits normal loss '
        '5,000 + output 2,76,000 = 2,81,000.\n'
        'Abnormal Gain Account\n'
        '• Credit: process 6,000\n'
        '• Debit: normal loss account 200 × 5 = 1,000 (scrap not realised, '
        'since actual loss was only 800 units)\n'
        '• Debit: Costing P&L 5,000 (net gain)',
  ),
  DescriptiveQuestion(
    subjectId: 'cost',
    chapter: 'Job & Process Costing',
    text:
        'Job 101 uses material of ₹15,000 and 200 labour hours at ₹50. '
        'Factory overheads are 80% of labour cost and administration '
        'overheads 10% of works cost. Find the job cost and the price to '
        'quote for a profit of 25% on cost.',
    marks: 4,
    problem: true,
    answer:
        '• Direct material = 15,000\n'
        '• Direct labour = 200 × 50 = 10,000\n'
        '• Prime cost = 25,000\n'
        '• Factory overheads = 10,000 × 80% = 8,000\n'
        '• Works cost = 33,000\n'
        '• Administration overheads = 33,000 × 10% = 3,300\n'
        '• Total cost = ₹36,300\n'
        '• Profit = 36,300 × 25% = 9,075\n'
        '• Price to quote = ₹45,375',
  ),
  DescriptiveQuestion(
    subjectId: 'cost',
    chapter: 'Marginal Costing & CVP Analysis',
    text:
        'In two periods: sales ₹2,00,000 with profit ₹20,000, and sales '
        '₹3,00,000 with profit ₹50,000. Find the P/V ratio, fixed cost, '
        'break-even sales, sales needed for a profit of ₹80,000, and the '
        'margin of safety at sales of ₹3,00,000.',
    marks: 6,
    problem: true,
    answer:
        '• P/V ratio = Change in profit ÷ Change in sales = 30,000 ÷ '
        '1,00,000 = 30%\n'
        '• Contribution at 2,00,000 = 2,00,000 × 30% = 60,000\n'
        '• Fixed cost = Contribution − Profit = 60,000 − 20,000 = ₹40,000\n'
        '• Break-even sales = 40,000 ÷ 30% = ₹1,33,333\n'
        '• Sales for profit of 80,000 = (40,000 + 80,000) ÷ 30% = ₹4,00,000\n'
        '• Margin of safety at 3,00,000 = 3,00,000 − 1,33,333 = ₹1,66,667\n'
        'Check: 1,66,667 × 30% = 50,000, the profit at that level.',
  ),
  DescriptiveQuestion(
    subjectId: 'cost',
    chapter: 'Marginal Costing & CVP Analysis',
    text:
        'Machine hours are limited to 10,000. Product X gives a '
        'contribution of ₹40 per unit using 4 machine hours; product Y gives '
        '₹30 per unit using 2 hours. Maximum demand is 2,000 units of X and '
        '3,000 of Y. Find the most profitable product mix.',
    marks: 5,
    problem: true,
    answer:
        'Machine hours are the key factor, so rank by contribution per '
        'hour.\n'
        '• X: 40 ÷ 4 = ₹10 per hour (rank 2)\n'
        '• Y: 30 ÷ 2 = ₹15 per hour (rank 1)\n'
        'Make Y first:\n'
        '• Y: 3,000 units × 2 hours = 6,000 hours\n'
        '• Remaining hours = 4,000, so X = 4,000 ÷ 4 = 1,000 units\n'
        'Total contribution = 3,000 × 30 + 1,000 × 40 = 90,000 + 40,000 '
        '= ₹1,30,000',
  ),
  DescriptiveQuestion(
    subjectId: 'cost',
    chapter: 'Standard Costing',
    text:
        'The standard is 2 labour hours per unit at ₹40 an hour. Actual '
        'output was 1,000 units, taking 2,200 hours at ₹38 an hour. '
        'Calculate the labour cost, rate and efficiency variances.',
    marks: 5,
    problem: true,
    answer:
        'SH = 1,000 × 2 = 2,000 hours; SR = ₹40; AH = 2,200; AR = ₹38\n'
        '• Labour cost variance = SH × SR − AH × AR = 80,000 − 83,600 = '
        '₹3,600 (Adverse)\n'
        '• Labour rate variance = AH × (SR − AR) = 2,200 × 2 = ₹4,400 '
        '(Favourable)\n'
        '• Labour efficiency variance = SR × (SH − AH) = 40 × (2,000 − '
        '2,200) = ₹8,000 (Adverse)\n'
        'Check: 4,400 F − 8,000 A = 3,600 A.',
  ),
  DescriptiveQuestion(
    subjectId: 'cost',
    chapter: 'Standard Costing',
    text:
        'Standard mix: 60 kg of A at ₹10 and 40 kg of B at ₹15 for 100 kg '
        'input, giving 90 kg output. Actual: 70 kg of A at ₹11 and 50 kg of '
        'B at ₹14, giving 99 kg output. Calculate material cost, price, '
        'usage, mix and yield variances.',
    marks: 8,
    problem: true,
    answer:
        'Standard quantity for actual output (SQ): 99 kg output needs '
        '110 kg input, so A 66 kg, B 44 kg.\n'
        'Revised standard quantity (RSQ): actual input 120 kg in standard '
        'mix, so A 72 kg, B 48 kg.\n'
        '• Cost variance = SQ × SP − AQ × AP = (660 + 660) − (770 + 700) = '
        '₹150 (A)\n'
        '• Price variance = AQ × (SP − AP): A 70 × (−1) = 70 A; B 50 × 1 = '
        '50 F; total ₹20 (A)\n'
        '• Usage variance = SP × (SQ − AQ): A 10 × (−4) = 40 A; B 15 × (−6) '
        '= 90 A; total ₹130 (A)\n'
        '• Mix variance = SP × (RSQ − AQ): A 10 × 2 = 20 F; B 15 × (−2) = '
        '30 A; total ₹10 (A)\n'
        '• Yield variance = SP × (SQ − RSQ): A 10 × (−6) = 60 A; B 15 × '
        '(−4) = 60 A; total ₹120 (A)\n'
        'Checks: price 20 A + usage 130 A = 150 A; mix 10 A + yield 120 A '
        '= usage 130 A.',
  ),
];
