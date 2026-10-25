import '../../../../models/question.dart';

const interMaMoreDescriptive = [
  DescriptiveQuestion(
    subjectId: 'i_ma',
    chapter: 'Decision Making',
    text:
        'Capacity is 20,000 units. Home demand is 15,000 units at ₹60, '
        'variable cost ₹35 and fixed costs ₹2,00,000. An export order for '
        '8,000 units at ₹45 is offered, on an all-or-nothing basis. Should it '
        'be accepted?',
    marks: 6,
    problem: true,
    answer:
        'Spare capacity = 5,000 units, so accepting the order means '
        'giving up 3,000 units of home sales.\n'
        '• Contribution from export = 8,000 × (45 − 35) = 80,000\n'
        '• Contribution lost on home sales = 3,000 × (60 − 35) = (75,000)\n'
        '• Net gain = ₹5,000\n'
        'Fixed costs are unchanged. The order adds only ₹5,000, so '
        'qualitative factors matter: the risk of losing home customers for '
        'good, prospects of future export orders, and payment risk. On '
        'figures alone, it may be accepted.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_ma',
    chapter: 'Decision Making',
    text:
        'Normal sales are 10,000 units, but demand has temporarily fallen '
        'to 4,000 units at ₹50. Variable cost is ₹30 and fixed costs '
        '₹1,50,000 a period. If the plant shuts down, fixed costs of '
        '₹1,00,000 continue and shut-down costs are ₹10,000. Should it shut '
        'down? Find the shut-down point.',
    marks: 6,
    problem: true,
    answer:
        'Continue operating:\n'
        '• Contribution = 4,000 × 20 = 80,000; loss = 80,000 − 1,50,000 = '
        '(70,000)\n'
        'Shut down:\n'
        '• Loss = unavoidable fixed costs 1,00,000 + shut-down costs 10,000 = '
        '(1,10,000)\n'
        'Continuing loses ₹40,000 less, so the plant should keep running.\n'
        'Shut-down point = (Fixed costs − Costs incurred if shut) ÷ '
        'Contribution per unit = (1,50,000 − 1,10,000) ÷ 20 = 2,000 units. '
        'Below 2,000 units, shutting down would be cheaper.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_ma',
    chapter: 'Budgeting & Budgetary Control',
    text:
        'Budgeted hours are 1,200. Actual hours worked are 1,000, and '
        'standard hours for actual output are 900. Calculate the efficiency, '
        'capacity and activity ratios, and explain them.',
    marks: 4,
    problem: true,
    answer:
        '• Efficiency ratio = SH ÷ AH × 100 = 900 ÷ 1,000 = 90%: workers '
        'produced 90% of what standard time allows.\n'
        '• Capacity ratio = AH ÷ BH × 100 = 1,000 ÷ 1,200 = 83.33%: only '
        '83% of budgeted hours were worked.\n'
        '• Activity ratio = SH ÷ BH × 100 = 900 ÷ 1,200 = 75%: output was '
        '75% of the budgeted level.\n'
        'Check: efficiency × capacity = 90% × 83.33% = 75% = activity ratio.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_ma',
    chapter: 'Performance Measurement',
    text:
        'Division D earns ₹4 lakh on investment of ₹20 lakh. It can invest '
        '₹5 lakh in a project earning ₹0.8 lakh a year. The cost of capital '
        'is 12%. Will the manager accept the project if judged by ROI? By '
        'residual income? What is best for the company?',
    marks: 6,
    problem: true,
    answer:
        'ROI\n'
        '• Current: 4 ÷ 20 = 20%\n'
        '• Project: 0.8 ÷ 5 = 16%\n'
        '• After the project: 4.8 ÷ 25 = 19.2%\n'
        'ROI falls, so a manager judged on ROI would reject the project.\n'
        'Residual income\n'
        '• Current: 4 − 20 × 12% = 1.6 lakh\n'
        '• Project: 0.8 − 5 × 12% = 0.2 lakh\n'
        '• After the project: 1.8 lakh\n'
        'RI rises, so the manager would accept it.\n'
        'The project earns 16%, above the 12% cost of capital, so it is good '
        'for the company. RI leads to the right decision here; ROI does not.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_ma',
    chapter: 'Performance Measurement',
    text:
        'Division S can make 50,000 units at a variable cost of ₹60 each, '
        'and sells 40,000 units outside at ₹100. Division B needs 15,000 '
        'units and can buy them outside at ₹90. Find the range of acceptable '
        'transfer prices.',
    marks: 6,
    problem: true,
    answer:
        'Minimum price for S (variable cost + opportunity cost):\n'
        '• 10,000 units from spare capacity at ₹60\n'
        '• 5,000 units displacing outside sales at ₹100\n'
        '• Total = 6,00,000 + 5,00,000 = 11,00,000, an average of ₹73.33 per '
        'unit\n'
        'Maximum price for B: the outside price of ₹90.\n'
        'An average transfer price between ₹73.33 and ₹90 benefits both '
        'divisions and the company. A two-part arrangement (₹60 for the first '
        '10,000 units and ₹100 for the next 5,000) gives S exactly its '
        'minimum.',
  ),
];
