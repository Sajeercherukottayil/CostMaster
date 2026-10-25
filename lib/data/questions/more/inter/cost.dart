import '../../../../models/question.dart';

const interCostMoreQuestions = [
  // Cost Accounting Standards
  Question(
    subjectId: 'i_cost',
    chapter: 'Cost Accounting Standards',
    text: 'CAS-7 deals with:',
    options: [
      'Employee cost',
      'Material cost',
      'Joint costs',
      'Pollution control costs',
    ],
    answerIndex: 0,
    explanation:
        'CAS-7 covers measurement and assignment of employee cost, '
        'including wages, benefits and bonus.',
  ),
  Question(
    subjectId: 'i_cost',
    chapter: 'Cost Accounting Standards',
    text: 'CAS-13 deals with:',
    options: [
      'Cost of service cost centre',
      'Selling and distribution overheads',
      'Royalty and technical know-how fee',
      'Quality control',
    ],
    answerIndex: 0,
    explanation:
        'CAS-13 covers costs of service centres such as power plants, '
        'workshops and stores, and their assignment to users.',
  ),
  Question(
    subjectId: 'i_cost',
    chapter: 'Cost Accounting Standards',
    text: 'CAS-14 deals with:',
    options: [
      'Pollution control costs',
      'Depreciation and amortisation',
      'Research and development costs',
      'Interest and financing charges',
    ],
    answerIndex: 0,
    explanation:
        'CAS-14 covers costs of preventing, treating and disposing '
        'of pollution.',
  ),
  Question(
    subjectId: 'i_cost',
    chapter: 'Cost Accounting Standards',
    text: 'CAS-15 deals with:',
    options: [
      'Selling and distribution overheads',
      'Administrative overheads',
      'Direct expenses',
      'Packing material cost',
    ],
    answerIndex: 0,
    explanation:
        'CAS-15 covers costs of selling products and distributing '
        'them to customers.',
  ),
  Question(
    subjectId: 'i_cost',
    chapter: 'Cost Accounting Standards',
    text: 'CAS-16 deals with:',
    options: [
      'Depreciation and amortisation',
      'Joint costs',
      'Manufacturing cost',
      'Cost of utilities',
    ],
    answerIndex: 0,
    explanation:
        'CAS-16 sets out how depreciation and amortisation are '
        'measured and assigned in cost statements.',
  ),
  Question(
    subjectId: 'i_cost',
    chapter: 'Cost Accounting Standards',
    text: 'CAS-17 deals with:',
    options: [
      'Interest and financing charges',
      'Repairs and maintenance cost',
      'Treatment of revenue in cost statements',
      'Overburden removal cost',
    ],
    answerIndex: 0,
    explanation:
        'Under CAS-17, interest and financing charges are generally '
        'not part of product cost, except where capitalised.',
  ),
  Question(
    subjectId: 'i_cost',
    chapter: 'Cost Accounting Standards',
    text: 'CAS-18 deals with:',
    options: [
      'Research and development costs',
      'Quality control',
      'Royalty and technical know-how fee',
      'Average cost of transportation',
    ],
    answerIndex: 0,
    explanation:
        'CAS-18 covers R&D costs and their treatment in cost '
        'statements.',
  ),
  Question(
    subjectId: 'i_cost',
    chapter: 'Cost Accounting Standards',
    text: 'CAS-19 deals with:',
    options: [
      'Joint costs',
      'Employee cost',
      'Material cost',
      'Capacity determination',
    ],
    answerIndex: 0,
    explanation:
        'CAS-19 covers joint costs and their apportionment to joint '
        'products and by-products.',
  ),
  Question(
    subjectId: 'i_cost',
    chapter: 'Cost Accounting Standards',
    text: 'CAS-20 deals with:',
    options: [
      'Royalty and technical know-how fee',
      'Pollution control costs',
      'Selling overheads',
      'Direct expenses',
    ],
    answerIndex: 0,
    explanation:
        'CAS-20 covers royalties and know-how fees paid for using '
        'intellectual property in production.',
  ),
  Question(
    subjectId: 'i_cost',
    chapter: 'Cost Accounting Standards',
    text: 'CAS-21 deals with:',
    options: [
      'Quality control',
      'Manufacturing cost',
      'Overburden removal cost',
      'Interest and financing charges',
    ],
    answerIndex: 0,
    explanation:
        'CAS-21 covers costs of quality control activities, such as '
        'inspection and testing.',
  ),

  // Material & Employee Cost
  Question(
    subjectId: 'i_cost',
    chapter: 'Material & Employee Cost',
    text: 'In ABC inventory analysis, "A" items typically make up about:',
    options: [
      '70% of items and 10% of value',
      '10% of items and 70% of value',
      '50% of items and 50% of value',
      '20% of items and 20% of value',
    ],
    answerIndex: 1,
    explanation:
        'A small number of high-value items need the closest '
        'control. C items are many but low in value.',
  ),
  Question(
    subjectId: 'i_cost',
    chapter: 'Material & Employee Cost',
    text:
        'Lead time usage is 600 units and safety stock is 200 units. The '
        're-order level is:',
    options: ['400 units', '600 units', '800 units', '1,200 units'],
    answerIndex: 2,
    explanation:
        'Re-order level = Lead time usage + Safety stock = 600 + 200 '
        '= 800 units.',
  ),
  Question(
    subjectId: 'i_cost',
    chapter: 'Material & Employee Cost',
    text:
        'Residue from production that has a small recoverable value, '
        'without further processing, is:',
    options: ['Waste', 'Scrap', 'Spoilage', 'Defectives'],
    answerIndex: 1,
    explanation:
        'Scrap is sold as it is, and its value is credited to the job '
        'or process. Waste has no value.',
  ),
  Question(
    subjectId: 'i_cost',
    chapter: 'Material & Employee Cost',
    text: 'The cost of rectifying normal defectives is usually:',
    options: [
      'Charged to Costing Profit & Loss',
      'Charged to production overheads or the specific job',
      'Ignored',
      'Deducted from sales',
    ],
    answerIndex: 1,
    explanation:
        'Normal rectification is a cost of production. If caused by a '
        'specific job\'s requirements, it is charged to that job; abnormal '
        'rectification goes to Costing P&L.',
  ),
  Question(
    subjectId: 'i_cost',
    chapter: 'Material & Employee Cost',
    text:
        'Holiday pay and paid leave of production workers are generally '
        'treated by:',
    options: [
      'Charging them to Costing Profit & Loss',
      'Inflating the hourly wage rate or charging them to overheads',
      'Ignoring them',
      'Deducting them from wages',
    ],
    answerIndex: 1,
    explanation:
        'They are normal employee costs, so they are spread over '
        'productive hours or treated as production overhead.',
  ),
  Question(
    subjectId: 'i_cost',
    chapter: 'Material & Employee Cost',
    text:
        'Under the Rowan plan, the bonus as a percentage of time-rate '
        'earnings equals:',
    options: [
      'Time saved ÷ Time allowed',
      'Time saved ÷ Time taken',
      '50% always',
      'Time taken ÷ Time allowed',
    ],
    answerIndex: 0,
    explanation:
        'Bonus = (Time saved ÷ Time allowed) × Time taken × Rate. So '
        'the bonus fraction can never reach 100%.',
  ),
  Question(
    subjectId: 'i_cost',
    chapter: 'Material & Employee Cost',
    text:
        'Under the Emerson efficiency plan, a bonus starts when a '
        'worker\'s efficiency exceeds about:',
    options: ['50%', '66⅔%', '90%', '100%'],
    answerIndex: 1,
    explanation:
        'The bonus rises gradually from 66⅔% efficiency, reaches 20% '
        'at 100%, and then increases by 1% for each 1% rise in efficiency.',
  ),
  Question(
    subjectId: 'i_cost',
    chapter: 'Material & Employee Cost',
    text: 'Under CAS-7, which of these is NOT part of employee cost?',
    options: [
      'Employer\'s PF contribution',
      'Bonus',
      'Imputed cost (such as notional salary of the owner)',
      'Gratuity',
    ],
    answerIndex: 2,
    explanation:
        'CAS-7 excludes imputed costs. Actual benefits paid or '
        'payable, including retirement benefits, are included.',
  ),
  Question(
    subjectId: 'i_cost',
    chapter: 'Material & Employee Cost',
    text:
        'Costs of measures to reduce labour turnover, such as welfare '
        'schemes, are known as:',
    options: [
      'Replacement costs',
      'Preventive costs',
      'Sunk costs',
      'Direct costs',
    ],
    answerIndex: 1,
    explanation:
        'Preventive costs are usually charged to production '
        'overheads, spread over departments by number of employees.',
  ),
  Question(
    subjectId: 'i_cost',
    chapter: 'Material & Employee Cost',
    text: 'Spoilage is:',
    options: [
      'Material lost without any value',
      'Production damaged so that it cannot be rectified economically',
      'Residue with small value',
      'Units that can be rectified',
    ],
    answerIndex: 1,
    explanation:
        'Spoiled units are taken out of production and sold as they '
        'are. Normal spoilage is part of cost; abnormal spoilage goes to '
        'Costing P&L.',
  ),

  // Activity Based Costing
  Question(
    subjectId: 'i_cost',
    chapter: 'Activity Based Costing',
    text: 'Machine power used for each unit produced is an example of a:',
    options: [
      'Unit-level activity',
      'Batch-level activity',
      'Product-level activity',
      'Facility-level activity',
    ],
    answerIndex: 0,
    explanation:
        'Unit-level costs rise with every unit made, such as power '
        'and direct machining.',
  ),
  Question(
    subjectId: 'i_cost',
    chapter: 'Activity Based Costing',
    text: 'Material handling for each production run is a:',
    options: [
      'Unit-level activity',
      'Batch-level activity',
      'Product-level activity',
      'Facility-level activity',
    ],
    answerIndex: 1,
    explanation:
        'The cost depends on the number of batches, not the number of '
        'units in each batch.',
  ),
  Question(
    subjectId: 'i_cost',
    chapter: 'Activity Based Costing',
    text: 'Factory security is an example of a:',
    options: [
      'Unit-level activity',
      'Batch-level activity',
      'Product-level activity',
      'Facility-level activity',
    ],
    answerIndex: 3,
    explanation:
        'Facility-level costs support the whole plant, and have no '
        'clear cause-and-effect link with any product.',
  ),
  Question(
    subjectId: 'i_cost',
    chapter: 'Activity Based Costing',
    text:
        'Material handling costs are ₹80,000 for 400 material moves. The '
        'cost driver rate is:',
    options: ['₹20 per move', '₹200 per move', '₹2,000 per move', '₹320'],
    answerIndex: 1,
    explanation: 'Rate = 80,000 ÷ 400 = ₹200 per move.',
  ),
  Question(
    subjectId: 'i_cost',
    chapter: 'Activity Based Costing',
    text:
        'Purchasing costs are ₹1,00,000 for 500 purchase orders. A product '
        'needs 25 orders. Purchasing cost charged to it under ABC is:',
    options: ['₹2,500', '₹5,000', '₹25,000', '₹200'],
    answerIndex: 1,
    explanation: 'Rate = ₹200 per order. Charge = 25 × 200 = ₹5,000.',
  ),
  Question(
    subjectId: 'i_cost',
    chapter: 'Activity Based Costing',
    text: 'Compared with ABC, traditional volume-based absorption usually:',
    options: [
      'Over-costs low-volume products',
      'Over-costs high-volume, simple products and under-costs low-volume, '
          'complex ones',
      'Gives the same result',
      'Ignores direct costs',
    ],
    answerIndex: 1,
    explanation:
        'Low-volume products cause many set-ups and orders, which a '
        'volume-based rate does not capture.',
  ),
  Question(
    subjectId: 'i_cost',
    chapter: 'Activity Based Costing',
    text: 'Activity Based Management (ABM) uses ABC information mainly to:',
    options: [
      'Prepare financial statements',
      'Improve processes and remove non-value-added activities',
      'Calculate tax',
      'Value inventory for audit',
    ],
    answerIndex: 1,
    explanation:
        'ABM focuses on managing activities to reduce cost and '
        'increase customer value.',
  ),
  Question(
    subjectId: 'i_cost',
    chapter: 'Activity Based Costing',
    text: 'Which is generally a non-value-added activity?',
    options: [
      'Assembling the product',
      'Moving materials between stores and machines',
      'Painting the finished product',
      'Designing the product',
    ],
    answerIndex: 1,
    explanation:
        'Moving, storing and waiting add cost without adding value '
        'the customer will pay for.',
  ),
  Question(
    subjectId: 'i_cost',
    chapter: 'Activity Based Costing',
    text: 'The four levels of the ABC cost hierarchy are:',
    options: [
      'Direct, indirect, fixed and variable',
      'Unit, batch, product-sustaining and facility-sustaining',
      'Material, labour, overhead and profit',
      'Planning, organising, directing and controlling',
    ],
    answerIndex: 1,
    explanation: 'The hierarchy groups activities by what causes their cost.',
  ),
  Question(
    subjectId: 'i_cost',
    chapter: 'Activity Based Costing',
    text: 'ABC gives the biggest improvement in cost accuracy when:',
    options: [
      'Overheads are small',
      'Overheads are large and products use activities very differently',
      'Only one product is made',
      'All costs are direct',
    ],
    answerIndex: 1,
    explanation:
        'With one product, or low overheads, a simple rate gives '
        'similar results at lower cost.',
  ),

  // Joint & By-Products
  Question(
    subjectId: 'i_cost',
    chapter: 'Joint & By-Products',
    text:
        'A drawback of the physical units method of apportioning joint '
        'costs is that it:',
    options: [
      'Needs market prices',
      'Ignores the market value of the products',
      'Is too complex',
      'Cannot be used for liquids',
    ],
    answerIndex: 1,
    explanation:
        'A high-value product and a low-value one get the same cost '
        'per kg, which can show one as very profitable and the other as '
        'loss-making.',
  ),
  Question(
    subjectId: 'i_cost',
    chapter: 'Joint & By-Products',
    text:
        'Apportioning joint costs using weights based on technical '
        'estimates of each product\'s importance is the:',
    options: [
      'Physical units method',
      'Survey (points) method',
      'Sales value method',
      'Reverse cost method',
    ],
    answerIndex: 1,
    explanation:
        'Points are assigned to products after a survey of factors '
        'such as quality, labour and market value.',
  ),
  Question(
    subjectId: 'i_cost',
    chapter: 'Joint & By-Products',
    text:
        'Joint cost is ₹1,00,000. NRVs are ₹1,20,000 for A and ₹80,000 for '
        'B. The joint cost apportioned to B is:',
    options: ['₹50,000', '₹40,000', '₹60,000', '₹80,000'],
    answerIndex: 1,
    explanation: 'B\'s share = 1,00,000 × 80,000 ÷ 2,00,000 = ₹40,000.',
  ),
  Question(
    subjectId: 'i_cost',
    chapter: 'Joint & By-Products',
    text:
        'Further processing adds ₹12 per kg to revenue and costs ₹15 per kg. '
        'The product should be:',
    options: [
      'Processed further',
      'Sold at the split-off point',
      'Discontinued',
      'Treated as a by-product',
    ],
    answerIndex: 1,
    explanation:
        'Incremental cost exceeds incremental revenue by ₹3 per kg, so '
        'it is better to sell at split-off.',
  ),
  Question(
    subjectId: 'i_cost',
    chapter: 'Joint & By-Products',
    text:
        'Joint costs are relevant to the decision to process a joint '
        'product further:',
    options: [
      'Always',
      'Never, since they are incurred whichever option is chosen',
      'Only when prices fall',
      'Only for by-products',
    ],
    answerIndex: 1,
    explanation:
        'Only the extra revenue and extra cost after split-off '
        'matter.',
  ),
  Question(
    subjectId: 'i_cost',
    chapter: 'Joint & By-Products',
    text:
        'The constant gross margin percentage method apportions joint '
        'costs so that:',
    options: [
      'Each product has the same gross margin percentage',
      'Each product has the same physical cost',
      'By-products get no cost',
      'All products are sold at cost',
    ],
    answerIndex: 0,
    explanation:
        'The overall gross margin is applied to each product\'s final '
        'sales value, and separable costs are deducted to find its share.',
  ),
  Question(
    subjectId: 'i_cost',
    chapter: 'Joint & By-Products',
    text:
        'Under the standard cost method for by-products, the by-product is '
        'credited to the main process at:',
    options: [
      'Its selling price',
      'A predetermined standard rate',
      'Nil',
      'Its scrap value',
    ],
    answerIndex: 1,
    explanation:
        'Using a standard rate keeps the main product\'s cost stable '
        'despite fluctuating by-product prices.',
  ),
  Question(
    subjectId: 'i_cost',
    chapter: 'Joint & By-Products',
    text:
        'Petrol, diesel and kerosene obtained from refining crude oil are '
        'examples of:',
    options: ['By-products', 'Joint products', 'Scrap', 'Waste'],
    answerIndex: 1,
    explanation:
        'They come from the same process and raw material, and each '
        'has significant value.',
  ),
  Question(
    subjectId: 'i_cost',
    chapter: 'Joint & By-Products',
    text:
        'Treating by-product sales as "other income" in the Profit and '
        'Loss Account is suitable when the by-product:',
    options: [
      'Has high value',
      'Has small value',
      'Needs further processing',
      'Is a joint product',
    ],
    answerIndex: 1,
    explanation:
        'For small amounts, the simple method is acceptable. It does '
        'not reduce the main product\'s cost.',
  ),
  Question(
    subjectId: 'i_cost',
    chapter: 'Joint & By-Products',
    text:
        'The average unit cost method of apportioning joint costs '
        'assumes that:',
    options: [
      'All units cost the same, whatever the product',
      'Higher-value products cost more',
      'By-products are free',
      'Costs follow sales value',
    ],
    answerIndex: 0,
    explanation:
        'Total joint cost is divided by total units. It works only '
        'when products are measured in the same units and are similar.',
  ),

  // Process & Service Costing
  Question(
    subjectId: 'i_cost',
    chapter: 'Process & Service Costing',
    text:
        'Under the weighted average method, 9,000 units are completed and '
        '1,000 units are in closing WIP, 60% complete for conversion. '
        'Equivalent units for conversion are:',
    options: ['9,000', '9,600', '10,000', '8,400'],
    answerIndex: 1,
    explanation:
        'Equivalent units = 9,000 + 1,000 × 60% = 9,600. Under the '
        'weighted average method, opening WIP is not separated.',
  ),
  Question(
    subjectId: 'i_cost',
    chapter: 'Process & Service Costing',
    text:
        'A hospital has 100 beds, 80% occupancy and a 30-day month. Costs '
        'for the month are ₹12,00,000. Cost per patient-day is:',
    options: ['₹400', '₹500', '₹600', '₹120'],
    answerIndex: 1,
    explanation:
        'Patient-days = 100 × 80% × 30 = 2,400. Cost = 12,00,000 ÷ '
        '2,400 = ₹500.',
  ),
  Question(
    subjectId: 'i_cost',
    chapter: 'Process & Service Costing',
    text:
        'A truck carries 10 tonnes for 50 km and then 6 tonnes for a '
        'further 30 km. Commercial tonne-km are:',
    options: ['680', '640', '800', '480'],
    answerIndex: 1,
    explanation:
        'Commercial tonne-km = average load × total distance = '
        '(10 + 6) ÷ 2 × 80 = 640. Absolute tonne-km would be 500 + 180 = '
        '680.',
  ),
  Question(
    subjectId: 'i_cost',
    chapter: 'Process & Service Costing',
    text:
        'The balance in the Abnormal Loss Account, after crediting scrap '
        'value, is transferred to:',
    options: [
      'The next process',
      'Costing Profit & Loss Account',
      'Finished goods',
      'Normal loss account',
    ],
    answerIndex: 1,
    explanation:
        'Abnormal losses are not part of product cost, so they are '
        'written off.',
  ),
  Question(
    subjectId: 'i_cost',
    chapter: 'Process & Service Costing',
    text: 'Normal loss units in process costing are valued at:',
    options: [
      'Full cost per unit',
      'Their scrap value only',
      'Nil always',
      'Market price of good units',
    ],
    answerIndex: 1,
    explanation:
        'The cost of normal loss is absorbed by good units. Only its '
        'scrap value, if any, is credited.',
  ),
  Question(
    subjectId: 'i_cost',
    chapter: 'Process & Service Costing',
    text:
        'The weighted average method of process costing differs from FIFO '
        'because it:',
    options: [
      'Ignores opening WIP',
      'Combines opening WIP cost with current costs before finding cost per '
          'unit',
      'Values closing WIP at market price',
      'Is used only for services',
    ],
    answerIndex: 1,
    explanation:
        'FIFO keeps opening WIP costs separate and uses only current '
        'period costs for the cost per equivalent unit.',
  ),
  Question(
    subjectId: 'i_cost',
    chapter: 'Process & Service Costing',
    text: 'A power house measures its output and cost per:',
    options: ['Tonne-km', 'Kilowatt-hour', 'Patient-day', 'Room-day'],
    answerIndex: 1,
    explanation:
        'Electricity is measured in kWh, so cost is expressed per kWh '
        'generated or supplied.',
  ),
  Question(
    subjectId: 'i_cost',
    chapter: 'Process & Service Costing',
    text: 'The most suitable cost unit for a school is:',
    options: ['Per student per year', 'Per tonne', 'Per kWh', 'Per bed-day'],
    answerIndex: 0,
    explanation:
        'Cost per student (per year or per term) is the usual measure '
        'for educational institutions.',
  ),
  Question(
    subjectId: 'i_cost',
    chapter: 'Process & Service Costing',
    text:
        'In a transport company, depreciation of vehicles and garage rent '
        'are usually classified as:',
    options: [
      'Running charges',
      'Standing (fixed) charges',
      'Maintenance charges',
      'Direct materials',
    ],
    answerIndex: 1,
    explanation:
        'Operating cost sheets group costs into standing charges, '
        'maintenance charges and running charges (such as fuel).',
  ),
  Question(
    subjectId: 'i_cost',
    chapter: 'Process & Service Costing',
    text:
        'Opening WIP of 500 units is 40% complete. Under FIFO, the '
        'equivalent units of conversion needed to complete it are:',
    options: ['200', '300', '500', '700'],
    answerIndex: 1,
    explanation: 'Work remaining = 500 × (100% − 40%) = 300 equivalent units.',
  ),

  // Standard Costing
  Question(
    subjectId: 'i_cost',
    chapter: 'Standard Costing',
    text: 'A labour mix (gang) variance arises when:',
    options: [
      'Wage rates change',
      'The actual mix of grades of workers differs from the standard mix',
      'Output falls',
      'Workers are idle',
    ],
    answerIndex: 1,
    explanation:
        'Using more highly paid workers than the standard mix gives '
        'an adverse mix variance.',
  ),
  Question(
    subjectId: 'i_cost',
    chapter: 'Standard Costing',
    text: 'A sales mix variance arises when:',
    options: [
      'Selling prices change',
      'The proportions of products sold differ from the budgeted proportions',
      'Total units sold equal the budget',
      'Costs change',
    ],
    answerIndex: 1,
    explanation:
        'Selling more of high-margin products than budgeted gives a '
        'favourable mix variance.',
  ),
  Question(
    subjectId: 'i_cost',
    chapter: 'Standard Costing',
    text:
        'The standard fixed overhead rate is ₹5 per hour. Budgeted hours '
        'are 10,000 and actual hours 9,000. The fixed overhead capacity '
        'variance is:',
    options: ['₹5,000 (F)', '₹5,000 (A)', '₹45,000 (A)', '₹50,000 (A)'],
    answerIndex: 1,
    explanation:
        'Capacity variance = SR × (AH − BH) = 5 × (9,000 − 10,000) = '
        '₹5,000 (A).',
  ),
  Question(
    subjectId: 'i_cost',
    chapter: 'Standard Costing',
    text:
        'The standard fixed overhead rate is ₹5 per hour. Standard hours '
        'for actual output are 9,500 and actual hours 9,000. The fixed '
        'overhead efficiency variance is:',
    options: ['₹2,500 (F)', '₹2,500 (A)', '₹500 (F)', 'Nil'],
    answerIndex: 0,
    explanation: 'Efficiency variance = SR × (SH − AH) = 5 × 500 = ₹2,500 (F).',
  ),
  Question(
    subjectId: 'i_cost',
    chapter: 'Standard Costing',
    text:
        'A variance caused by the number of working days in a period '
        'differing from the budget is a:',
    options: [
      'Calendar variance',
      'Revision variance',
      'Mix variance',
      'Price variance',
    ],
    answerIndex: 0,
    explanation:
        'It is part of the fixed overhead volume variance, due to more '
        'or fewer working days than planned.',
  ),
  Question(
    subjectId: 'i_cost',
    chapter: 'Standard Costing',
    text: 'A revision variance arises when:',
    options: [
      'Standards are revised during the period but the accounts use the old '
          'standards',
      'Workers are idle',
      'Prices of output change',
      'Budgets are prepared',
    ],
    answerIndex: 0,
    explanation:
        'It separates the effect of changing the standard from '
        'operational performance.',
  ),
  Question(
    subjectId: 'i_cost',
    chapter: 'Standard Costing',
    text:
        'Budgeted sales are 1,000 units and actual 1,200 units, at a '
        'standard price of ₹50. The sales volume (revenue) variance is:',
    options: ['₹10,000 (F)', '₹10,000 (A)', '₹2,000 (F)', '₹60,000 (F)'],
    answerIndex: 0,
    explanation: 'Volume variance = SP × (AQ − BQ) = 50 × 200 = ₹10,000 (F).',
  ),
  Question(
    subjectId: 'i_cost',
    chapter: 'Standard Costing',
    text:
        'If the material price variance is calculated when materials are '
        'purchased, stores are carried at:',
    options: [
      'Actual cost',
      'Standard cost',
      'Market value',
      'Replacement cost',
    ],
    answerIndex: 1,
    explanation:
        'Isolating the variance at purchase lets all later issues and '
        'stock be valued at standard.',
  ),
  Question(
    subjectId: 'i_cost',
    chapter: 'Standard Costing',
    text:
        'The labour efficiency variance is usually the responsibility of '
        'the:',
    options: [
      'Purchase manager',
      'Production manager or supervisor',
      'Sales manager',
      'Finance manager',
    ],
    answerIndex: 1,
    explanation:
        'The production department controls how efficiently workers '
        'use their time. Rate variances often depend on wage agreements.',
  ),
  Question(
    subjectId: 'i_cost',
    chapter: 'Standard Costing',
    text:
        'Buying cheaper, poor-quality material may give a favourable price '
        'variance and:',
    options: [
      'A favourable usage variance',
      'An adverse usage variance due to more wastage',
      'No other effect',
      'A favourable sales variance',
    ],
    answerIndex: 1,
    explanation:
        'Variances are often interdependent, so they should be '
        'investigated together.',
  ),

  // Reconciliation & Integrated Accounts
  Question(
    subjectId: 'i_cost',
    chapter: 'Reconciliation & Integrated Accounts',
    text:
        'In a non-integrated system, the Cost Ledger Control Account in the '
        'cost ledger represents:',
    options: [
      'Cash at bank',
      'All items kept in the financial ledger, such as creditors and cash',
      'Finished goods',
      'Profit',
    ],
    answerIndex: 1,
    explanation:
        'It completes the double entry in the cost ledger for '
        'transactions with outsiders.',
  ),
  Question(
    subjectId: 'i_cost',
    chapter: 'Reconciliation & Integrated Accounts',
    text:
        'In a non-integrated system, materials bought on credit are '
        'recorded in the cost ledger as:',
    options: [
      'Stores Ledger Control A/c Dr To Creditors A/c',
      'Stores Ledger Control A/c Dr To Cost Ledger Control A/c',
      'Cost Ledger Control A/c Dr To Stores Ledger Control A/c',
      'WIP Control A/c Dr To Bank A/c',
    ],
    answerIndex: 1,
    explanation:
        'Creditors are not kept in the cost ledger, so the Cost Ledger '
        'Control Account is credited instead.',
  ),
  Question(
    subjectId: 'i_cost',
    chapter: 'Reconciliation & Integrated Accounts',
    text:
        'Depreciation is ₹30,000 in financial accounts and ₹25,000 in cost '
        'accounts. Starting from costing profit, the adjustment is:',
    options: ['Add ₹5,000', 'Deduct ₹5,000', 'Add ₹30,000', 'No adjustment'],
    answerIndex: 1,
    explanation:
        'Financial profit is lower because of the higher charge, so '
        'deduct the difference.',
  ),
  Question(
    subjectId: 'i_cost',
    chapter: 'Reconciliation & Integrated Accounts',
    text:
        'Goodwill written off appears only in the financial accounts. '
        'Starting from costing profit, it is:',
    options: ['Added', 'Deducted', 'Ignored', 'Doubled'],
    answerIndex: 1,
    explanation: 'It reduces financial profit only, so it is deducted.',
  ),
  Question(
    subjectId: 'i_cost',
    chapter: 'Reconciliation & Integrated Accounts',
    text:
        'Income-tax paid, debited only in the financial accounts, is, '
        'starting from costing profit:',
    options: ['Added', 'Deducted', 'Ignored', 'Treated as overhead'],
    answerIndex: 1,
    explanation:
        'Taxes on income are an appropriation, not a cost, so they '
        'appear only in the financial books.',
  ),
  Question(
    subjectId: 'i_cost',
    chapter: 'Reconciliation & Integrated Accounts',
    text:
        'Opening stock is valued lower in cost accounts than in financial '
        'accounts. Starting from costing profit, the difference is:',
    options: ['Added', 'Deducted', 'Ignored', 'Treated as abnormal'],
    answerIndex: 1,
    explanation:
        'Lower opening stock makes cost of sales lower and costing '
        'profit higher, so the difference is deducted.',
  ),
  Question(
    subjectId: 'i_cost',
    chapter: 'Reconciliation & Integrated Accounts',
    text:
        'Transfer fees received, recorded only in the financial accounts, '
        'are, starting from costing profit:',
    options: ['Added', 'Deducted', 'Ignored', 'Shown as sales'],
    answerIndex: 0,
    explanation:
        'It is purely financial income, so financial profit is higher '
        'by that amount.',
  ),
  Question(
    subjectId: 'i_cost',
    chapter: 'Reconciliation & Integrated Accounts',
    text:
        'Starting from profit as per financial accounts, overheads '
        'over-absorbed in cost accounts are:',
    options: ['Added', 'Deducted', 'Ignored', 'Doubled'],
    answerIndex: 1,
    explanation:
        'Over-absorption means cost accounts charged more overhead '
        'than was incurred, so costing profit is lower. Moving from '
        'financial profit to costing profit, the amount is deducted.',
  ),
  Question(
    subjectId: 'i_cost',
    chapter: 'Reconciliation & Integrated Accounts',
    text: 'A key advantage of integrated accounts is that:',
    options: [
      'Two sets of books are kept',
      'There is no need to reconcile cost and financial profit',
      'Notional costs are always included',
      'Inventory is not valued',
    ],
    answerIndex: 1,
    explanation:
        'A single set of books serves both purposes, saving time and '
        'avoiding duplication.',
  ),
  Question(
    subjectId: 'i_cost',
    chapter: 'Reconciliation & Integrated Accounts',
    text:
        'In integrated accounts, the Wages Control Account is debited '
        'with:',
    options: [
      'Direct wages only',
      'Gross wages paid or payable',
      'Indirect wages only',
      'Overtime only',
    ],
    answerIndex: 1,
    explanation:
        'It is then credited with direct wages (to WIP) and indirect '
        'wages (to overheads).',
  ),

  // Uniform Costing & Inter-firm Comparison
  Question(
    subjectId: 'i_cost',
    chapter: 'Uniform Costing & Inter-firm Comparison',
    text:
        'In inter-firm comparison, participating firms are usually '
        'identified in reports by:',
    options: [
      'Their full names',
      'Code numbers, to keep data confidential',
      'Their owners\' names',
      'Their turnover',
    ],
    answerIndex: 1,
    explanation: 'Confidentiality encourages firms to share honest data.',
  ),
  Question(
    subjectId: 'i_cost',
    chapter: 'Uniform Costing & Inter-firm Comparison',
    text: 'Uniform costing is most suitable for industries where firms:',
    options: [
      'Make very different products',
      'Make similar products using similar processes',
      'Are all very small',
      'Do not compete',
    ],
    answerIndex: 1,
    explanation:
        'Common methods only give comparable results when products '
        'and processes are similar.',
  ),
  Question(
    subjectId: 'i_cost',
    chapter: 'Uniform Costing & Inter-firm Comparison',
    text:
        'In a pyramid of ratios for inter-firm comparison, the primary '
        'ratio is:',
    options: [
      'Current ratio',
      'Return on capital employed',
      'Debt-equity ratio',
      'Stock turnover',
    ],
    answerIndex: 1,
    explanation:
        'ROCE is broken down into profit margin and asset turnover, '
        'and then into more detailed ratios.',
  ),
  Question(
    subjectId: 'i_cost',
    chapter: 'Uniform Costing & Inter-firm Comparison',
    text:
        'A firm\'s profit margin is 8% and its asset turnover 2.5 times. '
        'Its return on capital employed is:',
    options: ['10.5%', '20%', '3.2%', '5.5%'],
    answerIndex: 1,
    explanation: 'ROCE = Profit margin × Asset turnover = 8% × 2.5 = 20%.',
  ),
  Question(
    subjectId: 'i_cost',
    chapter: 'Uniform Costing & Inter-firm Comparison',
    text:
        'Comparing a firm\'s performance with the best performers in the '
        'industry is called:',
    options: ['Budgeting', 'Benchmarking', 'Variance analysis', 'Auditing'],
    answerIndex: 1,
    explanation:
        'Benchmarking, often supported by inter-firm comparison, '
        'helps set targets and find better practices.',
  ),
  Question(
    subjectId: 'i_cost',
    chapter: 'Uniform Costing & Inter-firm Comparison',
    text: 'A limitation of uniform costing is that:',
    options: [
      'It reduces comparability',
      'Firms differ in size, technology and location, which a common system '
          'may not reflect',
      'It needs no cooperation',
      'It always lowers costs',
    ],
    answerIndex: 1,
    explanation:
        'Differences between firms can make a single system '
        'unsuitable for some members.',
  ),
  Question(
    subjectId: 'i_cost',
    chapter: 'Uniform Costing & Inter-firm Comparison',
    text: 'A trade association can use uniform cost data to:',
    options: [
      'Fix a fair price for the industry\'s products',
      'Calculate each member\'s income tax',
      'Audit members\' accounts',
      'Set exchange rates',
    ],
    answerIndex: 0,
    explanation:
        'Reliable industry cost data supports fair pricing and '
        'tendering.',
  ),
  Question(
    subjectId: 'i_cost',
    chapter: 'Uniform Costing & Inter-firm Comparison',
    text: 'Uniform costing can also be applied:',
    options: [
      'Only across different industries',
      'Within a group of firms under the same management',
      'Only to government departments',
      'Only to service firms',
    ],
    answerIndex: 1,
    explanation:
        'Group companies use uniform costing to compare units and '
        'divisions.',
  ),
  Question(
    subjectId: 'i_cost',
    chapter: 'Uniform Costing & Inter-firm Comparison',
    text: 'For inter-firm comparison to be meaningful, firms must use:',
    options: [
      'The same auditors',
      'Common definitions of cost terms and methods',
      'The same bank',
      'The same selling price',
    ],
    answerIndex: 1,
    explanation: 'Common terminology and methods make the figures comparable.',
  ),
  Question(
    subjectId: 'i_cost',
    chapter: 'Uniform Costing & Inter-firm Comparison',
    text: 'Firms may resist inter-firm comparison mainly because they fear:',
    options: [
      'Higher taxes',
      'Disclosure of confidential information to competitors',
      'Lower sales',
      'More audits',
    ],
    answerIndex: 1,
    explanation: 'A trusted central body and coded reports reduce this fear.',
  ),
];
