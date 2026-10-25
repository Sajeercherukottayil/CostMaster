import '../../../models/question.dart';

const interCostDescriptive = [
  DescriptiveQuestion(
    subjectId: 'i_cost',
    chapter: 'Cost Accounting Standards',
    text: 'What are Cost Accounting Standards (CAS)? State their objectives.',
    marks: 5,
    answer:
        'Cost Accounting Standards are written statements of the '
        'principles and methods for measuring, assigning and presenting '
        'costs. In India, they are issued by the Cost Accounting Standards '
        'Board of the Institute of Cost Accountants of India, and are '
        'applied in preparing cost statements required under law.\n'
        'Objectives:\n'
        '• To bring uniformity and consistency to cost accounting practices.\n'
        '• To make cost data comparable across periods and organisations.\n'
        '• To give clear guidance on how each element of cost is measured '
        'and treated.\n'
        '• To support cost audit and regulators who rely on cost statements, '
        'such as for pricing and anti-dumping decisions.\n'
        '• To improve the reliability of cost information for management '
        'decisions.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_cost',
    chapter: 'Material & Employee Cost',
    text:
        'What is idle time? Explain its causes and treatment in cost '
        'accounts.',
    marks: 5,
    answer:
        'Idle time is time for which employees are paid but do no '
        'productive work.\n'
        'Causes:\n'
        '• Normal (unavoidable): time to move between jobs, set up machines, '
        'take short breaks, or receive instructions.\n'
        '• Abnormal (avoidable): machine breakdown, power failure, shortage '
        'of materials, strikes, or poor planning.\n'
        'Treatment:\n'
        '• Normal idle time is part of the cost of production. It is either '
        'included by inflating the wage rate, or charged to factory '
        'overheads.\n'
        '• Abnormal idle time is not charged to production. It is '
        'transferred to the Costing Profit & Loss Account, so it does not '
        'distort product costs.\n'
        'Idle time should be recorded and analysed by cause, so that '
        'avoidable idle time can be reduced.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_cost',
    chapter: 'Activity Based Costing',
    text:
        'What is Activity Based Costing (ABC)? Explain the steps in '
        'implementing it.',
    marks: 5,
    answer:
        'ABC assigns overheads to products according to the activities '
        'that cause the costs, rather than using a single rate based on '
        'labour or machine hours. It gives more accurate product costs where '
        'overheads are high and products use activities differently.\n'
        'Steps:\n'
        '1. Identify the main activities, such as machine set-up, purchasing, '
        'quality inspection and dispatch.\n'
        '2. Collect the overheads of each activity in an activity cost pool.\n'
        '3. Identify the cost driver for each activity, the factor that '
        'causes its cost to change, such as number of set-ups or purchase '
        'orders.\n'
        '4. Calculate a cost driver rate: activity cost pool ÷ total volume '
        'of the cost driver.\n'
        '5. Charge overheads to each product: cost driver rate × the '
        'product\'s use of the driver.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_cost',
    chapter: 'Joint & By-Products',
    text:
        'Distinguish between joint products and by-products. State the '
        'methods of apportioning joint costs.',
    marks: 6,
    answer:
        '• Joint products are two or more products of significant value '
        'produced together from the same process and raw material. '
        'By-products are produced incidentally along with the main product '
        'and have relatively low value.\n'
        '• Importance: joint products are equally important; by-products are '
        'secondary.\n'
        '• Cost treatment: joint costs up to the split-off point are '
        'apportioned among joint products; for by-products, the realisable '
        'value is usually credited to the main product\'s cost.\n'
        'Methods of apportioning joint costs:\n'
        '• Physical units method: in proportion to output quantity.\n'
        '• Average unit cost method.\n'
        '• Survey or points method: using weights based on technical '
        'factors.\n'
        '• Sales value at split-off point.\n'
        '• Net realisable value method: sales value less further processing '
        'and selling costs.\n'
        '• Contribution margin method: variable costs by units, fixed costs '
        'by contribution.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_cost',
    chapter: 'Process & Service Costing',
    text:
        'Explain equivalent production. In a process with no opening '
        'work-in-progress, 10,000 units were introduced; 8,000 were '
        'completed and 2,000 are in closing WIP, 100% complete for material '
        'and 50% for conversion. Material cost ₹1,00,000 and conversion cost '
        '₹45,000. Value the completed output and closing WIP.',
    marks: 6,
    answer:
        'Equivalent production converts partly completed units into an '
        'equal number of fully completed units, so that cost per unit can be '
        'found when there is work-in-progress.\n'
        'Equivalent units:\n'
        '• Material: 8,000 + 2,000 × 100% = 10,000\n'
        '• Conversion: 8,000 + 2,000 × 50% = 9,000\n'
        'Cost per equivalent unit:\n'
        '• Material: 1,00,000 ÷ 10,000 = ₹10\n'
        '• Conversion: 45,000 ÷ 9,000 = ₹5\n'
        'Valuation:\n'
        '• Completed output: 8,000 × (10 + 5) = ₹1,20,000\n'
        '• Closing WIP: 2,000 × 10 + 1,000 × 5 = ₹25,000\n'
        'Check: 1,20,000 + 25,000 = ₹1,45,000, the total cost.',
    problem: true,
  ),
  DescriptiveQuestion(
    subjectId: 'i_cost',
    chapter: 'Standard Costing',
    text:
        'The standard is 4 labour hours per unit at ₹50 per hour. Actual '
        'output was 500 units. Workers were paid for 2,200 hours at ₹52 per '
        'hour, including 100 hours of abnormal idle time. Calculate the '
        'labour cost, rate, idle time and efficiency variances.',
    marks: 6,
    answer:
        'Standard hours for actual output (SH) = 500 × 4 = 2,000; SR = '
        '₹50; hours paid = 2,200; hours worked = 2,100; AR = ₹52\n'
        '• Labour cost variance = (SH × SR) − (Hours paid × AR) = 1,00,000 − '
        '1,14,400 = ₹14,400 (Adverse)\n'
        '• Labour rate variance = Hours paid × (SR − AR) = 2,200 × (50 − 52) '
        '= ₹4,400 (Adverse)\n'
        '• Idle time variance = Idle hours × SR = 100 × 50 = ₹5,000 '
        '(Adverse)\n'
        '• Labour efficiency variance = SR × (SH − Hours worked) = 50 × '
        '(2,000 − 2,100) = ₹5,000 (Adverse)\n'
        'Check: 4,400 + 5,000 + 5,000 = ₹14,400 (Adverse).',
    problem: true,
  ),
  DescriptiveQuestion(
    subjectId: 'i_cost',
    chapter: 'Reconciliation & Integrated Accounts',
    text:
        'Why do the profits shown by cost accounts and financial accounts '
        'differ? State the main reasons.',
    marks: 5,
    answer:
        'When cost and financial accounts are kept separately, a '
        'reconciliation statement explains the difference in profit. The '
        'main reasons are:\n'
        '• Items only in financial accounts: income such as interest and '
        'dividends received, profit on sale of assets, and rent received; '
        'expenses such as interest on loans, fines and penalties, loss on '
        'sale of assets, donations, and goodwill or preliminary expenses '
        'written off.\n'
        '• Items only in cost accounts: notional charges such as interest on '
        'own capital or rent of own premises.\n'
        '• Under- or over-absorption of overheads in cost accounts.\n'
        '• Different bases of stock valuation in the two sets of accounts.\n'
        '• Different methods or rates of depreciation.\n'
        'Integrated accounts, which keep cost and financial records in one '
        'set of books, avoid the need for reconciliation.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_cost',
    chapter: 'Uniform Costing & Inter-firm Comparison',
    text:
        'What is uniform costing? State its advantages and the '
        'requirements for an inter-firm comparison.',
    marks: 5,
    answer:
        'Uniform costing is the use of the same costing principles and '
        'practices by several firms in the same industry, so that their '
        'costs can be compared.\n'
        'Advantages:\n'
        '• Firms can compare costs and find areas of inefficiency.\n'
        '• It supports fair pricing and tendering in the industry.\n'
        '• Small firms benefit from a costing system developed jointly.\n'
        '• Trade associations and government get reliable industry data.\n'
        'Requirements for inter-firm comparison:\n'
        '• A central body to collect and analyse data and keep it '
        'confidential.\n'
        '• Uniform methods of accounting, costing and classification.\n'
        '• Data for the same period, on the same basis.\n'
        '• Willingness of member firms to share information.',
  ),
];
