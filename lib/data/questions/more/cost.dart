import '../../../models/question.dart';

const costMoreQuestions = [
  // Cost Concepts & Cost Sheet
  Question(
    subjectId: 'cost',
    chapter: 'Cost Concepts & Cost Sheet',
    text:
        'The benefit given up by choosing one alternative over the next '
        'best is:',
    options: ['Sunk cost', 'Opportunity cost', 'Fixed cost', 'Prime cost'],
    answerIndex: 1,
    explanation:
        'Opportunity cost is the value of the best alternative '
        'foregone. It is not recorded in the books but matters in decisions.',
  ),
  Question(
    subjectId: 'cost',
    chapter: 'Cost Concepts & Cost Sheet',
    text:
        'A cost already incurred that cannot be recovered by any future '
        'decision is a:',
    options: [
      'Sunk cost',
      'Differential cost',
      'Out-of-pocket cost',
      'Marginal cost',
    ],
    answerIndex: 0,
    explanation:
        'Sunk costs are irrelevant for decisions because they are the '
        'same whatever is decided.',
  ),
  Question(
    subjectId: 'cost',
    chapter: 'Cost Concepts & Cost Sheet',
    text:
        'A cost that a manager can influence at his or her level of '
        'authority is a:',
    options: [
      'Controllable cost',
      'Uncontrollable cost',
      'Sunk cost',
      'Notional cost',
    ],
    answerIndex: 0,
    explanation:
        'Controllability depends on the level: a cost controllable by '
        'the production manager may be uncontrollable for a supervisor.',
  ),
  Question(
    subjectId: 'cost',
    chapter: 'Cost Concepts & Cost Sheet',
    text: 'The most suitable cost unit for a hospital is:',
    options: ['Per tonne', 'Per patient-day', 'Per kWh', 'Per kilometre'],
    answerIndex: 1,
    explanation:
        'A hospital measures its service by patient-days (or per '
        'bed-day), so cost per patient-day is the natural unit.',
  ),
  Question(
    subjectId: 'cost',
    chapter: 'Cost Concepts & Cost Sheet',
    text:
        'A segment of a business responsible for both revenue and costs is '
        'a:',
    options: ['Cost centre', 'Profit centre', 'Cost unit', 'Service centre'],
    answerIndex: 1,
    explanation:
        'A profit centre\'s manager is responsible for revenue and '
        'costs, and so for profit. A cost centre is responsible only for '
        'costs.',
  ),
  Question(
    subjectId: 'cost',
    chapter: 'Cost Concepts & Cost Sheet',
    text:
        'Total cost is ₹15,000 at 1,000 units and ₹20,000 at 1,500 units. '
        'Using the high-low method, the fixed cost is:',
    options: ['₹5,000', '₹10,000', '₹15,000', '₹2,500'],
    answerIndex: 0,
    explanation:
        'Variable cost = (20,000 − 15,000) ÷ 500 = ₹10 per unit. Fixed '
        'cost = 15,000 − 1,000 × 10 = ₹5,000.',
  ),
  Question(
    subjectId: 'cost',
    chapter: 'Cost Concepts & Cost Sheet',
    text:
        'Direct labour ₹30,000, direct expenses ₹5,000 and factory '
        'overheads ₹15,000. Conversion cost is:',
    options: ['₹35,000', '₹45,000', '₹50,000', '₹20,000'],
    answerIndex: 2,
    explanation:
        'Conversion cost = direct labour + direct expenses + factory '
        'overheads = ₹50,000. It is the cost of converting materials into '
        'finished products.',
  ),
  Question(
    subjectId: 'cost',
    chapter: 'Cost Concepts & Cost Sheet',
    text:
        'Interest on the owner\'s own capital, charged in cost accounts but '
        'not actually paid, is a:',
    options: [
      'Notional (imputed) cost',
      'Sunk cost',
      'Direct cost',
      'Variable cost',
    ],
    answerIndex: 0,
    explanation:
        'Notional costs are charged to show the true cost of using '
        'resources, but involve no cash payment. They appear only in cost '
        'accounts.',
  ),
  Question(
    subjectId: 'cost',
    chapter: 'Cost Concepts & Cost Sheet',
    text:
        'As output increases within the relevant range, variable cost per '
        'unit:',
    options: ['Increases', 'Decreases', 'Remains constant', 'Becomes zero'],
    answerIndex: 2,
    explanation:
        'Total variable cost changes in proportion to output, so the '
        'cost per unit stays the same. Fixed cost per unit falls as output '
        'rises.',
  ),
  Question(
    subjectId: 'cost',
    chapter: 'Cost Concepts & Cost Sheet',
    text:
        'Cost of goods sold is ₹1,00,000 and selling and distribution '
        'overheads are ₹12,000. Cost of sales is:',
    options: ['₹88,000', '₹1,00,000', '₹1,12,000', '₹1,20,000'],
    answerIndex: 2,
    explanation:
        'Cost of sales = cost of goods sold + selling and distribution '
        'overheads = ₹1,12,000.',
  ),

  // Material Cost
  Question(
    subjectId: 'cost',
    chapter: 'Material Cost',
    text:
        'Annual demand is 9,000 units, ordering cost ₹100 per order and '
        'carrying cost ₹5 per unit a year. The EOQ is:',
    options: ['300 units', '600 units', '900 units', '1,200 units'],
    answerIndex: 1,
    explanation: 'EOQ = √(2 × 9,000 × 100 ÷ 5) = √3,60,000 = 600 units.',
  ),
  Question(
    subjectId: 'cost',
    chapter: 'Material Cost',
    text:
        'Average usage is 40 units a day and the emergency lead time is 3 '
        'days. The danger level is:',
    options: ['43 units', '120 units', '160 units', '13 units'],
    answerIndex: 1,
    explanation:
        'Danger level = Average usage × Emergency lead time = 40 × 3 = '
        '120 units. Below this, emergency purchases are made.',
  ),
  Question(
    subjectId: 'cost',
    chapter: 'Material Cost',
    text:
        'Minimum stock level is 300 units and re-order quantity is 500 '
        'units. Average stock level (minimum + ½ ROQ) is:',
    options: ['550 units', '800 units', '400 units', '250 units'],
    answerIndex: 0,
    explanation: 'Average stock = 300 + 500 ÷ 2 = 550 units.',
  ),
  Question(
    subjectId: 'cost',
    chapter: 'Material Cost',
    text:
        'Materials consumed are ₹3,60,000 and average stock is ₹60,000. The '
        'inventory holding period (360-day year) is:',
    options: ['6 days', '30 days', '60 days', '90 days'],
    answerIndex: 2,
    explanation:
        'Turnover = 3,60,000 ÷ 60,000 = 6 times. Holding period = '
        '360 ÷ 6 = 60 days.',
  ),
  Question(
    subjectId: 'cost',
    chapter: 'Material Cost',
    text: 'VED analysis is mainly used to control:',
    options: ['Raw materials', 'Spare parts', 'Finished goods', 'Cash'],
    answerIndex: 1,
    explanation:
        'VED classifies spare parts as Vital, Essential or Desirable, '
        'based on how critical they are to production.',
  ),
  Question(
    subjectId: 'cost',
    chapter: 'Material Cost',
    text:
        'In a period of rising prices, the LIFO method of pricing issues '
        'results in:',
    options: [
      'Lower cost of issues',
      'Higher cost of issues and lower closing stock',
      'Higher closing stock',
      'No effect on profit',
    ],
    answerIndex: 1,
    explanation:
        'LIFO issues the latest (dearer) purchases first, so cost of '
        'issues is higher, profit lower, and closing stock is valued at older '
        'prices.',
  ),
  Question(
    subjectId: 'cost',
    chapter: 'Material Cost',
    text: 'Normal loss of material due to evaporation is best treated by:',
    options: [
      'Charging it to Costing Profit & Loss',
      'Inflating the issue price of good units',
      'Ignoring it',
      'Treating it as abnormal loss',
    ],
    answerIndex: 1,
    explanation:
        'Normal, unavoidable loss is part of the cost of good '
        'materials, so the cost per good unit is increased.',
  ),
  Question(
    subjectId: 'cost',
    chapter: 'Material Cost',
    text:
        'Invoice price is ₹10,000 with a trade discount of 10%, and freight '
        'of ₹500 is paid. GST credit is available. The cost of material '
        'purchased is:',
    options: ['₹10,500', '₹9,500', '₹9,000', '₹10,000'],
    answerIndex: 1,
    explanation:
        'Cost = 10,000 − 1,000 trade discount + 500 freight = '
        '₹9,500. Recoverable GST is not part of cost.',
  ),
  Question(
    subjectId: 'cost',
    chapter: 'Material Cost',
    text: 'A Just-in-Time (JIT) purchasing system aims to:',
    options: [
      'Buy in bulk to get discounts',
      'Keep inventory as low as possible',
      'Hold high safety stock',
      'Order once a year',
    ],
    answerIndex: 1,
    explanation:
        'Under JIT, materials arrive just when needed, which reduces '
        'storage and carrying costs.',
  ),
  Question(
    subjectId: 'cost',
    chapter: 'Material Cost',
    text: 'The stores ledger is maintained by the:',
    options: [
      'Storekeeper',
      'Costing (accounts) department',
      'Purchase department',
      'Production manager',
    ],
    answerIndex: 1,
    explanation:
        'The costing department keeps the stores ledger in quantity '
        'and value. The storekeeper keeps bin cards in quantity only.',
  ),

  // Employee Cost
  Question(
    subjectId: 'cost',
    chapter: 'Employee Cost',
    text:
        'During the year, 15 workers left and 25 joined. The average '
        'number of workers was 400. Labour turnover by the flux method is:',
    options: ['3.75%', '6.25%', '10%', '2.5%'],
    answerIndex: 2,
    explanation:
        'Flux method = (Separations + Accessions) ÷ Average workers × '
        '100 = (15 + 25) ÷ 400 × 100 = 10%.',
  ),
  Question(
    subjectId: 'cost',
    chapter: 'Employee Cost',
    text:
        'Under Merrick\'s multiple piece rate, a worker whose efficiency is '
        'between 83% and 100% is paid:',
    options: [
      'The normal piece rate',
      '110% of the normal piece rate',
      '120% of the normal piece rate',
      '80% of the normal piece rate',
    ],
    answerIndex: 1,
    explanation:
        'Merrick\'s plan pays the normal rate below 83%, 110% from 83% '
        'to 100%, and 120% above 100% efficiency.',
  ),
  Question(
    subjectId: 'cost',
    chapter: 'Employee Cost',
    text:
        'Overtime premium paid because a customer wanted urgent delivery '
        'is charged to:',
    options: [
      'Factory overheads',
      'That customer\'s job',
      'Costing Profit & Loss',
      'Administration overheads',
    ],
    answerIndex: 1,
    explanation:
        'The premium is caused by that job, so it is a direct cost of '
        'the job.',
  ),
  Question(
    subjectId: 'cost',
    chapter: 'Employee Cost',
    text:
        'A worker makes 120 units at a piece rate of ₹5 per unit. '
        'Earnings are:',
    options: ['₹500', '₹600', '₹125', '₹1,200'],
    answerIndex: 1,
    explanation: 'Straight piece rate earnings = 120 × 5 = ₹600.',
  ),
  Question(
    subjectId: 'cost',
    chapter: 'Employee Cost',
    text:
        'Recording the time spent by workers on each job or operation is '
        'called:',
    options: ['Time keeping', 'Time booking', 'Job evaluation', 'Merit rating'],
    answerIndex: 1,
    explanation:
        'Time booking analyses time by job, for costing. Time keeping '
        'records attendance, for wages.',
  ),
  Question(
    subjectId: 'cost',
    chapter: 'Employee Cost',
    text: 'Under the Halsey-Weir plan, the bonus is:',
    options: [
      '50% of time saved',
      '30% of time saved',
      'Time saved ÷ Time allowed × Time taken',
      '100% of time saved',
    ],
    answerIndex: 1,
    explanation:
        'Halsey-Weir is a variant of Halsey that pays 30% of the time '
        'saved at the hourly rate.',
  ),
  Question(
    subjectId: 'cost',
    chapter: 'Employee Cost',
    text:
        'The cost of training newly recruited workers to replace those who '
        'left is a:',
    options: [
      'Preventive cost of labour turnover',
      'Replacement cost of labour turnover',
      'Direct material cost',
      'Selling cost',
    ],
    answerIndex: 1,
    explanation:
        'Replacement costs arise because workers leave: recruiting, '
        'training, lost output and more scrap. Preventive costs aim to keep '
        'workers, such as welfare schemes.',
  ),
  Question(
    subjectId: 'cost',
    chapter: 'Employee Cost',
    text:
        'Wages of ₹24,000 are paid for producing 1,200 units. Labour cost '
        'per unit is:',
    options: ['₹2', '₹20', '₹200', '₹50'],
    answerIndex: 1,
    explanation: 'Labour cost per unit = 24,000 ÷ 1,200 = ₹20.',
  ),
  Question(
    subjectId: 'cost',
    chapter: 'Employee Cost',
    text:
        'The employer\'s contribution to provident fund is treated in cost '
        'accounts as:',
    options: [
      'Part of employee cost',
      'Selling overhead',
      'Not a cost',
      'Material cost',
    ],
    answerIndex: 0,
    explanation:
        'Under CAS-7, employee cost includes all benefits such as the '
        'employer\'s PF and ESI contributions, gratuity and bonus.',
  ),
  Question(
    subjectId: 'cost',
    chapter: 'Employee Cost',
    text:
        'Under the Gantt task and bonus plan, a worker who does not reach '
        'standard is paid:',
    options: [
      'Nothing',
      'Guaranteed time wages',
      'A piece rate only',
      'A 20% bonus',
    ],
    answerIndex: 1,
    explanation:
        'Gantt\'s plan guarantees time wages below standard, and pays a '
        'bonus (usually 20%) for reaching or exceeding the standard.',
  ),

  // Overheads
  Question(
    subjectId: 'cost',
    chapter: 'Overheads',
    text:
        'When service departments serve each other, overheads are best '
        'reapportioned by:',
    options: [
      'Direct distribution method',
      'Repeated distribution or simultaneous equation method',
      'Ignoring inter-service work',
      'Equal sharing',
    ],
    answerIndex: 1,
    explanation:
        'Reciprocal services need a method that recognises the work '
        'each service department does for the other.',
  ),
  Question(
    subjectId: 'cost',
    chapter: 'Overheads',
    text:
        'Factory overheads are ₹60,000 and direct labour cost is ₹1,20,000. '
        'The direct labour cost percentage rate is:',
    options: ['50%', '200%', '20%', '60%'],
    answerIndex: 0,
    explanation: 'Rate = 60,000 ÷ 1,20,000 × 100 = 50% of direct labour cost.',
  ),
  Question(
    subjectId: 'cost',
    chapter: 'Overheads',
    text:
        'Overheads are ₹50,000 and prime cost is ₹2,00,000. The prime cost '
        'percentage rate is:',
    options: ['25%', '40%', '4%', '50%'],
    answerIndex: 0,
    explanation: 'Rate = 50,000 ÷ 2,00,000 × 100 = 25% of prime cost.',
  ),
  Question(
    subjectId: 'cost',
    chapter: 'Overheads',
    text:
        'Canteen expenses are usually apportioned among departments on the '
        'basis of:',
    options: [
      'Floor area',
      'Number of employees',
      'Machine hours',
      'Value of materials',
    ],
    answerIndex: 1,
    explanation:
        'Canteen use depends on how many employees each department '
        'has.',
  ),
  Question(
    subjectId: 'cost',
    chapter: 'Overheads',
    text:
        'Power cost for running machines is best apportioned on the basis '
        'of:',
    options: [
      'Number of employees',
      'Horsepower × machine hours (kWh)',
      'Floor area',
      'Direct wages',
    ],
    answerIndex: 1,
    explanation:
        'Power consumption depends on machine capacity and running '
        'hours, so kWh or HP × hours is the fair basis.',
  ),
  Question(
    subjectId: 'cost',
    chapter: 'Overheads',
    text:
        'Overheads absorbed are ₹1,00,000 and actual overheads are ₹95,000. '
        'The result is:',
    options: [
      'Under-absorption of ₹5,000',
      'Over-absorption of ₹5,000',
      'No difference',
      'Under-absorption of ₹95,000',
    ],
    answerIndex: 1,
    explanation:
        'More overhead was charged to production than was incurred, so '
        'there is over-absorption of ₹5,000.',
  ),
  Question(
    subjectId: 'cost',
    chapter: 'Overheads',
    text: 'A single overhead rate used for the whole factory is called a:',
    options: [
      'Departmental rate',
      'Blanket rate',
      'Supplementary rate',
      'Machine hour rate',
    ],
    answerIndex: 1,
    explanation:
        'A blanket rate is simple but can be inaccurate when '
        'departments differ a lot.',
  ),
  Question(
    subjectId: 'cost',
    chapter: 'Overheads',
    text:
        'Administration overheads are usually absorbed as a percentage '
        'of:',
    options: ['Works cost', 'Sales', 'Direct material', 'Profit'],
    answerIndex: 0,
    explanation:
        'Administration overheads relate to the business as a whole '
        'and are commonly absorbed as a percentage of works (factory) cost.',
  ),
  Question(
    subjectId: 'cost',
    chapter: 'Overheads',
    text: 'Advertising expenditure is an example of:',
    options: [
      'Factory overhead',
      'Administration overhead',
      'Selling overhead',
      'Distribution overhead',
    ],
    answerIndex: 2,
    explanation:
        'Selling overheads are costs of creating demand and getting '
        'orders, such as advertising and salespeople\'s salaries.',
  ),
  Question(
    subjectId: 'cost',
    chapter: 'Overheads',
    text: 'Lighting expenses are usually apportioned on the basis of:',
    options: [
      'Number of light points or floor area',
      'Number of employees',
      'Direct wages',
      'Machine hours',
    ],
    answerIndex: 0,
    explanation: 'Light used depends on the number of points or the area lit.',
  ),

  // Job & Process Costing
  Question(
    subjectId: 'cost',
    chapter: 'Job & Process Costing',
    text:
        '1,000 units enter a process with normal loss of 10%. Actual output '
        'is 920 units and cost per good unit is ₹20. The abnormal gain is:',
    options: ['₹400', '₹1,600', '₹200', '₹800'],
    answerIndex: 0,
    explanation:
        'Expected output = 900. Abnormal gain = 920 − 900 = 20 units × '
        '20 = ₹400.',
  ),
  Question(
    subjectId: 'cost',
    chapter: 'Job & Process Costing',
    text: 'In a cost-plus contract, the contract price is:',
    options: [
      'Fixed in advance',
      'Actual cost plus an agreed profit',
      'Market price',
      'Cost less a discount',
    ],
    answerIndex: 1,
    explanation:
        'Cost-plus contracts are used where cost cannot be estimated '
        'in advance, such as defence or new construction.',
  ),
  Question(
    subjectId: 'cost',
    chapter: 'Job & Process Costing',
    text: 'An escalation clause in a contract protects:',
    options: [
      'The contractee against delay',
      'The contractor against rises in prices of inputs',
      'Both parties against disputes',
      'The bank against default',
    ],
    answerIndex: 1,
    explanation:
        'It allows the contract price to be increased if material or '
        'labour prices rise beyond a stated level.',
  ),
  Question(
    subjectId: 'cost',
    chapter: 'Job & Process Costing',
    text:
        'A contract is 40% complete. Notional profit is ₹60,000 and cash '
        'received is 80% of work certified. Profit credited to P&L under the '
        'traditional rule is:',
    options: ['₹16,000', '₹40,000', '₹20,000', '₹32,000'],
    answerIndex: 0,
    explanation:
        'For 25% to 50% completion: 1/3 × Notional profit × Cash '
        'received ÷ Work certified = 1/3 × 60,000 × 80% = ₹16,000.',
  ),
  Question(
    subjectId: 'cost',
    chapter: 'Job & Process Costing',
    text:
        'Closing WIP is 200 units, 75% complete for conversion. Equivalent '
        'units for conversion are:',
    options: ['200', '150', '50', '275'],
    answerIndex: 1,
    explanation: 'Equivalent units = 200 × 75% = 150.',
  ),
  Question(
    subjectId: 'cost',
    chapter: 'Job & Process Costing',
    text:
        'For a job: material ₹5,000, labour ₹3,000, and overheads at 100% '
        'of labour. The job cost is:',
    options: ['₹8,000', '₹11,000', '₹13,000', '₹16,000'],
    answerIndex: 1,
    explanation: 'Job cost = 5,000 + 3,000 + 3,000 = ₹11,000.',
  ),
  Question(
    subjectId: 'cost',
    chapter: 'Job & Process Costing',
    text:
        'Annual demand is 10,000 units, set-up cost ₹200 per batch and '
        'carrying cost ₹1 per unit a year. The economic batch quantity is:',
    options: ['1,000 units', '2,000 units', '4,000 units', '1,414 units'],
    answerIndex: 1,
    explanation: 'EBQ = √(2 × 10,000 × 200 ÷ 1) = √40,00,000 = 2,000 units.',
  ),
  Question(
    subjectId: 'cost',
    chapter: 'Job & Process Costing',
    text: 'The scrap value of normal loss in process costing is:',
    options: [
      'Debited to the process account',
      'Credited to the process account',
      'Credited to Costing Profit & Loss',
      'Ignored',
    ],
    answerIndex: 1,
    explanation:
        'Crediting the scrap value reduces the cost borne by the good '
        'units.',
  ),
  Question(
    subjectId: 'cost',
    chapter: 'Job & Process Costing',
    text:
        'A truck carries 5 tonnes for 200 km. The composite cost units '
        'produced are:',
    options: ['205 tonne-km', '1,000 tonne-km', '40 tonne-km', '200 km'],
    answerIndex: 1,
    explanation:
        'Tonne-km = tonnes carried × distance = 5 × 200 = 1,000. Transport '
        'firms use composite units like this to find cost per tonne-km.',
  ),
  Question(
    subjectId: 'cost',
    chapter: 'Job & Process Costing',
    text: 'Process costing is most suitable for:',
    options: [
      'Repair workshops',
      'Chemical and oil refining industries',
      'Building contractors',
      'Furniture made to order',
    ],
    answerIndex: 1,
    explanation:
        'Process costing suits continuous production of identical '
        'units through successive processes.',
  ),

  // Marginal Costing & CVP Analysis
  Question(
    subjectId: 'cost',
    chapter: 'Marginal Costing & CVP Analysis',
    text:
        'Fixed costs are ₹90,000, selling price ₹50 and variable cost ₹35 '
        'per unit. The break-even point in units is:',
    options: ['1,800', '2,571', '6,000', '9,000'],
    answerIndex: 2,
    explanation: 'Contribution per unit = 15. BEP = 90,000 ÷ 15 = 6,000 units.',
  ),
  Question(
    subjectId: 'cost',
    chapter: 'Marginal Costing & CVP Analysis',
    text:
        'Fixed costs are ₹90,000 and contribution is ₹15 per unit. Units '
        'needed for a profit of ₹30,000 are:',
    options: ['6,000', '8,000', '2,000', '4,000'],
    answerIndex: 1,
    explanation: 'Units = (90,000 + 30,000) ÷ 15 = 8,000.',
  ),
  Question(
    subjectId: 'cost',
    chapter: 'Marginal Costing & CVP Analysis',
    text:
        'Profit is ₹24,000 and the P/V ratio is 30%. The margin of safety '
        'is:',
    options: ['₹7,200', '₹80,000', '₹72,000', '₹24,000'],
    answerIndex: 1,
    explanation:
        'Margin of safety = Profit ÷ P/V ratio = 24,000 ÷ 30% = '
        '₹80,000.',
  ),
  Question(
    subjectId: 'cost',
    chapter: 'Marginal Costing & CVP Analysis',
    text:
        'Selling price is ₹100 and variable cost ₹60. If the price is cut '
        'by 10%, the new P/V ratio is:',
    options: ['40%', '30%', '33.33%', '36%'],
    answerIndex: 2,
    explanation: 'New price = 90; contribution = 30; P/V = 30 ÷ 90 = 33.33%.',
  ),
  Question(
    subjectId: 'cost',
    chapter: 'Marginal Costing & CVP Analysis',
    text:
        'Avoidable fixed costs on closing down are ₹30,000 and contribution '
        'is ₹10 per unit. The shut-down point is:',
    options: ['300 units', '3,000 units', '30,000 units', '1,000 units'],
    answerIndex: 1,
    explanation:
        'Shut-down point = Avoidable fixed costs ÷ Contribution per '
        'unit = 3,000 units. Below this, it is cheaper to close down '
        'temporarily.',
  ),
  Question(
    subjectId: 'cost',
    chapter: 'Marginal Costing & CVP Analysis',
    text: 'Under marginal costing, fixed production overheads are:',
    options: [
      'Included in stock valuation',
      'Treated as period costs and charged in full',
      'Ignored',
      'Added to variable cost per unit',
    ],
    answerIndex: 1,
    explanation:
        'Only variable costs are included in product cost and stock. '
        'Fixed costs are written off in the period.',
  ),
  Question(
    subjectId: 'cost',
    chapter: 'Marginal Costing & CVP Analysis',
    text:
        'Stock increases by 500 units during the year, and fixed overhead '
        'is absorbed at ₹4 per unit. Compared with marginal costing, profit '
        'under absorption costing is:',
    options: ['₹2,000 higher', '₹2,000 lower', 'The same', '₹500 higher'],
    answerIndex: 0,
    explanation:
        'Absorption costing carries 500 × 4 = ₹2,000 of fixed overhead '
        'forward in closing stock, so its profit is higher.',
  ),
  Question(
    subjectId: 'cost',
    chapter: 'Marginal Costing & CVP Analysis',
    text:
        'Fixed costs are ₹1,00,000 including depreciation of ₹20,000. '
        'Contribution is ₹20 per unit. The cash break-even point is:',
    options: ['5,000 units', '4,000 units', '1,000 units', '6,000 units'],
    answerIndex: 1,
    explanation:
        'Cash BEP = Cash fixed costs ÷ Contribution = 80,000 ÷ 20 = '
        '4,000 units.',
  ),
  Question(
    subjectId: 'cost',
    chapter: 'Marginal Costing & CVP Analysis',
    text: 'The P/V ratio can be improved by:',
    options: [
      'Reducing fixed costs',
      'Reducing variable cost per unit',
      'Increasing output only',
      'Reducing selling price',
    ],
    answerIndex: 1,
    explanation:
        'P/V = (Price − Variable cost) ÷ Price, so lower variable cost '
        'or a higher price improves it. Fixed costs do not affect it.',
  ),
  Question(
    subjectId: 'cost',
    chapter: 'Marginal Costing & CVP Analysis',
    text:
        'Product A has sales of ₹60,000 at a P/V ratio of 40%, and B has '
        'sales of ₹40,000 at 25%. The combined P/V ratio is:',
    options: ['32.5%', '34%', '65%', '30%'],
    answerIndex: 1,
    explanation:
        'Total contribution = 24,000 + 10,000 = 34,000 on sales of '
        '1,00,000, so 34%.',
  ),

  // Standard Costing
  Question(
    subjectId: 'cost',
    chapter: 'Standard Costing',
    text:
        'Abnormal idle time is 50 hours and the standard rate is ₹40 an '
        'hour. The idle time variance is:',
    options: ['₹2,000 (A)', '₹2,000 (F)', '₹800 (A)', 'Nil'],
    answerIndex: 0,
    explanation:
        'Idle time variance = Idle hours × Standard rate = 50 × 40 = '
        '₹2,000, always adverse.',
  ),
  Question(
    subjectId: 'cost',
    chapter: 'Standard Costing',
    text:
        'A standard set for the best possible conditions, with no allowance '
        'for waste or idle time, is:',
    options: [
      'Basic standard',
      'Ideal standard',
      'Normal standard',
      'Currently attainable standard',
    ],
    answerIndex: 1,
    explanation:
        'Ideal standards are rarely achieved and can demotivate staff. '
        'Currently attainable standards are more commonly used.',
  ),
  Question(
    subjectId: 'cost',
    chapter: 'Standard Costing',
    text: 'A currently attainable standard is one that:',
    options: [
      'Can never be reached',
      'Can be reached under efficient working, with normal allowances',
      'Is fixed for many years',
      'Is based on last year\'s actual results',
    ],
    answerIndex: 1,
    explanation:
        'It allows for normal losses and idle time, so it is '
        'challenging but achievable, which motivates staff.',
  ),
  Question(
    subjectId: 'cost',
    chapter: 'Standard Costing',
    text:
        'Actual hours are 1,000, the standard variable overhead rate is ₹5 '
        'an hour and actual variable overheads are ₹5,400. The variable '
        'overhead expenditure variance is:',
    options: ['₹400 (A)', '₹400 (F)', '₹600 (A)', '₹5,000 (A)'],
    answerIndex: 0,
    explanation:
        'Expenditure variance = AH × SR − Actual = 5,000 − 5,400 = '
        '₹400 (A).',
  ),
  Question(
    subjectId: 'cost',
    chapter: 'Standard Costing',
    text:
        'Standard hours for actual output are 900, actual hours 1,000, and '
        'the standard variable overhead rate ₹5 an hour. The variable '
        'overhead efficiency variance is:',
    options: ['₹500 (F)', '₹500 (A)', '₹4,500 (A)', '₹100 (A)'],
    answerIndex: 1,
    explanation:
        'Efficiency variance = SR × (SH − AH) = 5 × (900 − 1,000) = '
        '₹500 (A).',
  ),
  Question(
    subjectId: 'cost',
    chapter: 'Standard Costing',
    text:
        'Budgeted fixed overheads are ₹50,000 for 10,000 standard hours. '
        'Standard hours for actual output are 9,000. The fixed overhead '
        'volume variance is:',
    options: ['₹5,000 (F)', '₹5,000 (A)', '₹45,000 (A)', 'Nil'],
    answerIndex: 1,
    explanation:
        'Rate = ₹5 an hour. Absorbed = 9,000 × 5 = 45,000. Volume variance = '
        'Absorbed − Budgeted = 45,000 − 50,000 = ₹5,000 (A).',
  ),
  Question(
    subjectId: 'cost',
    chapter: 'Standard Costing',
    text:
        '2,000 units are sold at ₹48 against a standard price of ₹50. The '
        'sales price variance is:',
    options: ['₹4,000 (F)', '₹4,000 (A)', '₹2,000 (A)', '₹96,000 (A)'],
    answerIndex: 1,
    explanation:
        'Sales price variance = AQ × (AP − SP) = 2,000 × (48 − 50) = '
        '₹4,000 (A).',
  ),
  Question(
    subjectId: 'cost',
    chapter: 'Standard Costing',
    text:
        'The material price variance is ₹1,000 (A) and usage variance '
        '₹400 (F). The material cost variance is:',
    options: ['₹1,400 (A)', '₹600 (A)', '₹600 (F)', '₹1,400 (F)'],
    answerIndex: 1,
    explanation: 'Cost variance = Price + Usage = 1,000 A − 400 F = ₹600 (A).',
  ),
  Question(
    subjectId: 'cost',
    chapter: 'Standard Costing',
    text: 'The material yield variance arises from:',
    options: [
      'A difference in purchase price',
      'A difference between actual output and standard output from the '
          'actual input',
      'A change in the mix of materials',
      'Idle time',
    ],
    answerIndex: 1,
    explanation:
        'Yield variance measures the output gained or lost compared '
        'with what the actual input should have produced.',
  ),
  Question(
    subjectId: 'cost',
    chapter: 'Standard Costing',
    text:
        'The main difference between a standard and a budget is that a '
        'standard is:',
    options: [
      'Set for the whole business',
      'A unit concept, while a budget is a total concept',
      'Always historical',
      'Prepared only for sales',
    ],
    answerIndex: 1,
    explanation:
        'Standards are set per unit (for example per kg or hour); '
        'budgets are totals for a period, often built from standards.',
  ),
];
