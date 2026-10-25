import '../../../../models/question.dart';

const interCostMoreDescriptive = [
  // Cost Accounting Standards
  DescriptiveQuestion(
    subjectId: 'i_cost',
    chapter: 'Cost Accounting Standards',
    text:
        'A plant has installed capacity of 1,00,000 units and normal '
        'capacity of 80,000 units. Actual production is 60,000 units. Fixed '
        'production overheads are ₹4,00,000. Following CAS-2 and CAS-3, '
        'compute the fixed overhead absorbed per unit and the amount not '
        'absorbed, and state its treatment.',
    marks: 5,
    problem: true,
    answer:
        'Fixed production overheads are absorbed on the basis of normal '
        'capacity.\n'
        '• Rate = 4,00,000 ÷ 80,000 = ₹5 per unit\n'
        '• Absorbed into production = 60,000 × 5 = ₹3,00,000\n'
        '• Unabsorbed overheads = ₹1,00,000\n'
        'Treatment: the unabsorbed amount relates to abnormal idle capacity, '
        'so it is not added to the cost of production. It is charged to the '
        'Costing Profit & Loss Account.\n'
        'If actual production exceeded normal capacity, overheads would be '
        'absorbed on actual production instead.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_cost',
    chapter: 'Cost Accounting Standards',
    text:
        'Following CAS-6, compute the cost of material purchased: invoice '
        'price ₹1,00,000; trade discount ₹5,000; GST ₹17,100 (input credit '
        'available); freight inward ₹3,000; insurance in transit ₹1,000; '
        'demurrage of ₹2,000 caused by the buyer\'s delay in clearing the '
        'goods.',
    marks: 4,
    problem: true,
    answer:
        '• Invoice price: 1,00,000\n'
        '• Less trade discount: (5,000)\n'
        '• GST: excluded, since input credit is available\n'
        '• Add freight inward: 3,000\n'
        '• Add insurance in transit: 1,000\n'
        '• Demurrage: excluded, as it is an abnormal cost; it goes to '
        'Costing Profit & Loss\n'
        'Cost of material = ₹99,000\n'
        'Only costs needed to bring the material to its present location '
        'and condition are included.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_cost',
    chapter: 'Cost Accounting Standards',
    text:
        'What are direct expenses under CAS-10? Give examples and state '
        'how they are treated.',
    marks: 4,
    answer:
        'Direct expenses are expenses, other than direct material and '
        'direct employee cost, that can be identified with a specific cost '
        'object in an economically feasible way.\n'
        'Examples:\n'
        '• Royalty paid on the basis of production.\n'
        '• Hire charges for equipment used for a specific job.\n'
        '• Cost of special designs, drawings or patterns for a product.\n'
        '• Sub-contract or job work charges.\n'
        '• Technical fees for a specific product.\n'
        'Treatment: they are included in prime cost. Imputed costs are not '
        'direct expenses, and amounts of a non-recurring or abnormal nature '
        'are excluded.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_cost',
    chapter: 'Cost Accounting Standards',
    text:
        'Explain the elements of employee cost and the treatment of '
        'overtime premium and idle time under CAS-7.',
    marks: 5,
    answer:
        'Employee cost includes all benefits paid or payable to '
        'employees, permanent or temporary:\n'
        '• Wages, salaries, allowances and bonus.\n'
        '• Employer\'s contributions to PF, ESI, pension and gratuity.\n'
        '• Leave encashment, medical benefits and other perquisites.\n'
        'It excludes imputed costs, such as notional salary of the owner.\n'
        'Overtime premium:\n'
        '• If caused by a specific job or customer, charged to that job.\n'
        '• If due to general pressure of work, treated as overhead.\n'
        '• If abnormal, charged to Costing Profit & Loss.\n'
        'Idle time: normal idle time is part of employee cost; abnormal '
        'idle time is not charged to production.',
  ),

  // Material & Employee Cost
  DescriptiveQuestion(
    subjectId: 'i_cost',
    chapter: 'Material & Employee Cost',
    text:
        'Classify these items for ABC analysis: P 50 units at ₹1,000; Q '
        '200 units at ₹100; R 500 units at ₹20; S 1,000 units at ₹10; T 2,000 '
        'units at ₹2.50; U 5,000 units at ₹1.',
    marks: 6,
    problem: true,
    answer:
        'Annual values: P 50,000; Q 20,000; R 10,000; S 10,000; T 5,000; '
        'U 5,000. Total = ₹1,00,000 and 8,750 units.\n'
        '• Category A (P, Q): 250 units (2.9% of items), ₹70,000 (70% of '
        'value)\n'
        '• Category B (R, S): 1,500 units (17.1% of items), ₹20,000 (20% of '
        'value)\n'
        '• Category C (T, U): 7,000 units (80% of items), ₹10,000 (10% of '
        'value)\n'
        'A items need strict control, frequent review and low safety stock. '
        'C items can be controlled loosely, with bulk orders.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_cost',
    chapter: 'Material & Employee Cost',
    text:
        'A worker\'s normal rate is ₹100 an hour. In a week he works 50 '
        'hours, including 10 hours of overtime paid at double rate, all on '
        'job J. Show how his wages are charged if the overtime was due to '
        '(a) general pressure of work, (b) the customer\'s request for '
        'urgent delivery, and (c) catching up after a long power failure.',
    marks: 5,
    problem: true,
    answer:
        'Total wages = 50 × 100 + overtime premium 10 × 100 = 5,000 + '
        '1,000 = ₹6,000\n'
        'Basic wages of ₹5,000 (50 hours at normal rate) are charged to job J '
        'in every case. The premium of ₹1,000 is charged:\n'
        '(a) to production overheads, spread over all jobs;\n'
        '(b) to job J, since the customer caused it;\n'
        '(c) to Costing Profit & Loss, since it arose from an abnormal '
        'event.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_cost',
    chapter: 'Material & Employee Cost',
    text: 'Compare the Halsey, Rowan and Emerson incentive plans.',
    marks: 5,
    answer:
        '• Halsey: time wages are guaranteed, plus a bonus of a fixed '
        'share (usually 50%) of time saved. Simple, and the employer shares '
        'savings. The bonus rises steadily with time saved.\n'
        '• Rowan: time wages are guaranteed, and the bonus = (time saved ÷ '
        'time allowed) × time taken × rate. It is more generous at moderate '
        'efficiency but can never double earnings, which protects against '
        'loose time standards.\n'
        '• Emerson: time wages are guaranteed; a bonus starts at about 66⅔% '
        'efficiency, rises to 20% at 100%, then grows by 1% for each extra '
        '1%. It encourages even slower workers to improve.\n'
        'All three guarantee minimum wages and reward efficiency, but differ '
        'in how the gains are shared.',
  ),

  // Activity Based Costing
  DescriptiveQuestion(
    subjectId: 'i_cost',
    chapter: 'Activity Based Costing',
    text:
        'Product P: 5,000 units, 1 machine hour each, 5 set-ups, 10 '
        'inspections. Product Q: 1,000 units, 2 machine hours each, 15 '
        'set-ups, 30 inspections. Overheads: machining ₹70,000; set-ups '
        '₹30,000; inspection ₹20,000. Compute overhead per unit under ABC and '
        'under a single machine hour rate.',
    marks: 8,
    problem: true,
    answer:
        'Cost driver rates\n'
        '• Machining: 70,000 ÷ 7,000 hours = ₹10 per hour\n'
        '• Set-ups: 30,000 ÷ 20 = ₹1,500 per set-up\n'
        '• Inspection: 20,000 ÷ 40 = ₹500 per inspection\n'
        'ABC\n'
        '• P: 50,000 + 7,500 + 5,000 = 62,500, so ₹12.50 per unit\n'
        '• Q: 20,000 + 22,500 + 15,000 = 57,500, so ₹57.50 per unit\n'
        'Machine hour rate: 1,20,000 ÷ 7,000 = ₹17.14 per hour\n'
        '• P: ₹17.14 per unit; Q: ₹34.29 per unit\n'
        'The traditional rate over-costs high-volume P and under-costs Q, '
        'which uses far more set-ups and inspections.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_cost',
    chapter: 'Activity Based Costing',
    text: 'Explain the ABC cost hierarchy with examples.',
    marks: 4,
    answer:
        '• Unit-level activities: performed for each unit, so cost '
        'varies with volume. Examples: machine running, power, direct '
        'labour.\n'
        '• Batch-level activities: performed for each batch, whatever its '
        'size. Examples: set-ups, purchase orders, material handling.\n'
        '• Product-sustaining activities: support a product line, whatever '
        'the volume. Examples: product design, engineering changes, '
        'maintaining specifications.\n'
        '• Facility-sustaining activities: support the whole plant. Examples: '
        'plant management, security, building rent. These are often not '
        'assigned to products, or are assigned arbitrarily.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_cost',
    chapter: 'Activity Based Costing',
    text:
        'What is Activity Based Management? Distinguish between '
        'value-added and non-value-added activities.',
    marks: 4,
    answer:
        'Activity Based Management (ABM) uses information from ABC to '
        'manage activities, so as to reduce cost and improve value to '
        'customers.\n'
        '• Value-added activities increase the worth of the product to the '
        'customer, such as machining, assembly and design. They should be '
        'done efficiently.\n'
        '• Non-value-added activities add cost but no value, such as '
        'storage, moving materials, waiting, inspection and rework. They '
        'should be reduced or removed.\n'
        'ABM uses cost drivers to find why activities happen, and works on '
        'those causes, for example reducing set-ups by redesigning '
        'processes.',
  ),

  // Joint & By-Products
  DescriptiveQuestion(
    subjectId: 'i_cost',
    chapter: 'Joint & By-Products',
    text:
        'Joint cost is ₹1,80,000. Output at split-off: X 3,000 kg at ₹40; '
        'Y 2,000 kg at ₹60; Z 1,000 kg at ₹120. Apportion the joint cost by '
        '(a) sales value at split-off, and (b) physical units. Show the '
        'profit of each product under both methods.',
    marks: 6,
    problem: true,
    answer:
        'Sales values: X 1,20,000; Y 1,20,000; Z 1,20,000 (total '
        '3,60,000).\n'
        '(a) Sales value method (1 : 1 : 1)\n'
        '• Joint cost: X 60,000; Y 60,000; Z 60,000\n'
        '• Profit: 60,000 each (50% of sales)\n'
        '(b) Physical units (3 : 2 : 1)\n'
        '• Joint cost: X 90,000; Y 60,000; Z 30,000\n'
        '• Profit: X 30,000; Y 60,000; Z 90,000\n'
        'The physical units method makes Z look much more profitable, only '
        'because it is light. The sales value method gives a fairer picture '
        'when values differ.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_cost',
    chapter: 'Joint & By-Products',
    text:
        'Joint product M (4,000 kg) can be sold at split-off for ₹25 per '
        'kg. Further processing would cost ₹50,000 (fixed) plus ₹5 per kg, '
        'and M could then be sold for ₹40 per kg. Its share of joint cost is '
        '₹60,000. Should M be processed further?',
    marks: 4,
    problem: true,
    answer:
        'Joint cost is irrelevant, because it is incurred either way.\n'
        '• Extra revenue = (40 − 25) × 4,000 = ₹60,000\n'
        '• Extra cost = 50,000 + 5 × 4,000 = ₹70,000\n'
        '• Net effect = ₹10,000 loss\n'
        'M should be sold at the split-off point. Further processing would '
        'pay only if output exceeded 5,000 kg, where the extra ₹10 per kg '
        'margin covers the ₹50,000 fixed cost.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_cost',
    chapter: 'Joint & By-Products',
    text: 'Explain the methods of accounting for by-products.',
    marks: 5,
    answer:
        'When the by-product\'s value is small:\n'
        '• Other income method: sales are credited to the Profit and Loss '
        'Account.\n'
        '• Total cost reduction: sales are deducted from the cost of the main '
        'product.\n'
        'When the value is significant:\n'
        '• Reverse cost (NRV) method: sales value less estimated profit, '
        'selling costs and costs after split-off is credited to the main '
        'process.\n'
        '• Standard cost method: the by-product is credited at a '
        'predetermined standard value.\n'
        '• Comparative price method: credited at the price of a similar item '
        'bought from outside.\n'
        '• Re-use basis: when used within the business, credited at the '
        'value of the material it replaces.',
  ),

  // Process & Service Costing
  DescriptiveQuestion(
    subjectId: 'i_cost',
    chapter: 'Process & Service Costing',
    text:
        'Using the weighted average method: opening WIP 1,000 units '
        '(material ₹10,000, conversion ₹3,000); introduced 9,000 units '
        '(material ₹90,000, conversion ₹76,200); completed 8,000 units; '
        'closing WIP 2,000 units (100% material, 40% conversion). Value the '
        'output and closing WIP.',
    marks: 6,
    problem: true,
    answer:
        'Equivalent units\n'
        '• Material: 8,000 + 2,000 = 10,000\n'
        '• Conversion: 8,000 + 2,000 × 40% = 8,800\n'
        'Total costs (opening WIP + current)\n'
        '• Material: 10,000 + 90,000 = 1,00,000, so ₹10 per unit\n'
        '• Conversion: 3,000 + 76,200 = 79,200, so ₹9 per unit\n'
        'Valuation\n'
        '• Completed output: 8,000 × 19 = ₹1,52,000\n'
        '• Closing WIP: 2,000 × 10 + 800 × 9 = ₹27,200\n'
        'Check: 1,52,000 + 27,200 = 1,79,200 = total costs.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_cost',
    chapter: 'Process & Service Costing',
    text:
        'A 100-bed hospital has 80% occupancy in a 30-day month. Costs: '
        'doctors ₹6,00,000; nurses ₹3,00,000; food ₹2,40,000; laundry and '
        'cleaning ₹60,000. Find the cost per patient-day and the charge per '
        'day for a profit of 20% on cost.',
    marks: 4,
    problem: true,
    answer:
        '• Total cost = 6,00,000 + 3,00,000 + 2,40,000 + 60,000 = '
        '₹12,00,000\n'
        '• Patient-days = 100 × 80% × 30 = 2,400\n'
        '• Cost per patient-day = 12,00,000 ÷ 2,400 = ₹500\n'
        '• Charge with 20% profit on cost = 500 × 1.20 = ₹600 per day\n'
        'Separating fixed and variable costs would show how cost per day '
        'changes with occupancy.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_cost',
    chapter: 'Process & Service Costing',
    text:
        'Distinguish between the FIFO and weighted average methods of '
        'process costing.',
    marks: 4,
    answer:
        '• Opening WIP: FIFO assumes opening WIP is completed first and '
        'keeps its cost separate; weighted average merges it with current '
        'production.\n'
        '• Equivalent units: FIFO counts only work done in the current '
        'period; weighted average counts all units completed plus closing '
        'WIP.\n'
        '• Cost per unit: FIFO uses current costs only; weighted average '
        'uses opening plus current costs.\n'
        '• Usefulness: FIFO shows current period efficiency better; weighted '
        'average is simpler and smooths price changes.\n'
        'Results differ only when there is opening WIP and costs change '
        'between periods.',
  ),

  // Standard Costing
  DescriptiveQuestion(
    subjectId: 'i_cost',
    chapter: 'Standard Costing',
    text:
        'Standard for 100 units: skilled 60 hours at ₹50, unskilled 40 '
        'hours at ₹30. Actual for 100 units: skilled 50 hours at ₹52, '
        'unskilled 60 hours at ₹30. Calculate labour cost, rate, efficiency, '
        'mix and yield (sub-efficiency) variances.',
    marks: 8,
    problem: true,
    answer:
        'Standard cost = 3,000 + 1,200 = 4,200; actual cost = 2,600 + '
        '1,800 = 4,400\n'
        '• Cost variance = ₹200 (A)\n'
        '• Rate variance = AH × (SR − AR): skilled 50 × (−2) = 100 A; '
        'unskilled nil; total ₹100 (A)\n'
        '• Efficiency variance = SR × (SH − AH): skilled 50 × 10 = 500 F; '
        'unskilled 30 × (−20) = 600 A; total ₹100 (A)\n'
        'Revised standard hours (110 actual hours in 60 : 40) = skilled 66, '
        'unskilled 44\n'
        '• Mix variance = SR × (RSH − AH): skilled 50 × 16 = 800 F; '
        'unskilled 30 × (−16) = 480 A; total ₹320 (F)\n'
        '• Yield variance = SR × (SH − RSH): skilled 50 × (−6) = 300 A; '
        'unskilled 30 × (−4) = 120 A; total ₹420 (A)\n'
        'Checks: 320 F + 420 A = 100 A (efficiency); 100 A + 100 A = 200 A.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_cost',
    chapter: 'Standard Costing',
    text:
        'Budget: product A 600 units at standard profit ₹5, product B 400 '
        'units at ₹10. Actual: A 500 units, B 600 units. Calculate the sales '
        'volume, mix and quantity variances (profit basis).',
    marks: 6,
    problem: true,
    answer:
        '• Budgeted profit = 600 × 5 + 400 × 10 = 7,000\n'
        '• Actual quantity at standard profit = 500 × 5 + 600 × 10 = 8,500\n'
        '• Revised (actual total 1,100 in budget mix 60 : 40): A 660, B 440 → '
        '660 × 5 + 440 × 10 = 7,700\n'
        '• Sales volume variance = 8,500 − 7,000 = ₹1,500 (F)\n'
        '• Mix variance = 8,500 − 7,700 = ₹800 (F), because more of the '
        'higher-profit product B was sold\n'
        '• Quantity variance = 7,700 − 7,000 = ₹700 (F), because total units '
        'rose by 100\n'
        'Check: 800 F + 700 F = 1,500 F.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_cost',
    chapter: 'Standard Costing',
    text:
        'Why must variances be investigated together, and how is '
        'responsibility for them decided?',
    marks: 4,
    answer:
        'Variances are often linked:\n'
        '• Cheaper material gives a favourable price variance but may cause '
        'adverse usage and labour efficiency variances.\n'
        '• Using less skilled workers saves on rates but may lower '
        'efficiency.\n'
        '• An adverse volume variance may result from poor sales, not '
        'production problems.\n'
        'Responsibility:\n'
        '• Price variances: usually the purchase manager.\n'
        '• Usage and efficiency variances: the production manager.\n'
        '• Sales variances: the sales manager.\n'
        'Managers should be held responsible only for variances they can '
        'control. Uncontrollable ones, such as a change in wage agreements, '
        'should be separated.',
  ),

  // Reconciliation & Integrated Accounts
  DescriptiveQuestion(
    subjectId: 'i_cost',
    chapter: 'Reconciliation & Integrated Accounts',
    text:
        'Profit as per financial accounts is ₹2,00,000. Find the costing '
        'profit: income-tax ₹40,000 debited in financial accounts; interest '
        'received ₹8,000 (financial only); depreciation ₹30,000 in financial '
        'and ₹25,000 in cost accounts; overheads over-absorbed in cost '
        'accounts ₹6,000; opening stock ₹50,000 in cost and ₹55,000 in '
        'financial; closing stock ₹60,000 in cost and ₹58,000 in financial.',
    marks: 8,
    problem: true,
    answer:
        'Profit as per financial accounts: 2,00,000\n'
        '• Add income-tax (financial only): 40,000\n'
        '• Less interest received (financial only): (8,000)\n'
        '• Add excess depreciation in financial accounts: 5,000\n'
        '• Less overheads over-absorbed in cost accounts: (6,000)\n'
        '• Add opening stock lower in cost accounts (cost of sales lower): '
        '5,000\n'
        '• Add closing stock higher in cost accounts: 2,000\n'
        'Profit as per cost accounts: ₹2,38,000\n'
        'Rule: items that make costing profit higher than financial profit '
        'are added when starting from financial profit.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_cost',
    chapter: 'Reconciliation & Integrated Accounts',
    text:
        'Under a non-integrated system, pass entries in the cost ledger: '
        '(a) materials bought on credit ₹40,000; (b) wages paid ₹25,000; (c) '
        'materials issued to production ₹30,000; (d) production overheads '
        'incurred ₹15,000; (e) finished goods of ₹60,000 transferred from '
        'WIP; (f) sales ₹90,000.',
    marks: 6,
    problem: true,
    answer:
        '(a) Stores Ledger Control A/c Dr 40,000 To Cost Ledger Control '
        'A/c 40,000\n'
        '(b) Wages Control A/c Dr 25,000 To Cost Ledger Control A/c 25,000\n'
        '(c) WIP Control A/c Dr 30,000 To Stores Ledger Control A/c 30,000\n'
        '(d) Production Overhead Control A/c Dr 15,000 To Cost Ledger '
        'Control A/c 15,000\n'
        '(e) Finished Goods Control A/c Dr 60,000 To WIP Control A/c 60,000\n'
        '(f) Cost Ledger Control A/c Dr 90,000 To Costing Profit & Loss A/c '
        '90,000\n'
        'The Cost Ledger Control Account stands in for all accounts kept '
        'only in the financial ledger, such as creditors, bank and debtors.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_cost',
    chapter: 'Reconciliation & Integrated Accounts',
    text:
        'What are integrated accounts? State their advantages and the '
        'requirements for introducing them.',
    marks: 4,
    answer:
        'Integrated accounts are a single set of books that records both '
        'cost and financial information, so there is no separate cost '
        'ledger.\n'
        'Advantages:\n'
        '• No need to reconcile cost and financial profit.\n'
        '• Less duplication of work and lower bookkeeping cost.\n'
        '• Faster, consistent information for management.\n'
        'Requirements:\n'
        '• Decide the extent of integration, such as up to prime cost or '
        'full integration.\n'
        '• A suitable coding system for accounts.\n'
        '• Agreed bases for overhead absorption and stock valuation.\n'
        '• Coordination between the cost and finance teams.',
  ),

  // Uniform Costing & Inter-firm Comparison
  DescriptiveQuestion(
    subjectId: 'i_cost',
    chapter: 'Uniform Costing & Inter-firm Comparison',
    text: 'What are the requisites for the success of uniform costing?',
    marks: 4,
    answer:
        '• Willingness of member firms to cooperate and share '
        'information.\n'
        '• A common system of cost classification, terminology and coding.\n'
        '• Agreed methods for valuing materials and stock, absorbing '
        'overheads, charging depreciation and treating special items.\n'
        '• A uniform cost manual setting out these rules.\n'
        '• A central body, such as a trade association, to guide members and '
        'keep information confidential.\n'
        '• Similar products and processes among members.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_cost',
    chapter: 'Uniform Costing & Inter-firm Comparison',
    text:
        'In an inter-firm comparison: firm A has sales ₹50 lakh, operating '
        'profit ₹5 lakh and capital employed ₹25 lakh; firm B ₹80 lakh, ₹6.4 '
        'lakh and ₹32 lakh; firm C ₹40 lakh, ₹4.8 lakh and ₹30 lakh. Compare '
        'their performance using the pyramid of ratios.',
    marks: 6,
    problem: true,
    answer:
        'Primary ratio: ROCE = Profit ÷ Capital employed\n'
        '• A 20%; B 20%; C 16%\n'
        'Secondary ratios:\n'
        '• Profit margin: A 10%; B 8%; C 12%\n'
        '• Asset turnover: A 2 times; B 2.5 times; C 1.33 times\n'
        'Check: A 10% × 2 = 20%; B 8% × 2.5 = 20%; C 12% × 1.33 = 16%.\n'
        'Interpretation:\n'
        '• A and B earn the same return in different ways: A through better '
        'margins, B through higher turnover.\n'
        '• C has the best margin but uses its capital poorly. It should look '
        'at idle assets, stock levels and debtors to raise turnover.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_cost',
    chapter: 'Uniform Costing & Inter-firm Comparison',
    text: 'What are the limitations of uniform costing?',
    marks: 4,
    answer:
        '• Firms differ in size, age, technology, location and '
        'organisation, so one system may not suit all.\n'
        '• Small firms may find the system costly or too complex.\n'
        '• Firms may not want to disclose information to a central body.\n'
        '• Common methods may hide differences that matter to individual '
        'firms.\n'
        '• It may encourage price fixing among members, which can harm '
        'competition and consumers.\n'
        '• Keeping the system up to date needs continuing effort.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_cost',
    chapter: 'Uniform Costing & Inter-firm Comparison',
    text:
        'What is benchmarking? How does inter-firm comparison help in '
        'benchmarking?',
    marks: 4,
    answer:
        'Benchmarking is comparing a firm\'s processes and performance '
        'with the best in the industry, or with leaders in other '
        'industries, and adopting better practices.\n'
        'Types: internal (between units of the same firm), competitive '
        '(against rivals), functional (against best-in-class for a '
        'function) and generic.\n'
        'How inter-firm comparison helps:\n'
        '• It provides reliable ratios from many firms, prepared on the same '
        'basis.\n'
        '• It shows where a firm lags, such as material cost, labour '
        'productivity or stock turnover.\n'
        '• It sets realistic targets based on what others achieve.\n'
        '• Coded reporting lets firms compare without revealing identities.',
  ),
];
