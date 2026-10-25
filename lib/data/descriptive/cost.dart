import '../../models/question.dart';

const costDescriptive = [
  DescriptiveQuestion(
    subjectId: 'cost',
    chapter: 'Cost Concepts & Cost Sheet',
    text:
        'Distinguish between direct and indirect costs. Give two examples '
        'of each.',
    marks: 4,
    answer:
        'Direct costs can be traced to a particular cost object (a '
        'product, job or service) in an economically feasible way. Indirect '
        'costs are shared by several cost objects and cannot be traced to any '
        'one of them, so they are charged through allocation, apportionment '
        'and absorption.\n'
        '• Direct cost examples: raw material used in a product; wages of '
        'workers who work on that product.\n'
        '• Indirect cost examples: factory rent; salary of the factory '
        'supervisor.\n'
        'Indirect costs are also called overheads.',
  ),
  DescriptiveQuestion(
    subjectId: 'cost',
    chapter: 'Cost Concepts & Cost Sheet',
    text:
        'From the following data, calculate prime cost, works cost and '
        'cost of production: direct material ₹50,000; direct wages '
        '₹30,000; direct expenses ₹5,000; factory overheads ₹20,000; '
        'administration overheads relating to production ₹10,000. There is '
        'no opening or closing work-in-progress.',
    marks: 5,
    answer:
        '• Prime cost = Direct material + Direct wages + Direct expenses '
        '= 50,000 + 30,000 + 5,000 = ₹85,000\n'
        '• Works cost = Prime cost + Factory overheads = 85,000 + 20,000 '
        '= ₹1,05,000\n'
        '• Cost of production = Works cost + Administration overheads '
        'relating to production = 1,05,000 + 10,000 = ₹1,15,000',
    problem: true,
  ),
  DescriptiveQuestion(
    subjectId: 'cost',
    chapter: 'Material Cost',
    text:
        'What is Economic Order Quantity (EOQ)? State the assumptions on '
        'which it is based.',
    marks: 5,
    answer:
        'EOQ is the order size at which the total of ordering cost and '
        'carrying cost for a year is lowest. At EOQ, annual ordering cost '
        'equals annual carrying cost.\n'
        'EOQ = √(2AO / C), where A is annual demand, O is cost per order and '
        'C is carrying cost per unit per year.\n'
        'Assumptions:\n'
        '• Annual demand is known and used at a steady rate.\n'
        '• Ordering cost per order and carrying cost per unit stay constant.\n'
        '• Purchase price per unit is the same for any order size (no '
        'quantity discounts).\n'
        '• Lead time is known, and each order arrives in full at one time.\n'
        '• There are no stock-outs.',
  ),
  DescriptiveQuestion(
    subjectId: 'cost',
    chapter: 'Material Cost',
    text: 'What is a perpetual inventory system? State its advantages.',
    marks: 4,
    answer:
        'Under a perpetual inventory system, receipts and issues of '
        'material are recorded as they happen, so the balance of each item '
        'is always known from the records. Bin cards and stores ledgers are '
        'kept up to date, and the records are checked by continuous stock '
        'verification of a few items at a time.\n'
        'Advantages:\n'
        '• Stock figures are available at any time without stopping work for '
        'a full stock-take.\n'
        '• Discrepancies, losses and theft are found quickly.\n'
        '• Stock can be kept within maximum and minimum levels, avoiding '
        'both overstocking and shortages.\n'
        '• Interim accounts can be prepared easily.',
  ),
  DescriptiveQuestion(
    subjectId: 'cost',
    chapter: 'Employee Cost',
    text:
        'Distinguish between the time rate and piece rate methods of '
        'wage payment.',
    marks: 4,
    answer:
        '• Basis: time rate pays for hours worked; piece rate pays for '
        'units produced.\n'
        '• Output: under time rate, a worker earns the same whatever is '
        'produced, so there is no direct incentive; under piece rate, '
        'earnings rise with output.\n'
        '• Quality: time rate suits work where quality matters more than '
        'speed; piece rate needs close inspection because workers may rush.\n'
        '• Supervision: time rate needs closer supervision of idle time; '
        'piece rate needs less.\n'
        '• Cost per unit: under time rate, labour cost per unit changes with '
        'efficiency; under piece rate it stays fixed.',
  ),
  DescriptiveQuestion(
    subjectId: 'cost',
    chapter: 'Employee Cost',
    text:
        'What is employee (labour) turnover? State its causes and the '
        'methods of measuring it.',
    marks: 5,
    answer:
        'Employee turnover is the rate at which employees leave and are '
        'replaced during a period.\n'
        'Causes:\n'
        '• Avoidable: low pay, poor working conditions, lack of promotion, '
        'conflict with management.\n'
        '• Unavoidable: retirement, death, illness, marriage, family moves, '
        'or dismissal for misconduct.\n'
        'Measurement (average employees = average of opening and closing '
        'numbers):\n'
        '• Separation method = Employees separated ÷ Average employees × 100\n'
        '• Replacement method = Employees replaced ÷ Average employees × 100\n'
        '• Flux method = (Separations + Replacements) ÷ Average employees '
        '× 100',
  ),
  DescriptiveQuestion(
    subjectId: 'cost',
    chapter: 'Overheads',
    text: 'Distinguish between allocation and apportionment of overheads.',
    marks: 4,
    answer:
        '• Meaning: allocation charges a whole item of overhead to one '
        'cost centre; apportionment shares an item of overhead among several '
        'cost centres.\n'
        '• When used: allocation is used when the overhead is incurred '
        'only for one cost centre; apportionment is used when it benefits '
        'several.\n'
        '• Basis: allocation needs no basis; apportionment uses a fair basis, '
        'such as floor area for rent or horsepower for power.\n'
        '• Example: wages of a department\'s own supervisor are allocated to '
        'that department; factory rent is apportioned among departments.',
  ),
  DescriptiveQuestion(
    subjectId: 'cost',
    chapter: 'Overheads',
    text:
        'What is under-absorption and over-absorption of overheads? How '
        'is it treated in cost accounts?',
    marks: 5,
    answer:
        'Overheads are absorbed using a predetermined rate. When absorbed '
        'overheads are less than actual overheads, the difference is '
        'under-absorption. When they are more, it is over-absorption.\n'
        'Treatment:\n'
        '• Supplementary rate: if the difference is large, adjust the cost '
        'of jobs, finished goods and work-in-progress using a supplementary '
        'rate.\n'
        '• Write off: if the difference is small, or is due to abnormal '
        'causes such as idle capacity, transfer it to the Costing Profit & '
        'Loss Account.\n'
        '• Carry forward: in seasonal businesses, carry it forward to the '
        'next period within the same year, where it is expected to reverse.',
  ),
  DescriptiveQuestion(
    subjectId: 'cost',
    chapter: 'Job & Process Costing',
    text: 'Distinguish between job costing and process costing.',
    marks: 4,
    answer:
        '• Production: job costing is used where work is done to customer '
        'orders; process costing where identical units are produced '
        'continuously.\n'
        '• Cost unit: in job costing, costs are collected for each job; in '
        'process costing, for each process, then averaged over the units.\n'
        '• Timing: a job is costed when it is complete; a process is costed '
        'at the end of each period.\n'
        '• Transfers: jobs are usually independent; in process costing, the '
        'output of one process is the input of the next.\n'
        '• Examples: job costing in printing and repair shops; process '
        'costing in chemicals, cement and oil refining.',
  ),
  DescriptiveQuestion(
    subjectId: 'cost',
    chapter: 'Job & Process Costing',
    text:
        'Explain normal loss and abnormal loss in process costing, and '
        'how each is treated.',
    marks: 5,
    answer:
        'Normal loss is the loss expected under normal working conditions, '
        'such as evaporation or shrinkage. Abnormal loss is any loss beyond '
        'the normal loss, caused by things like machine breakdown or '
        'careless work.\n'
        'Treatment:\n'
        '• Normal loss: its cost is borne by the good units. Any scrap value '
        'is credited to the process account.\n'
        '• Abnormal loss: valued at the same cost per unit as good output and '
        'credited to the process account. It is debited to an Abnormal Loss '
        'Account, which is credited with the scrap value, and the balance is '
        'written off to the Costing Profit & Loss Account.\n'
        'This keeps the cost of good units free of losses that should not '
        'have happened.',
  ),
  DescriptiveQuestion(
    subjectId: 'cost',
    chapter: 'Marginal Costing & CVP Analysis',
    text:
        'Selling price is ₹50 per unit, variable cost is ₹30 per unit and '
        'fixed costs are ₹2,00,000 a year. Actual sales are 15,000 units. '
        'Calculate the P/V ratio, break-even point in units and in sales '
        'value, the margin of safety and the profit.',
    marks: 6,
    answer:
        '• Contribution per unit = 50 − 30 = ₹20\n'
        '• P/V ratio = 20 ÷ 50 × 100 = 40%\n'
        '• Break-even point = 2,00,000 ÷ 20 = 10,000 units, or 10,000 × 50 '
        '= ₹5,00,000\n'
        '• Margin of safety = 15,000 − 10,000 = 5,000 units, or 5,000 × 50 '
        '= ₹2,50,000 (33.33% of sales)\n'
        '• Profit = Margin of safety × P/V ratio = 2,50,000 × 40% '
        '= ₹1,00,000\n'
        'Check: Contribution 15,000 × 20 = 3,00,000 − Fixed costs 2,00,000 '
        '= ₹1,00,000.',
    problem: true,
  ),
  DescriptiveQuestion(
    subjectId: 'cost',
    chapter: 'Marginal Costing & CVP Analysis',
    text: 'What is margin of safety? How can it be improved?',
    marks: 4,
    answer:
        'Margin of safety is the amount by which actual or budgeted sales '
        'exceed break-even sales. It shows how far sales can fall before the '
        'business makes a loss.\n'
        'Margin of safety = Actual sales − Break-even sales = Profit ÷ P/V '
        'ratio\n'
        'It can be improved by:\n'
        '• Increasing sales volume.\n'
        '• Increasing the selling price, if demand allows.\n'
        '• Reducing variable cost per unit.\n'
        '• Reducing fixed costs.\n'
        '• Changing the sales mix towards products with a higher P/V ratio.',
  ),
  DescriptiveQuestion(
    subjectId: 'cost',
    chapter: 'Standard Costing',
    text:
        'The standard for one unit is 2 kg of material at ₹10 per kg. '
        'Actual output was 1,000 units, using 2,100 kg bought at ₹9.50 per '
        'kg. Calculate the material cost, price and usage variances.',
    marks: 6,
    answer:
        'Standard quantity for actual output (SQ) = 1,000 × 2 = 2,000 kg; '
        'SP = ₹10; AQ = 2,100 kg; AP = ₹9.50\n'
        '• Material cost variance = (SQ × SP) − (AQ × AP) = 20,000 − 19,950 '
        '= ₹50 (Favourable)\n'
        '• Material price variance = AQ × (SP − AP) = 2,100 × 0.50 '
        '= ₹1,050 (Favourable)\n'
        '• Material usage variance = SP × (SQ − AQ) = 10 × (2,000 − 2,100) '
        '= ₹1,000 (Adverse)\n'
        'Check: 1,050 F − 1,000 A = 50 F.',
    problem: true,
  ),
  DescriptiveQuestion(
    subjectId: 'cost',
    chapter: 'Standard Costing',
    text: 'What is standard costing? State its advantages and limitations.',
    marks: 5,
    answer:
        'Standard costing sets predetermined costs for each element of '
        'cost, compares them with actual costs, and analyses the differences '
        '(variances) so that management can act on them.\n'
        'Advantages:\n'
        '• Inefficiencies show up as variances, so attention goes where it is '
        'needed (management by exception).\n'
        '• Standards help in setting prices, budgets and targets.\n'
        '• Stock is valued at standard cost, which simplifies records.\n'
        'Limitations:\n'
        '• Setting accurate standards is difficult and costly.\n'
        '• Standards go out of date as prices and methods change, and must '
        'be revised.\n'
        '• It suits standardised products more than one-off jobs.',
  ),
];
