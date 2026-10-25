import '../../../models/question.dart';

const interCostQuestions = [
  Question(
    subjectId: 'i_cost',
    chapter: 'Cost Accounting Standards',
    text: 'CAS-4 deals with:',
    options: [
      'Classification of cost',
      'Capacity determination',
      'Cost of production for captive consumption',
      'Material cost',
    ],
    answerIndex: 2,
    explanation:
        'CAS-4 is Cost of Production for Captive Consumption. CAS-1 is '
        'Classification of Cost, CAS-2 Capacity Determination and CAS-6 '
        'Material Cost.',
  ),
  Question(
    subjectId: 'i_cost',
    chapter: 'Cost Accounting Standards',
    text: 'CAS-1 deals with:',
    options: [
      'Classification of Cost',
      'Capacity Determination',
      'Direct Expenses',
      'Material Cost',
    ],
    answerIndex: 0,
    explanation:
        'CAS-1 sets out principles for classifying costs, for example by '
        'nature, function and behaviour.',
  ),
  Question(
    subjectId: 'i_cost',
    chapter: 'Cost Accounting Standards',
    text: 'CAS-2 deals with:',
    options: [
      'Classification of Cost',
      'Employee Cost',
      'Pollution Control Cost',
      'Capacity Determination',
    ],
    answerIndex: 3,
    explanation:
        'CAS-2 defines installed, normal and actual capacity and how they '
        'are measured.',
  ),
  Question(
    subjectId: 'i_cost',
    chapter: 'Cost Accounting Standards',
    text: 'CAS-6 deals with:',
    options: [
      'Material Cost',
      'Employee Cost',
      'Depreciation and Amortisation',
      'Overheads',
    ],
    answerIndex: 0,
    explanation:
        'CAS-6 covers the measurement, assignment and presentation of '
        'material cost.',
  ),
  Question(
    subjectId: 'i_cost',
    chapter: 'Cost Accounting Standards',
    text: 'CAS-10 deals with:',
    options: [
      'Direct Expenses',
      'Material Cost',
      'Joint Costs',
      'Interest and Financing Charges',
    ],
    answerIndex: 0,
    explanation:
        'CAS-10 covers expenses, other than material and employee cost, '
        'that can be traced directly to a cost object.',
  ),
  Question(
    subjectId: 'i_cost',
    chapter: 'Cost Accounting Standards',
    text: 'CAS-3 deals with:',
    options: [
      'Joint Costs',
      'Selling and Distribution Overheads',
      'Production and Operation Overheads',
      'Administrative Overheads',
    ],
    answerIndex: 2,
    explanation:
        'CAS-3 sets out principles for collecting, assigning and absorbing '
        'production and operation overheads.',
  ),
  Question(
    subjectId: 'i_cost',
    chapter: 'Cost Accounting Standards',
    text: 'CAS-8 deals with:',
    options: [
      'Royalty and Technical Know-how Fee',
      'Packing Material Cost',
      'Cost of Utilities',
      'Repairs and Maintenance Cost',
    ],
    answerIndex: 2,
    explanation: 'Utilities include power, steam, water and compressed air.',
  ),
  Question(
    subjectId: 'i_cost',
    chapter: 'Cost Accounting Standards',
    text: 'CAS-9 deals with:',
    options: [
      'Direct Expenses',
      'Material Cost',
      'Packing Material Cost',
      'Cost of Utilities',
    ],
    answerIndex: 2,
    explanation: 'It covers primary and secondary packing materials.',
  ),
  Question(
    subjectId: 'i_cost',
    chapter: 'Cost Accounting Standards',
    text: 'CAS-11 deals with:',
    options: [
      'Administrative Overheads',
      'Production and Operation Overheads',
      'Interest and Financing Charges',
      'Selling and Distribution Overheads',
    ],
    answerIndex: 0,
    explanation:
        'CAS-11 sets out principles for collecting and assigning '
        'administrative overheads.',
  ),
  Question(
    subjectId: 'i_cost',
    chapter: 'Cost Accounting Standards',
    text: 'CAS-12 deals with:',
    options: [
      'Administrative Overheads',
      'Capacity Determination',
      'Employee Cost',
      'Repairs and Maintenance Cost',
    ],
    answerIndex: 3,
    explanation: 'It covers costs of keeping assets in working condition.',
  ),
  Question(
    subjectId: 'i_cost',
    chapter: 'Activity Based Costing',
    text:
        'In activity based costing, the factor that causes a change in the '
        'cost of an activity is called a:',
    options: ['Cost pool', 'Cost driver', 'Cost centre', 'Cost unit'],
    answerIndex: 1,
    explanation:
        'A cost driver (for example, number of set-ups) causes the cost '
        'of an activity. A cost pool collects the costs of an activity.',
  ),
  Question(
    subjectId: 'i_cost',
    chapter: 'Activity Based Costing',
    text:
        'Set-up costs are ₹60,000 for 120 set-ups. Product A requires 30 '
        'set-ups. Under ABC, set-up cost charged to A is:',
    options: ['₹20,000', '₹15,000', '₹500', '₹30,000'],
    answerIndex: 1,
    explanation:
        'Cost driver rate = 60,000 ÷ 120 = ₹500 per set-up; A\'s cost = 30 × '
        '500 = ₹15,000.',
  ),
  Question(
    subjectId: 'i_cost',
    chapter: 'Activity Based Costing',
    text: 'In ABC, a cost pool is:',
    options: [
      'A list of all products',
      'A reserve for future costs',
      'A grouping of the costs of an activity',
      'The total sales of a period',
    ],
    answerIndex: 2,
    explanation:
        'Overheads are collected in activity cost pools and then charged to '
        'products using cost drivers.',
  ),
  Question(
    subjectId: 'i_cost',
    chapter: 'Activity Based Costing',
    text: 'A suitable cost driver for the purchasing activity is the:',
    options: [
      'Number of machine hours',
      'Floor area',
      'Number of purchase orders',
      'Number of units sold',
    ],
    answerIndex: 2,
    explanation:
        'Purchasing cost is caused mainly by the number of orders placed.',
  ),
  Question(
    subjectId: 'i_cost',
    chapter: 'Activity Based Costing',
    text: 'Activity based costing is most useful where:',
    options: [
      'Overheads are negligible',
      'There is only one product',
      'Overheads are high and the product range is diverse',
      'All products use resources equally',
    ],
    answerIndex: 2,
    explanation:
        'With diverse products, a single absorption rate distorts costs; '
        'ABC traces overheads more accurately.',
  ),
  Question(
    subjectId: 'i_cost',
    chapter: 'Activity Based Costing',
    text:
        'An activity such as plant management, which supports the whole '
        'facility, is a:',
    options: [
      'Facility-sustaining activity',
      'Unit-level activity',
      'Batch-level activity',
      'Product-sustaining activity',
    ],
    answerIndex: 0,
    explanation:
        'Facility-sustaining activities support the organisation as a whole '
        'and are not caused by individual units, batches or products.',
  ),
  Question(
    subjectId: 'i_cost',
    chapter: 'Activity Based Costing',
    text: 'The number of set-ups is an example of a:',
    options: [
      'Batch-level cost driver',
      'Unit-level cost driver',
      'Product-level cost driver',
      'Facility-level cost driver',
    ],
    answerIndex: 0,
    explanation:
        'Set-up costs are incurred for each batch, regardless of the batch '
        'size.',
  ),
  Question(
    subjectId: 'i_cost',
    chapter: 'Activity Based Costing',
    text:
        'Inspection costs are ₹40,000 for 200 inspections. A product '
        'requires 15 inspections. Inspection cost charged to it under ABC '
        'is:',
    options: ['₹3,000', '₹15,000', '₹200', '₹2,000'],
    answerIndex: 0,
    explanation:
        'Rate = 40,000 ÷ 200 = ₹200 per inspection; 15 × 200 = ₹3,000.',
  ),
  Question(
    subjectId: 'i_cost',
    chapter: 'Activity Based Costing',
    text: 'Under ABC, overheads are first assigned to:',
    options: [
      'Products directly',
      'Activities, and then to products using cost drivers',
      'Departments only',
      'Customers only',
    ],
    answerIndex: 1,
    explanation:
        'This two-stage approach links overheads to the activities that '
        'cause them.',
  ),
  Question(
    subjectId: 'i_cost',
    chapter: 'Activity Based Costing',
    text: 'Which is a product-sustaining activity?',
    options: [
      'Plant security',
      'Product design and engineering changes',
      'Setting up a batch',
      'Machine running',
    ],
    answerIndex: 1,
    explanation:
        'Product-sustaining activities support a product line regardless of '
        'units or batches produced.',
  ),
  Question(
    subjectId: 'i_cost',
    chapter: 'Joint & By-Products',
    text:
        'Joint cost of ₹60,000 is apportioned on the sales value method. '
        'Product A: 2,000 units at ₹30. Product B: 1,000 units at ₹40. Joint '
        'cost apportioned to A is:',
    options: ['₹40,000', '₹24,000', '₹30,000', '₹36,000'],
    answerIndex: 3,
    explanation:
        'Sales value: A = ₹60,000, B = ₹40,000 (ratio 3 : 2). A\'s '
        'share = 60,000 × 3/5 = ₹36,000.',
  ),
  Question(
    subjectId: 'i_cost',
    chapter: 'Joint & By-Products',
    text:
        'A product of relatively small value produced incidentally along with '
        'the main product is a:',
    options: ['Joint product', 'By-product', 'Scrap', 'Co-product'],
    answerIndex: 1,
    explanation:
        'By-products have small value compared with the main product. '
        'Joint products have comparable values.',
  ),
  Question(
    subjectId: 'i_cost',
    chapter: 'Joint & By-Products',
    text:
        'Joint costs of ₹90,000 are apportioned on the physical units '
        'method. Product A yields 6,000 kg and Product B 3,000 kg. The '
        'joint cost of A is:',
    options: ['₹45,000', '₹90,000', '₹30,000', '₹60,000'],
    answerIndex: 3,
    explanation: 'A\'s share = 90,000 × 6,000 ÷ 9,000 = ₹60,000.',
  ),
  Question(
    subjectId: 'i_cost',
    chapter: 'Joint & By-Products',
    text: 'The split-off point is the stage at which:',
    options: [
      'Joint products become separately identifiable',
      'By-products are scrapped',
      'Production starts',
      'Products are sold',
    ],
    answerIndex: 0,
    explanation:
        'Costs before the split-off point are joint costs; costs after it '
        'are separable costs.',
  ),
  Question(
    subjectId: 'i_cost',
    chapter: 'Joint & By-Products',
    text: 'Under the reverse cost method of accounting for by-products:',
    options: [
      'Joint costs are shared equally',
      'The by-product is ignored',
      'The by-product is valued at full sales value',
      'Sales value less estimated profit and post-split-off costs is credited to the main product',
    ],
    answerIndex: 3,
    explanation:
        'The by-product\'s share of joint cost is worked backwards from its '
        'sales value and credited to the main product\'s cost.',
  ),
  Question(
    subjectId: 'i_cost',
    chapter: 'Joint & By-Products',
    text: 'Joint products are:',
    options: [
      'Products of small value produced incidentally',
      'Scrap and waste',
      'Products made in separate factories',
      'Two or more products of significant value produced from the same process',
    ],
    answerIndex: 3,
    explanation:
        'Joint products have comparable importance, unlike by-products, '
        'which have relatively small value.',
  ),
  Question(
    subjectId: 'i_cost',
    chapter: 'Joint & By-Products',
    text:
        'Under the net realisable value method, joint costs are apportioned '
        'on the basis of:',
    options: [
      'Weight only',
      'Equal shares',
      'Sales value less further processing and selling costs',
      'Physical units',
    ],
    answerIndex: 2,
    explanation:
        'It is used when products need further processing after the '
        'split-off point.',
  ),
  Question(
    subjectId: 'i_cost',
    chapter: 'Joint & By-Products',
    text:
        'Joint cost is ₹40,000. Net realisable value is ₹30,000 for Product '
        'A and ₹50,000 for Product B. The joint cost of A is:',
    options: ['₹30,000', '₹25,000', '₹20,000', '₹15,000'],
    answerIndex: 3,
    explanation: 'A\'s share = 40,000 × 30,000 ÷ 80,000 = ₹15,000.',
  ),
  Question(
    subjectId: 'i_cost',
    chapter: 'Joint & By-Products',
    text:
        'A joint product should be processed further after the split-off '
        'point if:',
    options: [
      'Incremental revenue exceeds incremental cost',
      'Total revenue exceeds joint cost',
      'It is a by-product',
      'The joint cost is high',
    ],
    answerIndex: 0,
    explanation:
        'Joint costs are irrelevant to the further processing decision.',
  ),
  Question(
    subjectId: 'i_cost',
    chapter: 'Joint & By-Products',
    text:
        'When a by-product has negligible value, its sales proceeds are '
        'usually:',
    options: [
      'Treated as a joint product',
      'Credited to the Profit and Loss Account as other income',
      'Added to joint cost',
      'Ignored',
    ],
    answerIndex: 1,
    explanation:
        'Alternatively, they may be deducted from the cost of the main '
        'product.',
  ),
  Question(
    subjectId: 'i_cost',
    chapter: 'Material & Employee Cost',
    text:
        'Annual demand is 10,000 units, set-up cost is ₹200 per batch and '
        'carrying cost is ₹4 per unit per year. The economic batch quantity is:',
    options: ['1,000 units', '500 units', '2,000 units', '707 units'],
    answerIndex: 0,
    explanation:
        'EBQ = √(2DS/C) = √(2 × 10,000 × 200 / 4) = √10,00,000 = 1,000 units.',
  ),
  Question(
    subjectId: 'i_cost',
    chapter: 'Material & Employee Cost',
    text:
        'Overtime premium paid because a customer asked for urgent delivery '
        'of a specific job is:',
    options: [
      'Charged to factory overheads',
      'Charged to Costing P&L Account',
      'Charged directly to that job',
      'Ignored in cost accounts',
    ],
    answerIndex: 2,
    explanation:
        'When overtime is due to a specific customer\'s request, the '
        'premium is a direct cost of that job. Overtime due to general pressure '
        'of work is an overhead.',
  ),
  Question(
    subjectId: 'i_cost',
    chapter: 'Material & Employee Cost',
    text:
        'Annual demand is 8,000 units, ordering cost ₹40 per order, '
        'purchase price ₹20 per unit and carrying cost 20% p.a. of unit '
        'price. The EOQ is:',
    options: ['400 units', '1,600 units', '200 units', '800 units'],
    answerIndex: 0,
    explanation:
        'Carrying cost per unit = 20 × 20% = ₹4. EOQ = √(2 × 8,000 × 40 ÷ '
        '4) = √1,60,000 = 400 units.',
  ),
  Question(
    subjectId: 'i_cost',
    chapter: 'Material & Employee Cost',
    text:
        'Under Merrick\'s multiple piece rate system, a worker whose '
        'efficiency is above 100% is paid:',
    options: [
      '110% of the normal piece rate',
      'Double the normal piece rate',
      'The normal piece rate',
      '120% of the normal piece rate',
    ],
    answerIndex: 3,
    explanation:
        'Merrick\'s plan pays the normal rate up to 83% efficiency, 110% '
        'from 83% to 100%, and 120% above 100%.',
  ),
  Question(
    subjectId: 'i_cost',
    chapter: 'Material & Employee Cost',
    text:
        'During a year, 10 workers left and 15 were replaced. The average '
        'number of workers was 500. Labour turnover under the flux method '
        'is:',
    options: ['25%', '5%', '2%', '3%'],
    answerIndex: 1,
    explanation:
        'Flux method = (Separations + Replacements) ÷ Average workers × 100 '
        '= (10 + 15) ÷ 500 × 100 = 5%.',
  ),
  Question(
    subjectId: 'i_cost',
    chapter: 'Material & Employee Cost',
    text: 'A perpetual inventory system means:',
    options: [
      'Counting stock only at the year end',
      'Keeping no stock records',
      'Buying material only when needed',
      'Continuous recording of receipts and issues, with regular physical checks',
    ],
    answerIndex: 3,
    explanation:
        'Stores records show the balance after every transaction and are '
        'verified by continuous stock-taking.',
  ),
  Question(
    subjectId: 'i_cost',
    chapter: 'Material & Employee Cost',
    text: 'VED analysis classifies spare parts as:',
    options: [
      'Very expensive, Expensive and Dear',
      'Valuable, Easy and Durable',
      'Vital, Essential and Desirable',
      'Variable, Extra and Direct',
    ],
    answerIndex: 2,
    explanation:
        'It focuses control on items whose shortage would stop production.',
  ),
  Question(
    subjectId: 'i_cost',
    chapter: 'Material & Employee Cost',
    text:
        'Annual material consumption is ₹3,60,000 and average stock '
        '₹60,000. Taking 360 days, the inventory holding period is:',
    options: ['6 days', '90 days', '60 days', '36 days'],
    answerIndex: 2,
    explanation:
        'Turnover = 3,60,000 ÷ 60,000 = 6 times; holding period = 360 ÷ 6 = '
        '60 days.',
  ),
  Question(
    subjectId: 'i_cost',
    chapter: 'Material & Employee Cost',
    text:
        'Under Gantt\'s task and bonus plan, a worker who does not reach the '
        'standard gets:',
    options: [
      'Piece wages at a lower rate',
      'Guaranteed time wages',
      'No wages',
      'Time wages plus bonus',
    ],
    answerIndex: 1,
    explanation:
        'Workers reaching the standard receive time wages plus a bonus.',
  ),
  Question(
    subjectId: 'i_cost',
    chapter: 'Material & Employee Cost',
    text: 'The danger level of stock is:',
    options: [
      'The average stock level',
      'The maximum stock level',
      'The re-order level',
      'A level below the minimum level, at which emergency purchases are made',
    ],
    answerIndex: 3,
    explanation:
        'At the danger level, normal issues may be stopped and urgent '
        'purchase action is taken.',
  ),
  Question(
    subjectId: 'i_cost',
    chapter: 'Process & Service Costing',
    text:
        'A bus runs 200 km a day for 25 days in a month, carrying 40 '
        'passengers on average. Passenger-km for the month are:',
    options: ['5,000', '8,000', '2,00,000', '1,000'],
    answerIndex: 2,
    explanation: 'Passenger-km = 200 × 40 × 25 = 2,00,000.',
  ),
  Question(
    subjectId: 'i_cost',
    chapter: 'Standard Costing',
    text:
        'Standard quantity for actual output is 1,000 kg, actual quantity '
        'used is 1,100 kg and standard price is ₹5 per kg. The material usage '
        'variance is:',
    options: ['₹500 (F)', '₹550 (A)', '₹5,000 (A)', '₹500 (A)'],
    answerIndex: 3,
    explanation: 'MUV = (SQ − AQ) × SP = (1,000 − 1,100) × 5 = ₹500 adverse.',
  ),
  Question(
    subjectId: 'i_cost',
    chapter: 'Standard Costing',
    text:
        'Budgeted fixed overheads are ₹50,000 for 10,000 units. Actual output '
        'is 9,000 units. The fixed overhead volume variance is:',
    options: ['₹5,000 (A)', '₹5,000 (F)', '₹4,500 (A)', '₹50,000 (A)'],
    answerIndex: 0,
    explanation:
        'Standard rate = ₹5 per unit. Volume variance = (Actual output − '
        'Budgeted output) × Rate = (9,000 − 10,000) × 5 = ₹5,000 adverse.',
  ),
  Question(
    subjectId: 'i_cost',
    chapter: 'Standard Costing',
    text:
        '1,000 units are sold at ₹48 each against a standard price of ₹50. '
        'The sales price variance is:',
    options: ['₹2,000 (F)', '₹2,000 (A)', '₹48,000 (A)', '₹200 (A)'],
    answerIndex: 1,
    explanation:
        'Sales price variance = (AP − SP) × Actual quantity = '
        '(48 − 50) × 1,000 = ₹2,000 adverse.',
  ),
  Question(
    subjectId: 'i_cost',
    chapter: 'Standard Costing',
    text:
        'Standard quantity for actual output is 500 kg, actual quantity '
        'used 520 kg and standard price ₹8 per kg. The material usage '
        'variance is:',
    options: [
      '₹160 favourable',
      '₹4,160 adverse',
      '₹20 adverse',
      '₹160 adverse',
    ],
    answerIndex: 3,
    explanation:
        'Usage variance = (SQ − AQ) × SP = (500 − 520) × 8 = −160, i.e., '
        '₹160 adverse.',
  ),
  Question(
    subjectId: 'i_cost',
    chapter: 'Standard Costing',
    text:
        'Standard hours for actual output are 1,000, actual hours worked '
        '950 and the standard rate ₹20 per hour. The labour efficiency '
        'variance is:',
    options: [
      '₹1,000 adverse',
      '₹1,000 favourable',
      '₹19,000 favourable',
      '₹950 favourable',
    ],
    answerIndex: 1,
    explanation:
        'Efficiency variance = (SH − AH worked) × SR = (1,000 − 950) × 20 = '
        '₹1,000 favourable.',
  ),
  Question(
    subjectId: 'i_cost',
    chapter: 'Standard Costing',
    text:
        'Workers were idle for 50 hours due to a power failure. The '
        'standard rate is ₹25 per hour. The idle time variance is:',
    options: ['Nil', '₹50 adverse', '₹1,250 favourable', '₹1,250 adverse'],
    answerIndex: 3,
    explanation:
        'Idle time variance = Idle hours × SR = 50 × 25 = ₹1,250; it is '
        'always adverse.',
  ),
  Question(
    subjectId: 'i_cost',
    chapter: 'Standard Costing',
    text:
        'Standard variable overhead rate is ₹4 per hour, actual hours 1,000 '
        'and actual variable overheads ₹4,500. The variable overhead '
        'expenditure variance is:',
    options: [
      '₹4,500 adverse',
      '₹500 adverse',
      '₹500 favourable',
      '₹4,000 adverse',
    ],
    answerIndex: 1,
    explanation:
        'Expenditure variance = (1,000 × 4) − 4,500 = −₹500, i.e., adverse.',
  ),
  Question(
    subjectId: 'i_cost',
    chapter: 'Standard Costing',
    text:
        'Budgeted sales are 1,000 units and actual sales 1,100 units. '
        'Standard profit is ₹10 per unit. The sales volume (profit) '
        'variance is:',
    options: [
      '₹100 favourable',
      '₹1,000 adverse',
      '₹1,000 favourable',
      '₹11,000 favourable',
    ],
    answerIndex: 2,
    explanation: '(1,100 − 1,000) × 10 = ₹1,000 favourable.',
  ),
  Question(
    subjectId: 'i_cost',
    chapter: 'Standard Costing',
    text: 'A material mix variance arises when:',
    options: [
      'Materials are wasted abnormally',
      'Output is below budget',
      'Materials are used in a different proportion from the standard mix',
      'Material prices change',
    ],
    answerIndex: 2,
    explanation: 'It is a part of the material usage variance.',
  ),
  Question(
    subjectId: 'i_cost',
    chapter: 'Standard Costing',
    text:
        'Budgeted fixed overheads are ₹50,000 and actual fixed overheads '
        '₹52,000. The fixed overhead expenditure variance is:',
    options: ['₹52,000 adverse', 'Nil', '₹2,000 adverse', '₹2,000 favourable'],
    answerIndex: 2,
    explanation:
        'Expenditure variance = Budgeted − Actual = −₹2,000, i.e., adverse.',
  ),
  Question(
    subjectId: 'i_cost',
    chapter: 'Reconciliation & Integrated Accounts',
    text:
        'Starting from profit as per cost accounts, factory overheads '
        'under-absorbed in cost accounts are:',
    options: [
      'Added to get profit as per financial accounts',
      'Ignored',
      'Shown separately as a memorandum item',
      'Deducted to get profit as per financial accounts',
    ],
    answerIndex: 3,
    explanation:
        'Cost accounts charged less than the actual overhead, so cost '
        'profit is higher. Deduct the under-absorption to reach financial profit.',
  ),
  Question(
    subjectId: 'i_cost',
    chapter: 'Reconciliation & Integrated Accounts',
    text: 'Which item appears only in financial accounts and not in cost accounts?',
    options: [
      'Direct wages',
      'Factory rent',
      'Interest received on investments',
      'Depreciation of plant',
    ],
    answerIndex: 2,
    explanation:
        'Interest received on investments is a purely financial item. '
        'The others are costs of production.',
  ),
  Question(
    subjectId: 'i_cost',
    chapter: 'Reconciliation & Integrated Accounts',
    text: 'In an integrated (integral) accounting system:',
    options: [
      'Separate books are kept for cost and financial accounts',
      'One set of books serves both cost and financial accounting',
      'Reconciliation of cost and financial profit is compulsory',
      'Only cost accounts are kept',
    ],
    answerIndex: 1,
    explanation:
        'Integrated accounts merge cost and financial records, so no '
        'reconciliation is needed.',
  ),
  Question(
    subjectId: 'i_cost',
    chapter: 'Reconciliation & Integrated Accounts',
    text:
        'Starting from profit as per cost accounts, factory overheads '
        'over-absorbed in cost accounts are:',
    options: ['Deducted', 'Ignored', 'Added', 'Added twice'],
    answerIndex: 2,
    explanation:
        'Over-absorption means cost accounts charged more than actual, so '
        'costing profit is lower; add it back to reach financial profit.',
  ),
  Question(
    subjectId: 'i_cost',
    chapter: 'Reconciliation & Integrated Accounts',
    text:
        'Starting from profit as per cost accounts, interest received on '
        'investments (recorded only in financial accounts) is:',
    options: ['Deducted twice', 'Added', 'Deducted', 'Ignored'],
    answerIndex: 1,
    explanation:
        'Purely financial income is not in cost accounts, so it is added to '
        'costing profit.',
  ),
  Question(
    subjectId: 'i_cost',
    chapter: 'Reconciliation & Integrated Accounts',
    text: 'Under an integrated accounting system:',
    options: [
      'Cost accounts are not maintained',
      'Only financial accounts are kept',
      'There is no need to reconcile cost and financial profits',
      'Two separate sets of books are kept',
    ],
    answerIndex: 2,
    explanation:
        'A single set of books serves both cost and financial purposes, so '
        'reconciliation is unnecessary.',
  ),
  Question(
    subjectId: 'i_cost',
    chapter: 'Reconciliation & Integrated Accounts',
    text:
        'Starting from profit as per cost accounts, notional rent charged '
        'only in cost accounts is:',
    options: ['Deducted', 'Deducted twice', 'Added', 'Ignored'],
    answerIndex: 2,
    explanation:
        'Notional costs reduce costing profit but not financial profit, so '
        'they are added back.',
  ),
  Question(
    subjectId: 'i_cost',
    chapter: 'Reconciliation & Integrated Accounts',
    text:
        'Closing stock is valued higher in cost accounts than in financial '
        'accounts. Starting from costing profit, the difference is:',
    options: ['Added twice', 'Added', 'Deducted', 'Ignored'],
    answerIndex: 2,
    explanation:
        'Higher closing stock in cost accounts gives a higher costing '
        'profit.',
  ),
  Question(
    subjectId: 'i_cost',
    chapter: 'Reconciliation & Integrated Accounts',
    text: 'In integrated accounts, payment of wages is recorded by:',
    options: [
      'Debiting WIP Control and crediting Bank',
      'Debiting Costing P&L and crediting Bank',
      'Debiting Bank Account and crediting Wages Control Account',
      'Debiting Wages Control Account and crediting Bank Account',
    ],
    answerIndex: 3,
    explanation:
        'Wages Control Account is later credited and WIP or Overhead '
        'Control debited.',
  ),
  Question(
    subjectId: 'i_cost',
    chapter: 'Reconciliation & Integrated Accounts',
    text: 'A Memorandum Reconciliation Account is prepared to:',
    options: [
      'Reconcile the profits shown by cost and financial accounts',
      'Prepare the cost sheet',
      'Record stores issues',
      'Record cash transactions',
    ],
    answerIndex: 0,
    explanation:
        'It is an alternative to the reconciliation statement and is not '
        'part of double entry.',
  ),
  Question(
    subjectId: 'i_cost',
    chapter: 'Uniform Costing & Inter-firm Comparison',
    text: 'Inter-firm comparison is best supported by:',
    options: [
      'Uniform costing',
      'Job costing',
      'Marginal costing',
      'Batch costing',
    ],
    answerIndex: 0,
    explanation:
        'Uniform costing means firms in an industry follow the same '
        'costing principles, so their costs can be compared.',
  ),
  Question(
    subjectId: 'i_cost',
    chapter: 'Uniform Costing & Inter-firm Comparison',
    text: 'Uniform costing means:',
    options: [
      'Using standard costing in one firm',
      'Firms in an industry using the same costing principles and practices',
      'Every firm charges the same price',
      'All firms have the same costs',
    ],
    answerIndex: 1,
    explanation:
        'Uniform costing makes cost data of different firms comparable.',
  ),
  Question(
    subjectId: 'i_cost',
    chapter: 'Uniform Costing & Inter-firm Comparison',
    text: 'Uniform costing is usually promoted by:',
    options: [
      'Individual customers',
      'Trade associations of the industry',
      'Statutory auditors',
      'Banks',
    ],
    answerIndex: 1,
    explanation:
        'Industry associations commonly develop and administer uniform '
        'costing systems for their members.',
  ),
  Question(
    subjectId: 'i_cost',
    chapter: 'Uniform Costing & Inter-firm Comparison',
    text: 'A precondition for meaningful inter-firm comparison is:',
    options: [
      'Common ownership',
      'The same size for all firms',
      'Uniform costing, so that data are comparable',
      'Identical selling prices',
    ],
    answerIndex: 2,
    explanation:
        'Comparisons are reliable only when firms use common definitions, '
        'methods and periods.',
  ),
  Question(
    subjectId: 'i_cost',
    chapter: 'Uniform Costing & Inter-firm Comparison',
    text: 'A practical limitation of inter-firm comparison is:',
    options: [
      'It identifies weak areas',
      'It encourages healthy competition',
      'Firms are reluctant to disclose confidential data',
      'It improves efficiency',
    ],
    answerIndex: 2,
    explanation:
        'Firms may fear that sensitive information will reach competitors.',
  ),
  Question(
    subjectId: 'i_cost',
    chapter: 'Uniform Costing & Inter-firm Comparison',
    text: 'Inter-firm comparison helps a firm mainly to:',
    options: [
      'Avoid audits',
      'Identify its weaknesses compared with others in the industry',
      'Fix the market price',
      'Reduce taxes',
    ],
    answerIndex: 1,
    explanation:
        'Comparing ratios and costs with industry figures shows where the '
        'firm is less efficient.',
  ),
  Question(
    subjectId: 'i_cost',
    chapter: 'Uniform Costing & Inter-firm Comparison',
    text: 'A uniform cost manual contains:',
    options: [
      'Common methods, classifications and procedures to be followed',
      'Tax returns of member firms',
      'Individual firms\' selling prices',
      'Statutory audit reports',
    ],
    answerIndex: 0,
    explanation:
        'It ensures all participating firms prepare cost data in the same '
        'way.',
  ),
  Question(
    subjectId: 'i_cost',
    chapter: 'Uniform Costing & Inter-firm Comparison',
    text: 'For inter-firm comparison, a central body is needed to:',
    options: [
      'Audit each firm\'s accounts',
      'Collect, process and circulate data while keeping individual firms\' data confidential',
      'Merge the firms',
      'Fix prices for all firms',
    ],
    answerIndex: 1,
    explanation: 'Data is usually published as ratios without naming firms.',
  ),
  Question(
    subjectId: 'i_cost',
    chapter: 'Uniform Costing & Inter-firm Comparison',
    text: 'Uniform costing helps the government mainly in:',
    options: [
      'Collecting income tax',
      'Fixing fair prices or tariffs for an industry',
      'Issuing licences',
      'Printing currency',
    ],
    answerIndex: 1,
    explanation: 'Comparable cost data supports price regulation.',
  ),
  Question(
    subjectId: 'i_cost',
    chapter: 'Uniform Costing & Inter-firm Comparison',
    text: 'Uniform costing in an industry helps to:',
    options: [
      'Hide inefficiency',
      'Increase costs',
      'Avoid audits',
      'Prevent cut-throat price competition',
    ],
    answerIndex: 3,
    explanation: 'Firms base prices on reliable common cost data.',
  ),
  Question(
    subjectId: 'i_cost',
    chapter: 'Process & Service Costing',
    text:
        'In process costing, profit included in inter-process transfers is '
        'eliminated mainly to:',
    options: [
      'Increase reported profit',
      'Avoid tax',
      'Reduce the number of processes',
      'Show stock at cost and recognise only realised profit',
    ],
    answerIndex: 3,
    explanation:
        'Stock in later processes would otherwise include unrealised '
        'profit. A provision removes it so closing stock is at cost.',
  ),
  Question(
    subjectId: 'i_cost',
    chapter: 'Process & Service Costing',
    text:
        '1,000 units are introduced into a process with a normal loss of '
        '10%. Actual output is 920 units. The abnormal gain is:',
    options: ['20 units', 'Nil', '80 units', '100 units'],
    answerIndex: 0,
    explanation:
        'Expected output = 1,000 − 100 = 900 units. Actual output 920 '
        'exceeds this by 20 units.',
  ),
  Question(
    subjectId: 'i_cost',
    chapter: 'Process & Service Costing',
    text:
        '2,000 units are introduced into a process with no opening WIP. '
        '1,600 units are completed and 400 units remain, 25% complete as to '
        'conversion. Equivalent units for conversion are:',
    options: ['1,700', '1,900', '2,000', '1,600'],
    answerIndex: 0,
    explanation: 'Equivalent units = 1,600 + (400 × 25%) = 1,700.',
  ),
  Question(
    subjectId: 'i_cost',
    chapter: 'Process & Service Costing',
    text: 'The most appropriate cost unit for a hotel is generally:',
    options: [
      'Room-day (room per night)',
      'Tonne-km',
      'Kilowatt-hour',
      'Passenger-km',
    ],
    answerIndex: 0,
    explanation: 'Hotel costs are measured per room occupied per day.',
  ),
  Question(
    subjectId: 'i_cost',
    chapter: 'Process & Service Costing',
    text:
        'A truck carries 10 tonnes for 50 km and then 6 tonnes for a '
        'further 30 km. Absolute tonne-km are:',
    options: ['680', '480', '1,280', '800'],
    answerIndex: 0,
    explanation: 'Absolute tonne-km = (10 × 50) + (6 × 30) = 500 + 180 = 680.',
  ),
  Question(
    subjectId: 'i_cost',
    chapter: 'Process & Service Costing',
    text: 'Operating (service) costing is used by:',
    options: [
      'Jobbing workshops',
      'Transport undertakings, hospitals and hotels',
      'Shipbuilders',
      'Contractors',
    ],
    answerIndex: 1,
    explanation: 'It is used where services rather than goods are produced.',
  ),
  Question(
    subjectId: 'i_cost',
    chapter: 'Process & Service Costing',
    text:
        'A bus with 50 seats runs 100 km a day for 30 days at 80% average '
        'occupancy. Passenger-km for the month are:',
    options: ['3,000', '1,50,000', '4,000', '1,20,000'],
    answerIndex: 3,
    explanation: '50 × 80% × 100 × 30 = 1,20,000 passenger-km.',
  ),
  Question(
    subjectId: 'i_cost',
    chapter: 'Process & Service Costing',
    text:
        'Under the FIFO method of process costing, opening work-in-progress '
        'is assumed to be:',
    options: [
      'Valued at average cost with current costs',
      'Completed last',
      'Completed first in the current period',
      'Ignored',
    ],
    answerIndex: 2,
    explanation:
        'The cost of opening WIP is kept separate from current period '
        'costs.',
  ),
  Question(
    subjectId: 'i_cost',
    chapter: 'Process & Service Costing',
    text: 'In process costing, abnormal gain units are valued at:',
    options: [
      'Scrap value',
      'Nil',
      'The same cost per unit as normal output',
      'Selling price',
    ],
    answerIndex: 2,
    explanation:
        'The Abnormal Gain Account is then debited with the scrap value '
        'forgone.',
  ),
];
