import '../../../../models/question.dart';

const interCostProblems = [
  DescriptiveQuestion(
    subjectId: 'i_cost',
    chapter: 'Cost Accounting Standards',
    text:
        'Following CAS-4, find the cost of production of 1,000 units for '
        'captive consumption: materials ₹5,00,000; direct wages ₹2,00,000; '
        'factory overheads ₹1,50,000; administration overheads relating to '
        'production ₹50,000; R&D for the product ₹20,000; quality control '
        '₹30,000; primary packing ₹15,000; credit for scrap ₹10,000.',
    marks: 5,
    problem: true,
    answer:
        '• Materials: 5,00,000\n'
        '• Direct wages: 2,00,000\n'
        '• Factory overheads: 1,50,000\n'
        '• Administration overheads relating to production: 50,000\n'
        '• R&D relating to the product: 20,000\n'
        '• Quality control: 30,000\n'
        '• Primary packing: 15,000\n'
        '• Less credit for scrap: (10,000)\n'
        'Cost of production = ₹9,55,000, so ₹955 per unit. Under CAS-4, this '
        'is the cost used to value goods consumed captively.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_cost',
    chapter: 'Material & Employee Cost',
    text:
        'An employee\'s basic pay is ₹20,000 a month, DA ₹4,000 a month, '
        'and the employer\'s PF contribution is 12% of basic plus DA. Annual '
        'bonus is 20% of annual basic pay. Working days are 300 a year of 8 '
        'hours, with 10% normal idle time. Find the employee cost per '
        'productive hour.',
    marks: 5,
    problem: true,
    answer:
        '• Monthly pay and PF = 20,000 + 4,000 + 12% of 24,000 (2,880) = '
        '26,880\n'
        '• Annual = 26,880 × 12 = 3,22,560\n'
        '• Bonus = 20,000 × 12 × 20% = 48,000\n'
        '• Total annual cost = ₹3,70,560\n'
        '• Hours = 300 × 8 = 2,400; less 10% idle time = 2,160 productive '
        'hours\n'
        '• Cost per productive hour = 3,70,560 ÷ 2,160 = ₹171.56\n'
        'Normal idle time is absorbed by spreading cost over productive '
        'hours only.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_cost',
    chapter: 'Material & Employee Cost',
    text:
        'Annual usage is 36,000 units (360 days), ordering cost ₹450 per '
        'order and carrying cost ₹10 per unit a year. Lead time is 10 days '
        'and safety stock is 5 days\' usage. Find the EOQ, number of orders, '
        're-order level and average stock.',
    marks: 5,
    problem: true,
    answer:
        '• EOQ = √(2 × 36,000 × 450 ÷ 10) = √32,40,000 = 1,800 units\n'
        '• Number of orders = 36,000 ÷ 1,800 = 20 a year\n'
        '• Daily usage = 36,000 ÷ 360 = 100 units\n'
        '• Safety stock = 5 × 100 = 500 units\n'
        '• Re-order level = Lead time usage + Safety stock = 10 × 100 + 500 '
        '= 1,500 units\n'
        '• Average stock = Safety stock + EOQ ÷ 2 = 500 + 900 = 1,400 units',
  ),
  DescriptiveQuestion(
    subjectId: 'i_cost',
    chapter: 'Activity Based Costing',
    text:
        'Products X (1,000 units) and Y (2,000 units). Overheads: set-up '
        '₹60,000 (set-ups: X 10, Y 20); purchasing ₹40,000 (orders: X 30, '
        'Y 10); machining ₹1,00,000 (machine hours: X 3,000, Y 2,000). Find '
        'overhead per unit under ABC and under a single machine hour rate.',
    marks: 8,
    problem: true,
    answer:
        'Cost driver rates\n'
        '• Set-up: 60,000 ÷ 30 = ₹2,000 per set-up\n'
        '• Purchasing: 40,000 ÷ 40 = ₹1,000 per order\n'
        '• Machining: 1,00,000 ÷ 5,000 = ₹20 per machine hour\n'
        'ABC overheads\n'
        '• X: 20,000 + 30,000 + 60,000 = 1,10,000, so ₹110 per unit\n'
        '• Y: 40,000 + 10,000 + 40,000 = 90,000, so ₹45 per unit\n'
        'Traditional (2,00,000 ÷ 5,000 hours = ₹40 per machine hour)\n'
        '• X: 3,000 × 40 = 1,20,000, so ₹120 per unit\n'
        '• Y: 2,000 × 40 = 80,000, so ₹40 per unit\n'
        'The traditional method over-costs X and under-costs Y, because Y '
        'uses more set-ups than its machine hours suggest.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_cost',
    chapter: 'Activity Based Costing',
    text:
        'Product Z: 500 units in batches of 100. Direct material ₹20 and '
        'direct labour ₹10 per unit. Set-up cost ₹800 per batch; 2 '
        'inspections per batch at ₹300 each; 2 machine hours per unit at ₹15 '
        'per hour. Find the cost per unit using ABC.',
    marks: 5,
    problem: true,
    answer:
        'Number of batches = 500 ÷ 100 = 5\n'
        '• Set-up: 5 × 800 = 4,000\n'
        '• Inspection: 5 × 2 × 300 = 3,000\n'
        '• Machining: 500 × 2 × 15 = 15,000\n'
        '• Total overheads = 22,000, so ₹44 per unit\n'
        'Cost per unit = 20 + 10 + 44 = ₹74\n'
        'Batch-level costs (set-up and inspection) fall per unit when batch '
        'size increases.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_cost',
    chapter: 'Joint & By-Products',
    text:
        'Joint cost is ₹1,40,000. Product A (4,000 kg) sells at split-off '
        'for ₹30 per kg. Product B (2,000 kg) needs further processing of '
        '₹40,000 and then sells at ₹100 per kg. Apportion the joint cost by '
        'net realisable value and by physical units, and find each '
        'product\'s profit under NRV.',
    marks: 8,
    problem: true,
    answer:
        'Net realisable value\n'
        '• A: 4,000 × 30 = 1,20,000\n'
        '• B: 2,000 × 100 − 40,000 = 1,60,000\n'
        '• Ratio 3 : 4, so A gets 60,000 and B gets 80,000\n'
        'Physical units (4,000 : 2,000 = 2 : 1)\n'
        '• A: 93,333; B: 46,667\n'
        'Profit under NRV\n'
        '• A: 1,20,000 − 60,000 = ₹60,000\n'
        '• B: 2,00,000 − 80,000 − 40,000 = ₹80,000\n'
        'NRV gives both products the same margin on NRV (50%), which is why '
        'it is often preferred.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_cost',
    chapter: 'Joint & By-Products',
    text:
        '(a) A process costs ₹2,00,000. Its by-product, 1,000 kg, sells at '
        '₹15 per kg with selling costs of ₹2 per kg, and a profit of 20% on '
        'sales is expected. Using the reverse cost method, find the cost of '
        'the main product. (b) A joint product sells at split-off for ₹30 '
        'per kg, or can be processed further at ₹8 per kg and sold for ₹40. '
        'Should it be processed further?',
    marks: 5,
    problem: true,
    answer:
        '(a) Reverse cost method\n'
        '• Sales value of by-product = 1,000 × 15 = 15,000\n'
        '• Less profit at 20% = 3,000\n'
        '• Less selling costs = 2,000\n'
        '• Cost credited to the main process = 10,000\n'
        '• Cost of main product = 2,00,000 − 10,000 = ₹1,90,000\n'
        '(b) Joint costs are irrelevant to this decision.\n'
        '• Extra revenue = 40 − 30 = ₹10 per kg; extra cost = ₹8 per kg\n'
        '• Gain = ₹2 per kg, so process further.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_cost',
    chapter: 'Process & Service Costing',
    text:
        'Using FIFO: opening WIP 2,000 units (material 100%, conversion '
        '40%) costing material ₹20,000 and conversion ₹6,000. 10,000 units '
        'introduced; 9,000 completed; closing WIP 3,000 units (material 100%, '
        'conversion 50%). Current costs: material ₹1,00,000, conversion '
        '₹97,000. Value the output and closing WIP.',
    marks: 8,
    problem: true,
    answer:
        'Units: started and completed = 9,000 − 2,000 = 7,000\n'
        'Equivalent units (current period)\n'
        '• Material: opening 0 + 7,000 + closing 3,000 = 10,000\n'
        '• Conversion: opening 2,000 × 60% = 1,200 + 7,000 + closing 3,000 × '
        '50% = 1,500, total 9,700\n'
        'Cost per equivalent unit\n'
        '• Material: 1,00,000 ÷ 10,000 = ₹10\n'
        '• Conversion: 97,000 ÷ 9,700 = ₹10\n'
        'Valuation\n'
        '• Opening WIP completed: 26,000 + 1,200 × 10 = 38,000\n'
        '• Started and completed: 7,000 × 20 = 1,40,000\n'
        '• Total transferred = ₹1,78,000\n'
        '• Closing WIP: 3,000 × 10 + 1,500 × 10 = ₹45,000\n'
        'Check: 1,78,000 + 45,000 = 2,23,000 = 26,000 + 1,00,000 + 97,000.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_cost',
    chapter: 'Process & Service Costing',
    text:
        'A 50-seat bus runs 200 km a day for 25 days a month at 80% '
        'occupancy. Monthly costs: driver ₹30,000; conductor ₹20,000; diesel '
        '₹1,20,000; depreciation ₹25,000; insurance ₹5,000; repairs ₹10,000. '
        'Find the cost per passenger-km and the fare per passenger-km for a '
        'profit of 20% on fare.',
    marks: 6,
    problem: true,
    answer:
        '• Total monthly cost = 30,000 + 20,000 + 1,20,000 + 25,000 + '
        '5,000 + 10,000 = ₹2,10,000\n'
        '• Passenger-km = 50 × 80% × 200 × 25 = 2,00,000\n'
        '• Cost per passenger-km = 2,10,000 ÷ 2,00,000 = ₹1.05\n'
        '• Profit is 20% of fare, so cost is 80% of fare\n'
        '• Fare = 1.05 ÷ 0.80 = ₹1.3125 per passenger-km\n'
        'A 10 km journey would cost about ₹13.13.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_cost',
    chapter: 'Standard Costing',
    text:
        'Budgeted fixed overheads are ₹1,20,000 for 12,000 hours and '
        '6,000 units (2 hours per unit). Actual fixed overheads were '
        '₹1,25,000, actual hours 11,000 and actual output 5,800 units. '
        'Calculate fixed overhead cost, expenditure, volume, efficiency and '
        'capacity variances.',
    marks: 8,
    problem: true,
    answer:
        'Standard rate = 1,20,000 ÷ 12,000 = ₹10 per hour\n'
        'Standard hours for actual output = 5,800 × 2 = 11,600\n'
        'Absorbed overheads = 11,600 × 10 = ₹1,16,000\n'
        '• Cost variance = Absorbed − Actual = 1,16,000 − 1,25,000 = ₹9,000 '
        '(A)\n'
        '• Expenditure variance = Budgeted − Actual = 1,20,000 − 1,25,000 = '
        '₹5,000 (A)\n'
        '• Volume variance = Absorbed − Budgeted = 1,16,000 − 1,20,000 = '
        '₹4,000 (A)\n'
        '• Efficiency variance = SR × (SH − AH) = 10 × (11,600 − 11,000) = '
        '₹6,000 (F)\n'
        '• Capacity variance = SR × (AH − BH) = 10 × (11,000 − 12,000) = '
        '₹10,000 (A)\n'
        'Checks: 6,000 F + 10,000 A = 4,000 A; 5,000 A + 4,000 A = 9,000 A.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_cost',
    chapter: 'Standard Costing',
    text:
        'Budgeted sales were 1,000 units at ₹50. Actual sales were 1,100 '
        'units at ₹48. Calculate the sales value, price and volume '
        'variances.',
    marks: 4,
    problem: true,
    answer:
        '• Sales value variance = Actual sales − Budgeted sales = 52,800 − '
        '50,000 = ₹2,800 (F)\n'
        '• Sales price variance = Actual quantity × (Actual price − Budgeted '
        'price) = 1,100 × (48 − 50) = ₹2,200 (A)\n'
        '• Sales volume variance = Budgeted price × (Actual quantity − '
        'Budgeted quantity) = 50 × 100 = ₹5,000 (F)\n'
        'Check: 5,000 F − 2,200 A = 2,800 F.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_cost',
    chapter: 'Reconciliation & Integrated Accounts',
    text:
        'Profit per cost accounts is ₹1,50,000. Reconcile with financial '
        'accounts: overheads under-absorbed in cost accounts ₹8,000; '
        'dividend received ₹5,000; debenture interest ₹12,000; notional rent '
        'charged in cost accounts ₹6,000; closing stock valued ₹4,000 higher '
        'in cost accounts; preliminary expenses written off ₹3,000.',
    marks: 6,
    problem: true,
    answer:
        'Profit as per cost accounts: 1,50,000\n'
        '• Less overheads under-absorbed: (8,000)\n'
        '• Add dividend received (only in financial accounts): 5,000\n'
        '• Less debenture interest (only in financial accounts): (12,000)\n'
        '• Add notional rent (only in cost accounts): 6,000\n'
        '• Less excess stock value in cost accounts: (4,000)\n'
        '• Less preliminary expenses written off: (3,000)\n'
        'Profit as per financial accounts: ₹1,34,000',
  ),
  DescriptiveQuestion(
    subjectId: 'i_cost',
    chapter: 'Reconciliation & Integrated Accounts',
    text:
        'Pass journal entries under integrated accounts: (a) materials '
        'bought on credit ₹50,000; (b) materials issued to production '
        '₹30,000; (c) wages paid ₹20,000; (d) of these, direct wages '
        '₹15,000 and indirect wages ₹5,000; (e) production overheads '
        'absorbed ₹12,000.',
    marks: 5,
    problem: true,
    answer:
        '(a) Stores Ledger Control A/c Dr 50,000 To Creditors A/c 50,000\n'
        '(b) Work-in-Progress Control A/c Dr 30,000 To Stores Ledger Control '
        'A/c 30,000\n'
        '(c) Wages Control A/c Dr 20,000 To Bank A/c 20,000\n'
        '(d) Work-in-Progress Control A/c Dr 15,000; Production Overhead '
        'Control A/c Dr 5,000; To Wages Control A/c 20,000\n'
        '(e) Work-in-Progress Control A/c Dr 12,000 To Production Overhead '
        'Control A/c 12,000\n'
        'In integrated accounts, real and personal accounts such as Bank and '
        'Creditors sit in the same books as the cost control accounts.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_cost',
    chapter: 'Uniform Costing & Inter-firm Comparison',
    text:
        'In an inter-firm comparison: firm A has sales ₹10 lakh, profit '
        '₹1 lakh and capital employed ₹5 lakh; firm B has sales ₹20 lakh, '
        'profit ₹1.6 lakh and capital employed ₹10 lakh. Compare their '
        'performance.',
    marks: 5,
    problem: true,
    answer:
        '• Profit to sales: A 10%; B 8%\n'
        '• Asset turnover (sales ÷ capital employed): A 2 times; B 2 times\n'
        '• Return on capital employed: A 20%; B 16%\n'
        'ROCE = profit margin × asset turnover. Both firms use their capital '
        'equally well, so B\'s lower return comes entirely from its lower '
        'margin. B should study its costs or pricing against A\'s, for '
        'example material, labour and overhead as a percentage of sales.',
  ),
];
