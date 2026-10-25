import '../../../models/question.dart';

const ecoProblems = [
  DescriptiveQuestion(
    subjectId: 'eco',
    chapter: 'Demand & Consumer Behaviour',
    text:
        'When the price of a good falls from ₹10 to ₹8, quantity demanded '
        'rises from 100 to 130 units. Calculate price elasticity of demand '
        'by the percentage method and the arc (mid-point) method, and check '
        'it with the total expenditure method.',
    marks: 5,
    problem: true,
    answer:
        'Percentage method (from the original values):\n'
        '• % change in quantity = 30 ÷ 100 × 100 = 30%\n'
        '• % change in price = −2 ÷ 10 × 100 = −20%\n'
        '• Ed = 30 ÷ 20 = 1.5 (elastic)\n'
        'Arc method:\n'
        '• Ed = (ΔQ ÷ average Q) ÷ (ΔP ÷ average P) = (30 ÷ 115) ÷ (2 ÷ 9) '
        '= 0.261 ÷ 0.222 = 1.17\n'
        'Total expenditure method:\n'
        '• Before: 10 × 100 = ₹1,000; after: 8 × 130 = ₹1,040\n'
        '• Price fell and total expenditure rose, so demand is elastic '
        '(Ed > 1).',
  ),
  DescriptiveQuestion(
    subjectId: 'eco',
    chapter: 'Demand & Consumer Behaviour',
    text:
        '(a) When a consumer\'s income rises from ₹20,000 to ₹25,000, '
        'demand for a good rises from 40 to 50 units. Find the income '
        'elasticity. (b) When the price of tea rises by 10%, demand for '
        'coffee rises by 5%. Find the cross elasticity and state the '
        'relationship between the goods.',
    marks: 4,
    problem: true,
    answer:
        '(a) Income elasticity = % change in demand ÷ % change in income\n'
        '• = (10 ÷ 40) ÷ (5,000 ÷ 20,000) = 25% ÷ 25% = 1\n'
        '• Positive, so it is a normal good, with unit income elasticity\n'
        '(b) Cross elasticity = % change in demand for coffee ÷ % change in '
        'price of tea = 5% ÷ 10% = +0.5\n'
        '• Positive cross elasticity means tea and coffee are substitutes.',
  ),
  DescriptiveQuestion(
    subjectId: 'eco',
    chapter: 'Production & Cost',
    text:
        'Total cost (₹) at outputs 0 to 5 is 100, 150, 190, 220, 260, '
        '320. Find TFC, TVC, AC, AVC and MC at each output.',
    marks: 6,
    problem: true,
    answer:
        'TFC is the cost at zero output = ₹100 at every level.\n'
        'Output 1: TVC 50; AC 150; AVC 50; MC 50\n'
        'Output 2: TVC 90; AC 95; AVC 45; MC 40\n'
        'Output 3: TVC 120; AC 73.33; AVC 40; MC 30\n'
        'Output 4: TVC 160; AC 65; AVC 40; MC 40\n'
        'Output 5: TVC 220; AC 64; AVC 44; MC 60\n'
        'MC first falls and then rises, giving the U-shape. AVC is lowest '
        'where MC cuts it (between 3 and 4 units).',
  ),
  DescriptiveQuestion(
    subjectId: 'eco',
    chapter: 'Production & Cost',
    text:
        'With fixed capital, total product for 1 to 5 workers is 10, 24, '
        '36, 44, 48 units. Calculate average and marginal product, and '
        'identify where diminishing returns begin.',
    marks: 4,
    problem: true,
    answer:
        'Workers 1: AP 10; MP 10\n'
        'Workers 2: AP 12; MP 14\n'
        'Workers 3: AP 12; MP 12\n'
        'Workers 4: AP 11; MP 8\n'
        'Workers 5: AP 9.6; MP 4\n'
        'MP rises up to the 2nd worker (increasing returns) and falls from '
        'the 3rd worker, so diminishing marginal returns begin with the 3rd '
        'worker. MP stays positive, so total product is still rising.',
  ),
  DescriptiveQuestion(
    subjectId: 'eco',
    chapter: 'Market Structures',
    text:
        'A monopolist faces demand P = 100 − 2Q, with constant marginal '
        'cost of ₹20 and fixed cost of ₹100. Find the profit-maximising '
        'output, price and profit.',
    marks: 5,
    problem: true,
    answer:
        '• Total revenue TR = PQ = 100Q − 2Q²\n'
        '• Marginal revenue MR = 100 − 4Q\n'
        '• Profit is maximised where MR = MC: 100 − 4Q = 20, so Q = 20\n'
        '• Price = 100 − 2 × 20 = ₹60\n'
        '• TR = 60 × 20 = 1,200; TC = 100 + 20 × 20 = 500\n'
        '• Profit = ₹700\n'
        'Price (60) is above MC (20), which shows monopoly power.',
  ),
  DescriptiveQuestion(
    subjectId: 'eco',
    chapter: 'Market Structures',
    text:
        'A perfectly competitive firm sells at ₹40 a unit. Its total cost '
        'is TC = Q² + 100. Find its profit-maximising output and profit. '
        'Will firms enter the industry in the long run?',
    marks: 4,
    problem: true,
    answer:
        '• MC = 2Q; for a price taker, MR = P = 40\n'
        '• Set P = MC: 2Q = 40, so Q = 20\n'
        '• TR = 40 × 20 = 800; TC = 400 + 100 = 500\n'
        '• Profit = ₹300 (supernormal profit)\n'
        'Supernormal profit attracts new firms. Supply rises and price falls '
        'until only normal profit is earned, where price equals minimum '
        'average cost.',
  ),
  DescriptiveQuestion(
    subjectId: 'eco',
    chapter: 'Money & Banking',
    text:
        'A bank receives a primary deposit of ₹10,000 and the cash reserve '
        'ratio is 10%. Find the credit multiplier, total deposits and credit '
        'created. What happens if CRR rises to 20%?',
    marks: 4,
    problem: true,
    answer:
        'At CRR 10%:\n'
        '• Credit multiplier = 1 ÷ CRR = 1 ÷ 0.10 = 10\n'
        '• Total deposits = 10,000 × 10 = ₹1,00,000\n'
        '• Credit created = 1,00,000 − 10,000 = ₹90,000\n'
        'At CRR 20%:\n'
        '• Multiplier = 5; total deposits = ₹50,000; credit created = '
        '₹40,000\n'
        'A higher CRR reduces the banks\' power to create credit.',
  ),
  DescriptiveQuestion(
    subjectId: 'eco',
    chapter: 'Money & Banking',
    text:
        'Using Fisher\'s quantity theory MV = PT, find the price level if '
        'money supply is ₹1,000 crore, velocity is 5 and volume of '
        'transactions is 2,500 crore units. What happens if money supply '
        'doubles?',
    marks: 3,
    problem: true,
    answer:
        '• P = MV ÷ T = (1,000 × 5) ÷ 2,500 = 2\n'
        '• If M doubles to 2,000 (V and T unchanged): P = (2,000 × 5) ÷ '
        '2,500 = 4\n'
        'The price level doubles. The theory says that, with V and T '
        'constant, prices change in direct proportion to the money supply.',
  ),
  DescriptiveQuestion(
    subjectId: 'eco',
    chapter: 'Principles & Functions of Management',
    text:
        'Which of Fayol\'s principles is violated in each case? (a) A '
        'worker gets orders from two supervisors. (b) The production and '
        'marketing departments follow separate plans for the same product. '
        '(c) Staff are transferred every few months. (d) A manager puts '
        'personal gain ahead of the company\'s goals.',
    marks: 4,
    problem: true,
    answer:
        '(a) Unity of command: each employee should receive orders from '
        'one superior only.\n'
        '(b) Unity of direction: activities with the same objective should '
        'have one head and one plan.\n'
        '(c) Stability of tenure of personnel: frequent transfers prevent '
        'staff from becoming efficient and raise costs.\n'
        '(d) Subordination of individual interest to general interest: the '
        'organisation\'s interests come before personal interests.',
  ),
];
