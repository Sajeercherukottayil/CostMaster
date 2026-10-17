import '../../models/question.dart';

const costQuestions = [
  Question(
    subjectId: 'cost',
    chapter: 'Material Cost',
    text: 'Annual demand is 2,400 units, ordering cost is ₹100 per order and '
        'carrying cost is ₹3 per unit per year. The EOQ is:',
    options: ['200 units', '400 units', '800 units', '160 units'],
    answerIndex: 1,
    explanation: 'EOQ = √(2AO/C) = √(2 × 2,400 × 100 / 3) = √1,60,000 = 400 units.',
  ),
  Question(
    subjectId: 'cost',
    chapter: 'Material Cost',
    text: 'Maximum usage is 50 units per day and maximum re-order period is '
        '10 days. The re-order level is:',
    options: ['250 units', '1,000 units', '500 units', '60 units'],
    answerIndex: 2,
    explanation: 'Re-order level = Maximum usage × Maximum re-order period = 50 × 10 = 500 units.',
  ),
  Question(
    subjectId: 'cost',
    chapter: 'Material Cost',
    text: 'Re-order level is 500 units, normal usage is 30 units per day and '
        'normal re-order period is 8 days. The minimum stock level is:',
    options: ['740 units', '240 units', '260 units', '470 units'],
    answerIndex: 2,
    explanation: 'Minimum level = ROL − (Normal usage × Normal re-order period) '
        '= 500 − (30 × 8) = 260 units.',
  ),
  Question(
    subjectId: 'cost',
    chapter: 'Material Cost',
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
    chapter: 'Material Cost',
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
    chapter: 'Material Cost',
    text: 'In a period of rising prices, which method of pricing material issues '
        'gives the highest value of closing stock?',
    options: ['LIFO', 'Simple average', 'Weighted average', 'FIFO'],
    answerIndex: 3,
    explanation: 'Under FIFO older (cheaper) lots are issued first, so closing '
        'stock is valued at the latest (higher) prices.',
  ),
  Question(
    subjectId: 'cost',
    chapter: 'Material Cost',
    text: 'Under the FIFO method, materials are issued at:',
    options: [
      'The standard price',
      'The prices of the earliest purchases still in stock',
      'The latest purchase price',
      'The weighted average price',
    ],
    answerIndex: 1,
    explanation: 'First In, First Out assumes the oldest stock is issued first, so '
        'issues are priced at the earliest purchase prices.',
  ),
  Question(
    subjectId: 'cost',
    chapter: 'Material Cost',
    text: 'A bin card is maintained by the:',
    options: [
      'Production manager',
      'Storekeeper',
      'Cost accountant',
      'Purchase manager',
    ],
    answerIndex: 1,
    explanation: 'The storekeeper keeps bin cards showing quantities only; the '
        'stores ledger, showing quantities and values, is kept by the '
        'costing department.',
  ),
  Question(
    subjectId: 'cost',
    chapter: 'Material Cost',
    text: '100 units are bought at ₹10 and 200 units at ₹13. The weighted '
        'average price per unit is:',
    options: ['₹11', '₹11.50', '₹12', '₹13'],
    answerIndex: 2,
    explanation: '(100 × 10 + 200 × 13) ÷ 300 = 3,600 ÷ 300 = ₹12.',
  ),
  Question(
    subjectId: 'cost',
    chapter: 'Material Cost',
    text: 'Lead time is the:',
    options: [
      'Time for which material is stored',
      'Time taken to inspect material',
      'Time taken to consume the stock',
      'Time between placing an order and receiving the material',
    ],
    answerIndex: 3,
    explanation: 'Lead time (re-order period) is used to set the re-order level.',
  ),
  Question(
    subjectId: 'cost',
    chapter: 'Cost Concepts & Cost Sheet',
    text: 'Direct material ₹50,000, direct labour ₹30,000, direct expenses '
        '₹5,000 and factory overheads ₹15,000. The prime cost is:',
    options: ['₹80,000', '₹1,00,000', '₹85,000', '₹95,000'],
    answerIndex: 2,
    explanation: 'Prime cost = Direct material + Direct labour + Direct expenses '
        '= 50,000 + 30,000 + 5,000 = ₹85,000. Factory overheads are not part of prime cost.',
  ),
  Question(
    subjectId: 'cost',
    chapter: 'Cost Concepts & Cost Sheet',
    text: 'Prime cost ₹85,000, factory overheads ₹15,000, opening WIP ₹4,000 '
        'and closing WIP ₹9,000. The works (factory) cost is:',
    options: ['₹1,00,000', '₹95,000', '₹1,04,000', '₹90,000'],
    answerIndex: 1,
    explanation: 'Works cost = Prime cost + Factory overheads + Opening WIP − '
        'Closing WIP = 85,000 + 15,000 + 4,000 − 9,000 = ₹95,000.',
  ),
  Question(
    subjectId: 'cost',
    chapter: 'Employee Cost',
    text: 'Time allowed 10 hours, time taken 8 hours, rate ₹50 per hour. '
        'Earnings under the Halsey Premium Plan (50%) are:',
    options: ['₹400', '₹450', '₹480', '₹500'],
    answerIndex: 1,
    explanation: 'Halsey = (TT × R) + 50% × (TA − TT) × R = 400 + 50% × 2 × 50 = ₹450.',
  ),
  Question(
    subjectId: 'cost',
    chapter: 'Employee Cost',
    text: 'Time allowed 10 hours, time taken 8 hours, rate ₹50 per hour. '
        'Earnings under the Rowan Plan are:',
    options: ['₹450', '₹500', '₹480', '₹420'],
    answerIndex: 2,
    explanation: 'Rowan = (TT × R) + (TA − TT)/TA × TT × R = 400 + (2/10) × 8 × 50 = ₹480.',
  ),
  Question(
    subjectId: 'cost',
    chapter: 'Employee Cost',
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
    chapter: 'Employee Cost',
    text: 'During a year, 12 workers left and were not replaced. The average '
        'number of workers on the roll was 240. Labour turnover rate under the '
        'separation method is:',
    options: ['12%', '5%', '2.4%', '20%'],
    answerIndex: 1,
    explanation: 'Separation method = Separations / Average workers × 100 = 12 / 240 × 100 = 5%.',
  ),
  Question(
    subjectId: 'cost',
    chapter: 'Employee Cost',
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
    chapter: 'Employee Cost',
    text: 'During a year, 10 workers were replaced and the average number of '
        'workers was 200. Labour turnover under the replacement method is:',
    options: ['2%', '20%', '10%', '5%'],
    answerIndex: 3,
    explanation: 'Replacement method = Number replaced ÷ Average number of workers × '
        '100 = 10 ÷ 200 × 100 = 5%.',
  ),
  Question(
    subjectId: 'cost',
    chapter: 'Employee Cost',
    text: 'Normal idle time (for example, time taken to set up tools) is '
        'treated as:',
    options: [
      'Ignored',
      'A deduction from the worker\'s wages',
      'A charge to the Costing Profit and Loss Account',
      'Part of the cost of production, by inflating the wage rate',
    ],
    answerIndex: 3,
    explanation: 'Normal idle time is unavoidable, so it is absorbed into production '
        'cost; abnormal idle time goes to Costing P&L.',
  ),
  Question(
    subjectId: 'cost',
    chapter: 'Employee Cost',
    text: 'Under the Halsey Premium Plan, the bonus is generally:',
    options: [
      'A fixed amount per day',
      'Time saved ÷ Time allowed × Time taken × Rate',
      '50% of the time saved, multiplied by the hourly rate',
      '100% of the time saved',
    ],
    answerIndex: 2,
    explanation: 'The time saved is shared equally between the worker and the '
        'employer.',
  ),
  Question(
    subjectId: 'cost',
    chapter: 'Employee Cost',
    text: 'Overtime premium paid because of a general pressure of work is '
        'treated as:',
    options: [
      'Selling overhead',
      'Production overhead',
      'Abnormal cost charged to Costing P&L',
      'Direct cost of a specific job',
    ],
    answerIndex: 1,
    explanation: 'If overtime is due to a customer\'s urgent request, the premium is '
        'charged to that job.',
  ),
  Question(
    subjectId: 'cost',
    chapter: 'Employee Cost',
    text: 'Under the Rowan Plan, the bonus is:',
    options: [
      '50% of time saved × Rate',
      'A percentage of the basic wage',
      'Time saved × Rate',
      'Time saved ÷ Time allowed × Time taken × Rate per hour',
    ],
    answerIndex: 3,
    explanation: 'Rowan\'s bonus rises with time saved but can never exceed the '
        'time-wage earnings.',
  ),
  Question(
    subjectId: 'cost',
    chapter: 'Overheads',
    text: 'Factory overheads of a machine are ₹1,20,000 for 6,000 machine hours. '
        'The machine hour rate is:',
    options: ['₹12', '₹60', '₹2', '₹20'],
    answerIndex: 3,
    explanation: 'Machine hour rate = Overheads / Machine hours = 1,20,000 / 6,000 = ₹20 per hour.',
  ),
  Question(
    subjectId: 'cost',
    chapter: 'Overheads',
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
    chapter: 'Overheads',
    text: 'Primary distribution of overheads means:',
    options: [
      'Reapportioning service department costs to production departments',
      'Allocating and apportioning overheads to all production and service departments',
      'Writing off overheads to Profit and Loss',
      'Absorbing overheads into units of output',
    ],
    answerIndex: 1,
    explanation: 'Primary distribution spreads overheads over all departments; '
        'secondary distribution then transfers service department costs to '
        'production departments.',
  ),
  Question(
    subjectId: 'cost',
    chapter: 'Overheads',
    text: 'Secondary distribution of overheads means:',
    options: [
      'Allocating overheads to all departments for the first time',
      'Charging overheads to the Profit and Loss Account',
      'Calculating the machine hour rate',
      'Reapportioning service department overheads to production departments',
    ],
    answerIndex: 3,
    explanation: 'Service departments do not produce output, so their costs are '
        'reapportioned to production departments before absorption.',
  ),
  Question(
    subjectId: 'cost',
    chapter: 'Overheads',
    text: 'Factory rent is usually apportioned among departments on the basis '
        'of:',
    options: [
      'Floor area occupied',
      'Direct wages',
      'Value of materials used',
      'Number of workers',
    ],
    answerIndex: 0,
    explanation: 'Rent relates to space, so floor area is the most suitable basis.',
  ),
  Question(
    subjectId: 'cost',
    chapter: 'Overheads',
    text: 'Budgeted overheads are ₹2,00,000 and budgeted labour hours 40,000. '
        'Actual hours are 42,000 and actual overheads ₹2,05,000. Overheads '
        'are:',
    options: [
      'Over-absorbed by ₹10,000',
      'Under-absorbed by ₹5,000',
      'Over-absorbed by ₹5,000',
      'Exactly absorbed',
    ],
    answerIndex: 2,
    explanation: 'Rate = 2,00,000 ÷ 40,000 = ₹5 per hour. Absorbed = 42,000 × 5 = '
        '₹2,10,000 against actual ₹2,05,000, so over-absorbed by ₹5,000.',
  ),
  Question(
    subjectId: 'cost',
    chapter: 'Overheads',
    text: 'Factory overheads are ₹90,000 and direct labour hours 30,000. The '
        'labour hour rate is:',
    options: ['₹3 per hour', '₹30 per hour', '₹0.33 per hour', '₹9 per hour'],
    answerIndex: 0,
    explanation: 'Labour hour rate = 90,000 ÷ 30,000 = ₹3 per hour.',
  ),
  Question(
    subjectId: 'cost',
    chapter: 'Overheads',
    text: 'Depreciation of machinery is usually apportioned among departments '
        'on the basis of:',
    options: [
      'Direct wages',
      'Floor area',
      'Value of machinery',
      'Number of workers',
    ],
    answerIndex: 2,
    explanation: 'Depreciation relates to the asset\'s cost, so capital value is the '
        'fairest basis.',
  ),
  Question(
    subjectId: 'cost',
    chapter: 'Overheads',
    text: 'Under-absorbed overheads arising from abnormal causes, such as a '
        'strike, are:',
    options: [
      'Carried forward',
      'Absorbed into product costs',
      'Charged to the Costing Profit and Loss Account',
      'Ignored',
    ],
    answerIndex: 2,
    explanation: 'Abnormal items should not distort product costs.',
  ),
  Question(
    subjectId: 'cost',
    chapter: 'Overheads',
    text: 'A supplementary overhead rate is used to:',
    options: [
      'Value raw materials',
      'Apportion rent',
      'Adjust under- or over-absorbed overheads to cost of sales, finished goods and WIP',
      'Find the machine hour rate',
    ],
    answerIndex: 2,
    explanation: 'It corrects the cost of units when the difference is large.',
  ),
  Question(
    subjectId: 'cost',
    chapter: 'Marginal Costing & CVP Analysis',
    text: 'Sales are ₹2,00,000 and variable costs are ₹1,20,000. The P/V ratio is:',
    options: ['60%', '40%', '30%', '66.67%'],
    answerIndex: 1,
    explanation: 'P/V ratio = Contribution / Sales = 80,000 / 2,00,000 × 100 = 40%.',
  ),
  Question(
    subjectId: 'cost',
    chapter: 'Marginal Costing & CVP Analysis',
    text: 'Fixed costs are ₹60,000 and the P/V ratio is 40%. Break-even sales are:',
    options: ['₹24,000', '₹1,00,000', '₹2,40,000', '₹1,50,000'],
    answerIndex: 3,
    explanation: 'BEP = Fixed cost / P/V ratio = 60,000 / 40% = ₹1,50,000.',
  ),
  Question(
    subjectId: 'cost',
    chapter: 'Marginal Costing & CVP Analysis',
    text: '5,000 units are sold at ₹40 each. Variable cost is ₹24 per unit and '
        'fixed costs are ₹50,000. The profit is:',
    options: ['₹80,000', '₹50,000', '₹1,30,000', '₹30,000'],
    answerIndex: 3,
    explanation: 'Contribution = 5,000 × (40 − 24) = ₹80,000. Profit = '
        'Contribution − Fixed cost = 80,000 − 50,000 = ₹30,000.',
  ),
  Question(
    subjectId: 'cost',
    chapter: 'Marginal Costing & CVP Analysis',
    text: 'Actual sales are ₹2,00,000 and break-even sales are ₹1,50,000. The '
        'margin of safety ratio is:',
    options: ['75%', '25%', '33.33%', '50%'],
    answerIndex: 1,
    explanation: 'Margin of safety = 2,00,000 − 1,50,000 = ₹50,000. As a ratio '
        'of actual sales: 50,000 / 2,00,000 × 100 = 25%.',
  ),
  Question(
    subjectId: 'cost',
    chapter: 'Marginal Costing & CVP Analysis',
    text: 'Contribution is ₹20 per unit and fixed costs are ₹1,00,000. The '
        'break-even point is:',
    options: ['5,000 units', '2,000 units', '50,000 units', '20,000 units'],
    answerIndex: 0,
    explanation: 'BEP (units) = Fixed costs ÷ Contribution per unit = 1,00,000 ÷ 20 '
        '= 5,000 units.',
  ),
  Question(
    subjectId: 'cost',
    chapter: 'Marginal Costing & CVP Analysis',
    text: 'Fixed costs are ₹40,000, the P/V ratio is 25% and the desired '
        'profit is ₹20,000. The sales required are:',
    options: ['₹2,40,000', '₹80,000', '₹1,60,000', '₹2,00,000'],
    answerIndex: 0,
    explanation: 'Required sales = (Fixed costs + Desired profit) ÷ P/V ratio = '
        '60,000 ÷ 0.25 = ₹2,40,000.',
  ),
  Question(
    subjectId: 'cost',
    chapter: 'Marginal Costing & CVP Analysis',
    text: 'In marginal costing, the marginal cost of a product is its:',
    options: ['Total cost', 'Fixed cost', 'Variable cost', 'Selling price'],
    answerIndex: 2,
    explanation: 'Marginal cost includes direct material, direct labour, direct '
        'expenses and variable overheads.',
  ),
  Question(
    subjectId: 'cost',
    chapter: 'Marginal Costing & CVP Analysis',
    text: 'Sales are ₹3,00,000, the P/V ratio is 30% and fixed costs are '
        '₹60,000. Profit is:',
    options: ['₹2,10,000', '₹30,000', '₹90,000', '₹60,000'],
    answerIndex: 1,
    explanation: 'Contribution = 3,00,000 × 30% = 90,000; profit = 90,000 − 60,000 = '
        '₹30,000.',
  ),
  Question(
    subjectId: 'cost',
    chapter: 'Marginal Costing & CVP Analysis',
    text: 'The angle of incidence in a break-even chart is the angle:',
    options: [
      'Between the fixed cost line and the X-axis',
      'Between the sales line and the total cost line at the break-even point',
      'At the origin',
      'Between the variable cost line and the Y-axis',
    ],
    answerIndex: 1,
    explanation: 'A large angle indicates a high rate of profit once fixed costs are '
        'covered.',
  ),
  Question(
    subjectId: 'cost',
    chapter: 'Marginal Costing & CVP Analysis',
    text: 'Profit is ₹10,000 when sales are ₹1,00,000, and ₹25,000 when sales '
        'are ₹1,50,000. The P/V ratio is:',
    options: ['50%', '30%', '15%', '25%'],
    answerIndex: 1,
    explanation: 'P/V ratio = Change in profit ÷ Change in sales = 15,000 ÷ 50,000 = '
        '30%.',
  ),
  Question(
    subjectId: 'cost',
    chapter: 'Job & Process Costing',
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
    chapter: 'Job & Process Costing',
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
    chapter: 'Job & Process Costing',
    text: 'There is no opening WIP. 1,000 units are completed and 400 units '
        'are in closing WIP, 50% complete. Equivalent units of production are:',
    options: ['1,400', '1,000', '1,200', '1,100'],
    answerIndex: 2,
    explanation: 'Equivalent units = Completed units + (Closing WIP × % complete) '
        '= 1,000 + 400 × 50% = 1,200.',
  ),
  Question(
    subjectId: 'cost',
    chapter: 'Job & Process Costing',
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
    chapter: 'Job & Process Costing',
    text: 'Batch costing is suitable where:',
    options: [
      'Identical units are produced in convenient lots',
      'Production is continuous through processes',
      'Every job is different',
      'Services are provided',
    ],
    answerIndex: 0,
    explanation: 'In batch costing, a batch of similar units is treated as a cost '
        'unit, as in making medicines or biscuits.',
  ),
  Question(
    subjectId: 'cost',
    chapter: 'Job & Process Costing',
    text: 'Work certified is ₹8,00,000, work uncertified ₹50,000 and cost of '
        'work to date ₹6,50,000. The notional profit on the contract is:',
    options: ['₹8,50,000', '₹2,00,000', '₹1,50,000', '₹2,50,000'],
    answerIndex: 1,
    explanation: 'Notional profit = Work certified + Work uncertified − Cost to date '
        '= 8,00,000 + 50,000 − 6,50,000 = ₹2,00,000.',
  ),
  Question(
    subjectId: 'cost',
    chapter: 'Job & Process Costing',
    text: 'In process costing, normal loss is:',
    options: [
      'Absorbed by the good units, after crediting its scrap value',
      'Charged to Costing Profit and Loss',
      'Valued at full cost',
      'Ignored completely',
    ],
    answerIndex: 0,
    explanation: 'Normal loss is expected, so its cost is borne by the good output.',
  ),
  Question(
    subjectId: 'cost',
    chapter: 'Job & Process Costing',
    text: 'Retention money in contract costing is:',
    options: [
      'The part of the certified amount held back by the contractee',
      'Penalty for delay',
      'Profit transferred to reserve',
      'Advance paid by the contractor',
    ],
    answerIndex: 0,
    explanation: 'It is held as security against defective work and released later.',
  ),
  Question(
    subjectId: 'cost',
    chapter: 'Job & Process Costing',
    text: 'Closing work-in-progress of 500 units is 40% complete. The '
        'equivalent units are:',
    options: ['300', '500', '40', '200'],
    answerIndex: 3,
    explanation: 'Equivalent units = 500 × 40% = 200.',
  ),
  Question(
    subjectId: 'cost',
    chapter: 'Job & Process Costing',
    text: 'In process costing, abnormal loss units are valued at:',
    options: [
      'Nil',
      'Selling price',
      'Scrap value only',
      'The same cost per unit as good (normal) output',
    ],
    answerIndex: 3,
    explanation: 'Abnormal loss is valued like good units and transferred to Costing '
        'P&L, after crediting scrap value.',
  ),
  Question(
    subjectId: 'cost',
    chapter: 'Cost Concepts & Cost Sheet',
    text: 'The most appropriate cost unit for an electricity generation company is:',
    options: ['Per tonne', 'Per kilowatt-hour (kWh)', 'Per passenger-km', 'Per bed-day'],
    answerIndex: 1,
    explanation: 'Power is sold and measured in kWh, so cost per kWh is the '
        'natural unit. Passenger-km suits transport and bed-day suits hospitals.',
  ),
  Question(
    subjectId: 'cost',
    chapter: 'Standard Costing',
    text: 'Standard price is ₹10 per kg, actual price is ₹11 per kg and actual '
        'quantity purchased is 1,000 kg. The material price variance is:',
    options: ['₹1,000 (F)', '₹1,000 (A)', '₹1,100 (A)', '₹11,000 (A)'],
    answerIndex: 1,
    explanation: 'MPV = (SP − AP) × AQ = (10 − 11) × 1,000 = ₹1,000 adverse, '
        'because more was paid than the standard.',
  ),
  Question(
    subjectId: 'cost',
    chapter: 'Standard Costing',
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
    chapter: 'Standard Costing',
    text: 'A standard cost is:',
    options: [
      'A predetermined cost of what a product should cost',
      'The actual cost of the previous year',
      'The average of actual costs',
      'The market price of the product',
    ],
    answerIndex: 0,
    explanation: 'Standard costs are set in advance under efficient conditions and '
        'are compared with actual costs to find variances.',
  ),
  Question(
    subjectId: 'cost',
    chapter: 'Standard Costing',
    text: 'The standard cost of materials for actual output is ₹50,000 and '
        'the actual cost is ₹53,000. The material cost variance is:',
    options: ['Nil', '₹3,000 adverse', '₹53,000 adverse', '₹3,000 favourable'],
    answerIndex: 1,
    explanation: 'MCV = Standard cost − Actual cost = 50,000 − 53,000 = −3,000, '
        'i.e., ₹3,000 adverse.',
  ),
  Question(
    subjectId: 'cost',
    chapter: 'Standard Costing',
    text: 'Standard rate is ₹20 per hour, actual rate ₹22 per hour and actual '
        'hours paid 500. The labour rate variance is:',
    options: [
      '₹1,000 favourable',
      '₹1,000 adverse',
      '₹11,000 adverse',
      '₹2,000 adverse',
    ],
    answerIndex: 1,
    explanation: 'Rate variance = (SR − AR) × AH = (20 − 22) × 500 = −1,000, i.e., '
        '₹1,000 adverse.',
  ),
  Question(
    subjectId: 'cost',
    chapter: 'Standard Costing',
    text: 'A variance is favourable when:',
    options: [
      'Actual cost is more than standard cost',
      'Standard cost is revised upwards',
      'Actual cost is less than standard cost',
      'Actual output is less than budgeted',
    ],
    answerIndex: 2,
    explanation: 'A favourable variance increases profit compared with standard, '
        'which happens when actual cost is below standard.',
  ),
  Question(
    subjectId: 'cost',
    chapter: 'Standard Costing',
    text: 'Standard price is ₹20 per kg, actual price ₹18 per kg and actual '
        'quantity purchased 1,000 kg. The material price variance is:',
    options: [
      '₹2,000 favourable',
      '₹18,000 favourable',
      '₹2,000 adverse',
      '₹20,000 adverse',
    ],
    answerIndex: 0,
    explanation: 'Price variance = (SP − AP) × AQ = (20 − 18) × 1,000 = ₹2,000 '
        'favourable.',
  ),
  Question(
    subjectId: 'cost',
    chapter: 'Standard Costing',
    text: 'The standard labour cost for actual output is ₹40,000 and the '
        'actual labour cost ₹42,000. The labour cost variance is:',
    options: ['₹2,000 adverse', '₹42,000 adverse', 'Nil', '₹2,000 favourable'],
    answerIndex: 0,
    explanation: 'Labour cost variance = Standard cost − Actual cost = −₹2,000, '
        'i.e., adverse.',
  ),
  Question(
    subjectId: 'cost',
    chapter: 'Standard Costing',
    text: 'Variance analysis supports "management by exception", which means:',
    options: [
      'Only favourable variances are reported',
      'Management concentrates on significant deviations from standard',
      'Standards are never revised',
      'Managers review every transaction',
    ],
    answerIndex: 1,
    explanation: 'Only significant variances are reported for action, saving '
        'management time.',
  ),
  Question(
    subjectId: 'cost',
    chapter: 'Standard Costing',
    text: 'Standard quantity for actual output is 800 kg, actual quantity '
        'used 760 kg and standard price ₹5 per kg. The material usage '
        'variance is:',
    options: [
      '₹200 adverse',
      '₹3,800 favourable',
      '₹200 favourable',
      '₹40 favourable',
    ],
    answerIndex: 2,
    explanation: 'Usage variance = (SQ − AQ) × SP = (800 − 760) × 5 = ₹200 '
        'favourable.',
  ),
  Question(
    subjectId: 'cost',
    chapter: 'Cost Concepts & Cost Sheet',
    text: 'Which Cost Accounting Standard deals with Employee Cost?',
    options: ['CAS-6', 'CAS-7', 'CAS-8', 'CAS-3'],
    answerIndex: 1,
    explanation: 'CAS-7 covers Employee Cost. CAS-6 is Material Cost, CAS-8 is '
        'Cost of Utilities and CAS-3 is Production and Operation Overheads.',
  ),
  Question(
    subjectId: 'cost',
    chapter: 'Cost Concepts & Cost Sheet',
    text: 'Works cost is ₹1,00,000, office and administration overheads '
        '₹10,000 and selling and distribution overheads ₹15,000. With no '
        'stock of finished goods, the cost of sales is:',
    options: ['₹1,15,000', '₹1,00,000', '₹1,10,000', '₹1,25,000'],
    answerIndex: 3,
    explanation: 'Cost of production = 1,00,000 + 10,000 = ₹1,10,000; cost of sales '
        '= 1,10,000 + 15,000 = ₹1,25,000.',
  ),
  Question(
    subjectId: 'cost',
    chapter: 'Cost Concepts & Cost Sheet',
    text: 'Which of the following is normally a fixed cost?',
    options: [
      'Power for running machines',
      'Direct material',
      'Factory rent',
      'Piece-rate wages',
    ],
    answerIndex: 2,
    explanation: 'Rent stays the same in total regardless of output within the '
        'relevant range; the others vary with production.',
  ),
  Question(
    subjectId: 'cost',
    chapter: 'Cost Concepts & Cost Sheet',
    text: 'Prime cost consists of:',
    options: [
      'Factory overheads only',
      'All costs of production',
      'Direct material and factory overheads',
      'Direct material, direct labour and direct expenses',
    ],
    answerIndex: 3,
    explanation: 'Prime cost is the total of all direct costs.',
  ),
  Question(
    subjectId: 'cost',
    chapter: 'Cost Concepts & Cost Sheet',
    text: 'Cost of production is ₹1,10,000, opening stock of finished goods '
        '₹10,000 and closing stock ₹20,000. Cost of goods sold is:',
    options: ['₹1,40,000', '₹90,000', '₹1,20,000', '₹1,00,000'],
    answerIndex: 3,
    explanation: 'Cost of goods sold = 1,10,000 + 10,000 − 20,000 = ₹1,00,000.',
  ),
  Question(
    subjectId: 'cost',
    chapter: 'Cost Concepts & Cost Sheet',
    text: 'A cost centre is:',
    options: [
      'A unit of product',
      'A cost unit',
      'The head office',
      'A location, person or item of equipment for which costs are ascertained',
    ],
    answerIndex: 3,
    explanation: 'Costs are collected by cost centres and then charged to cost '
        'units.',
  ),
  Question(
    subjectId: 'cost',
    chapter: 'Cost Concepts & Cost Sheet',
    text: 'A telephone bill with a fixed monthly rental plus charges per call '
        'is an example of a:',
    options: ['Variable cost', 'Semi-variable cost', 'Fixed cost', 'Sunk cost'],
    answerIndex: 1,
    explanation: 'It has both a fixed and a variable element.',
  ),
];
