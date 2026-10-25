import '../../../models/question.dart';

const mathsProblems = [
  DescriptiveQuestion(
    subjectId: 'maths',
    chapter: 'Ratio & Proportion',
    text:
        'A 40-litre mixture contains milk and water in the ratio 7 : 3. How '
        'much water must be added to make the ratio 7 : 5?',
    marks: 4,
    problem: true,
    answer:
        '• Milk = 40 × 7/10 = 28 litres; water = 12 litres\n'
        '• Milk stays the same. For a ratio of 7 : 5, water = 28 × 5/7 = 20 '
        'litres\n'
        '• Water to add = 20 − 12 = 8 litres\n'
        'Check: 28 : 20 = 7 : 5.',
  ),
  DescriptiveQuestion(
    subjectId: 'maths',
    chapter: 'Ratio & Proportion',
    text:
        'The incomes of two people are in the ratio 4 : 3 and their '
        'expenses in the ratio 3 : 2. Each saves ₹5,000 a month. Find their '
        'incomes.',
    marks: 4,
    problem: true,
    answer:
        'Let incomes be 4x and 3x, and expenses 3y and 2y.\n'
        '• 4x − 3y = 5,000 … (1)\n'
        '• 3x − 2y = 5,000 … (2)\n'
        'Multiply (1) by 2 and (2) by 3: 8x − 6y = 10,000 and 9x − 6y = '
        '15,000. Subtract: x = 5,000.\n'
        '• Incomes: 4 × 5,000 = ₹20,000 and 3 × 5,000 = ₹15,000\n'
        '• From (1): y = 5,000, so expenses are ₹15,000 and ₹10,000\n'
        'Check: savings are 20,000 − 15,000 and 15,000 − 10,000 = ₹5,000.',
  ),
  DescriptiveQuestion(
    subjectId: 'maths',
    chapter: 'Ratio & Proportion',
    text:
        'Find (a) the mean proportional between 4 and 16, (b) the third '
        'proportional to 4 and 8, and (c) the fourth proportional to 2, 3 '
        'and 4.',
    marks: 3,
    problem: true,
    answer:
        '(a) Mean proportional x: 4 : x = x : 16, so x² = 64 and x = 8\n'
        '(b) Third proportional x: 4 : 8 = 8 : x, so x = 64 ÷ 4 = 16\n'
        '(c) Fourth proportional x: 2 : 3 = 4 : x, so x = 3 × 4 ÷ 2 = 6',
  ),
  DescriptiveQuestion(
    subjectId: 'maths',
    chapter: 'Indices & Logarithms',
    text: 'Simplify: (a^(m−n))^(m+n) × (a^(n−l))^(n+l) × (a^(l−m))^(l+m).',
    marks: 3,
    problem: true,
    answer:
        'Using (aᵖ)^q = a^(pq) and (p − q)(p + q) = p² − q²:\n'
        '= a^(m² − n²) × a^(n² − l²) × a^(l² − m²)\n'
        '= a^(m² − n² + n² − l² + l² − m²)\n'
        '= a⁰ = 1',
  ),
  DescriptiveQuestion(
    subjectId: 'maths',
    chapter: 'Indices & Logarithms',
    text: 'If 2ˣ = 3ʸ = 6ᶻ, show that z = xy ÷ (x + y).',
    marks: 4,
    problem: true,
    answer:
        'Let 2ˣ = 3ʸ = 6ᶻ = k.\n'
        '• Then 2 = k^(1/x), 3 = k^(1/y) and 6 = k^(1/z)\n'
        '• Since 6 = 2 × 3: k^(1/z) = k^(1/x) × k^(1/y) = k^(1/x + 1/y)\n'
        '• So 1/z = 1/x + 1/y = (x + y) ÷ xy\n'
        '• Therefore z = xy ÷ (x + y)',
  ),
  DescriptiveQuestion(
    subjectId: 'maths',
    chapter: 'Indices & Logarithms',
    text: 'Solve: log₂ x + log₂ (x − 2) = 3.',
    marks: 4,
    problem: true,
    answer:
        '• By the product law: log₂ [x(x − 2)] = 3\n'
        '• So x(x − 2) = 2³ = 8, giving x² − 2x − 8 = 0\n'
        '• (x − 4)(x + 2) = 0, so x = 4 or x = −2\n'
        '• The log of a negative number is not defined, so x = −2 is '
        'rejected\n'
        'Answer: x = 4. Check: log₂ 4 + log₂ 2 = 2 + 1 = 3.',
  ),
  DescriptiveQuestion(
    subjectId: 'maths',
    chapter: 'Equations',
    text: 'Solve the simultaneous equations 2x + 3y = 13 and 3x − y = 3.',
    marks: 3,
    problem: true,
    answer:
        '• From the second equation: y = 3x − 3\n'
        '• Substitute in the first: 2x + 3(3x − 3) = 13, so 11x − 9 = 13 and '
        'x = 2\n'
        '• y = 3 × 2 − 3 = 3\n'
        'Answer: x = 2, y = 3. Check: 4 + 9 = 13 and 6 − 3 = 3.',
  ),
  DescriptiveQuestion(
    subjectId: 'maths',
    chapter: 'Equations',
    text:
        'The sum of two numbers is 15 and their product is 56. Find the '
        'numbers.',
    marks: 3,
    problem: true,
    answer:
        'Let the numbers be x and 15 − x.\n'
        '• x(15 − x) = 56, so x² − 15x + 56 = 0\n'
        '• (x − 7)(x − 8) = 0, so x = 7 or 8\n'
        'The numbers are 7 and 8.',
  ),
  DescriptiveQuestion(
    subjectId: 'maths',
    chapter: 'Equations',
    text:
        'A firm\'s total cost is C = 20,000 + 30x and its revenue is '
        'R = 50x, where x is units sold. Find the break-even quantity and '
        'the profit at 1,500 units.',
    marks: 3,
    problem: true,
    answer:
        '• At break-even, R = C: 50x = 20,000 + 30x, so 20x = 20,000 and '
        'x = 1,000 units\n'
        '• Profit at 1,500 units = 50 × 1,500 − (20,000 + 30 × 1,500) = '
        '75,000 − 65,000 = ₹10,000',
  ),
  DescriptiveQuestion(
    subjectId: 'maths',
    chapter: 'Sequence & Series',
    text:
        'For the geometric progression 2, 6, 18, …, find the 6th term and '
        'the sum of the first 6 terms.',
    marks: 4,
    problem: true,
    answer:
        'a = 2, r = 3, n = 6\n'
        '• tₙ = a rⁿ⁻¹, so t₆ = 2 × 3⁵ = 2 × 243 = 486\n'
        '• Sₙ = a (rⁿ − 1) ÷ (r − 1), so S₆ = 2 × (729 − 1) ÷ 2 = 728',
  ),
  DescriptiveQuestion(
    subjectId: 'maths',
    chapter: 'Sequence & Series',
    text:
        'Three numbers in AP have a sum of 24 and a product of 440. Find '
        'them.',
    marks: 4,
    problem: true,
    answer:
        'Let the numbers be a − d, a, a + d.\n'
        '• Sum: 3a = 24, so a = 8\n'
        '• Product: (8 − d) × 8 × (8 + d) = 440, so 64 − d² = 55 and d = ±3\n'
        'The numbers are 5, 8 and 11 (or 11, 8, 5).',
  ),
  DescriptiveQuestion(
    subjectId: 'maths',
    chapter: 'Sequence & Series',
    text:
        'Find the sum to infinity of 1 + 1/2 + 1/4 + 1/8 + …, and the '
        'smallest number of terms whose sum exceeds 1.9.',
    marks: 4,
    problem: true,
    answer:
        'a = 1, r = 1/2. Since |r| < 1, S∞ = a ÷ (1 − r) = 1 ÷ (1/2) = 2.\n'
        'Sum of n terms: Sₙ = 2 (1 − (1/2)ⁿ)\n'
        '• Sₙ > 1.9 means 1 − (1/2)ⁿ > 0.95, so (1/2)ⁿ < 0.05\n'
        '• (1/2)⁴ = 0.0625 and (1/2)⁵ = 0.03125\n'
        'So at least 5 terms are needed (S₅ = 1.9375).',
  ),
  DescriptiveQuestion(
    subjectId: 'maths',
    chapter: 'Permutations & Combinations',
    text:
        'In how many ways can the letters of the word ACCOUNT be arranged? '
        'How many of these begin with A?',
    marks: 4,
    problem: true,
    answer:
        'ACCOUNT has 7 letters, with C appearing twice.\n'
        '• Total arrangements = 7! ÷ 2! = 5,040 ÷ 2 = 2,520\n'
        '• Beginning with A: arrange the other 6 letters (C twice) = 6! ÷ 2! '
        '= 720 ÷ 2 = 360',
  ),
  DescriptiveQuestion(
    subjectId: 'maths',
    chapter: 'Permutations & Combinations',
    text:
        'Find (a) the number of ways 6 people can sit at a round table, and '
        '(b) the number of diagonals in a hexagon.',
    marks: 4,
    problem: true,
    answer:
        '(a) In circular arrangements, one person is fixed and the rest '
        'are arranged: (6 − 1)! = 5! = 120 ways.\n'
        '(b) Lines joining any 2 of 6 vertices = ⁶C₂ = 15. Of these, 6 are '
        'sides, so diagonals = 15 − 6 = 9.',
  ),
  DescriptiveQuestion(
    subjectId: 'maths',
    chapter: 'Permutations & Combinations',
    text:
        'From 7 men and 4 women, a committee of 5 is to be formed with at '
        'least 2 women. In how many ways can this be done?',
    marks: 5,
    problem: true,
    answer:
        'Add the cases with 2, 3 and 4 women.\n'
        '• 2 women, 3 men: ⁴C₂ × ⁷C₃ = 6 × 35 = 210\n'
        '• 3 women, 2 men: ⁴C₃ × ⁷C₂ = 4 × 21 = 84\n'
        '• 4 women, 1 man: ⁴C₄ × ⁷C₁ = 1 × 7 = 7\n'
        'Total = 210 + 84 + 7 = 301 ways',
  ),
  DescriptiveQuestion(
    subjectId: 'maths',
    chapter: 'Time Value of Money',
    text:
        'Find the present value of ₹10,000 received at the end of each year '
        'for 3 years at 10% a year.',
    marks: 4,
    problem: true,
    answer:
        'Discount each payment at 10%:\n'
        '• Year 1: 10,000 ÷ 1.10 = 9,091\n'
        '• Year 2: 10,000 ÷ 1.21 = 8,264\n'
        '• Year 3: 10,000 ÷ 1.331 = 7,513\n'
        'Present value = ₹24,868 (approx.)\n'
        'Using the formula: PV = A [1 − (1 + i)⁻ⁿ] ÷ i = 10,000 × 2.4869 = '
        '₹24,869.',
  ),
  DescriptiveQuestion(
    subjectId: 'maths',
    chapter: 'Time Value of Money',
    text:
        'A loan of ₹1,00,000 at 12% a year is repaid in 3 equal annual '
        'instalments at the end of each year. Find the instalment.',
    marks: 4,
    problem: true,
    answer:
        'Present value annuity factor at 12% for 3 years:\n'
        '1/1.12 + 1/1.12² + 1/1.12³ = 0.8929 + 0.7972 + 0.7118 = 2.4018\n'
        'Instalment = 1,00,000 ÷ 2.4018 = ₹41,635 (approx.)\n'
        'Check: total repaid = 3 × 41,635 = 1,24,905, of which ₹24,905 is '
        'interest.',
  ),
  DescriptiveQuestion(
    subjectId: 'maths',
    chapter: 'Time Value of Money',
    text:
        '₹5,000 is deposited at the end of every year for 4 years at 8% '
        'compounded annually. Find the amount at the end of 4 years.',
    marks: 4,
    problem: true,
    answer:
        'Future value of an annuity: FV = A [(1 + i)ⁿ − 1] ÷ i\n'
        '• (1.08)⁴ = 1.36049\n'
        '• FV = 5,000 × (1.36049 − 1) ÷ 0.08 = 5,000 × 4.5061 = ₹22,530 '
        '(approx.)\n'
        'Total deposited is ₹20,000, so interest earned is about ₹2,530.',
  ),
  DescriptiveQuestion(
    subjectId: 'maths',
    chapter: 'Measures of Central Tendency',
    text:
        'Find the mean, median and mode: class 0–10 (frequency 5), 10–20 '
        '(8), 20–30 (12), 30–40 (10), 40–50 (5).',
    marks: 8,
    problem: true,
    answer:
        'N = 40\n'
        'Mean: mid-points 5, 15, 25, 35, 45; Σfx = 25 + 120 + 300 + 350 + '
        '225 = 1,020\n'
        '• Mean = 1,020 ÷ 40 = 25.5\n'
        'Median: N/2 = 20; cumulative frequencies 5, 13, 25, 35, 40, so the '
        'median class is 20–30\n'
        '• Median = L + (N/2 − cf) ÷ f × h = 20 + (20 − 13) ÷ 12 × 10 = '
        '25.83\n'
        'Mode: modal class 20–30 (f₁ = 12, f₀ = 8, f₂ = 10)\n'
        '• Mode = L + (f₁ − f₀) ÷ (2f₁ − f₀ − f₂) × h = 20 + 4 ÷ 6 × 10 = '
        '26.67',
  ),
  DescriptiveQuestion(
    subjectId: 'maths',
    chapter: 'Measures of Central Tendency',
    text:
        'Group A has 50 students with mean marks of 60, and group B has 30 '
        'students with mean marks of 70. Find the combined mean. How many '
        'students would group B need (with the same mean of 70) for the '
        'combined mean to be 65?',
    marks: 4,
    problem: true,
    answer:
        '• Combined mean = (50 × 60 + 30 × 70) ÷ 80 = (3,000 + 2,100) ÷ '
        '80 = 63.75\n'
        'For a combined mean of 65 with n students in B:\n'
        '• (3,000 + 70n) ÷ (50 + n) = 65\n'
        '• 3,000 + 70n = 3,250 + 65n, so 5n = 250 and n = 50 students',
  ),
  DescriptiveQuestion(
    subjectId: 'maths',
    chapter: 'Measures of Dispersion',
    text:
        'For the values 10, 12, 15, 18, 20, 22, 25, 28, 30, 32, 35, find '
        'the range, coefficient of range, quartile deviation and its '
        'coefficient.',
    marks: 5,
    problem: true,
    answer:
        'n = 11 (already in order)\n'
        '• Range = 35 − 10 = 25\n'
        '• Coefficient of range = (35 − 10) ÷ (35 + 10) = 0.556\n'
        '• Q1 = value of the (n + 1)/4 = 3rd item = 15\n'
        '• Q3 = value of the 3(n + 1)/4 = 9th item = 30\n'
        '• Quartile deviation = (Q3 − Q1) ÷ 2 = 7.5\n'
        '• Coefficient of QD = (Q3 − Q1) ÷ (Q3 + Q1) = 15 ÷ 45 = 0.333',
  ),
  DescriptiveQuestion(
    subjectId: 'maths',
    chapter: 'Measures of Dispersion',
    text:
        'Find the mean deviation from the mean of 2, 4, 6, 8, 10. Series A '
        'has mean 50 and SD 10; series B has mean 60 and SD 9. Which is more '
        'consistent?',
    marks: 4,
    problem: true,
    answer:
        'Mean deviation:\n'
        '• Mean = 6; absolute deviations 4, 2, 0, 2, 4; total 12\n'
        '• MD = 12 ÷ 5 = 2.4; coefficient = 2.4 ÷ 6 = 0.4\n'
        'Consistency by coefficient of variation:\n'
        '• CV of A = 10 ÷ 50 × 100 = 20%\n'
        '• CV of B = 9 ÷ 60 × 100 = 15%\n'
        'B has the lower CV, so B is more consistent.',
  ),
  DescriptiveQuestion(
    subjectId: 'maths',
    chapter: 'Correlation & Regression',
    text:
        'For x: 1, 2, 3, 4, 5 and y: 2, 4, 5, 4, 5, find Karl Pearson\'s '
        'coefficient of correlation and the regression equation of y on x. '
        'Estimate y when x = 6.',
    marks: 8,
    problem: true,
    answer:
        'Means: x̄ = 3, ȳ = 4\n'
        '• dx = x − 3: −2, −1, 0, 1, 2\n'
        '• dy = y − 4: −2, 0, 1, 0, 1\n'
        '• Σdx·dy = 4 + 0 + 0 + 0 + 2 = 6; Σdx² = 10; Σdy² = 6\n'
        '• r = Σdx·dy ÷ √(Σdx² × Σdy²) = 6 ÷ √60 = 0.775\n'
        'Regression of y on x:\n'
        '• b_yx = Σdx·dy ÷ Σdx² = 6 ÷ 10 = 0.6\n'
        '• y − 4 = 0.6 (x − 3), so y = 0.6x + 2.2\n'
        '• When x = 6: y = 3.6 + 2.2 = 5.8',
  ),
  DescriptiveQuestion(
    subjectId: 'maths',
    chapter: 'Correlation & Regression',
    text:
        'Two judges rank 5 candidates: judge 1 gives 1, 2, 3, 4, 5 and '
        'judge 2 gives 2, 1, 4, 3, 5. Find Spearman\'s rank correlation.',
    marks: 4,
    problem: true,
    answer:
        '• Differences d: −1, 1, −1, 1, 0\n'
        '• Σd² = 1 + 1 + 1 + 1 + 0 = 4\n'
        '• ρ = 1 − 6Σd² ÷ [n(n² − 1)] = 1 − 24 ÷ (5 × 24) = 1 − 0.2 = 0.8\n'
        'There is high positive agreement between the judges.',
  ),
  DescriptiveQuestion(
    subjectId: 'maths',
    chapter: 'Correlation & Regression',
    text:
        'The two regression lines are 2x + 3y = 26 and 6x + y = 30. Find '
        'the means of x and y and the correlation coefficient.',
    marks: 5,
    problem: true,
    answer:
        'Means lie on both lines, so solve them together:\n'
        '• From the second: y = 30 − 6x. Substituting: 2x + 90 − 18x = 26, '
        'so x = 4 and y = 6\n'
        '• Mean of x = 4, mean of y = 6\n'
        'Take 2x + 3y = 26 as y on x: y = (26 − 2x) ÷ 3, so b_yx = −2/3.\n'
        'Take 6x + y = 30 as x on y: x = (30 − y) ÷ 6, so b_xy = −1/6.\n'
        '• r² = b_yx × b_xy = 2/18 = 1/9 (less than 1, so the choice is '
        'valid)\n'
        '• r = −1/3, negative because both coefficients are negative',
  ),
  DescriptiveQuestion(
    subjectId: 'maths',
    chapter: 'Index Numbers',
    text:
        'Base-year prices of three items are ₹10, ₹20 and ₹40; current '
        'prices are ₹12, ₹25 and ₹44. Find the simple aggregative index and '
        'the simple average of price relatives.',
    marks: 4,
    problem: true,
    answer:
        '• Simple aggregative index = Σp₁ ÷ Σp₀ × 100 = 81 ÷ 70 × 100 = '
        '115.71\n'
        '• Price relatives: 12/10 × 100 = 120; 25/20 × 100 = 125; 44/40 × '
        '100 = 110\n'
        '• Average of price relatives = (120 + 125 + 110) ÷ 3 = 118.33',
  ),
  DescriptiveQuestion(
    subjectId: 'maths',
    chapter: 'Index Numbers',
    text:
        'Prices in 2022 to 2025 were ₹50, ₹60, ₹66 and ₹72.60. Construct '
        'chain base index numbers. Also, if wages rose from ₹20,000 in 2020 '
        'to ₹30,000 in 2025 while the consumer price index rose from 100 to '
        '140, find the real wage in 2025.',
    marks: 5,
    problem: true,
    answer:
        'Link relatives (each year as % of the previous year):\n'
        '• 2023: 60/50 × 100 = 120; 2024: 66/60 × 100 = 110; 2025: '
        '72.60/66 × 100 = 110\n'
        'Chain index (2022 = 100):\n'
        '• 2023: 120; 2024: 120 × 110/100 = 132; 2025: 132 × 110/100 = '
        '145.2\n'
        'Real wage in 2025 = 30,000 × 100 ÷ 140 = ₹21,429\n'
        'Real wages rose only about 7.1%, though money wages rose 50%.',
  ),
  DescriptiveQuestion(
    subjectId: 'maths',
    chapter: 'Probability',
    text:
        'A bag has 5 red and 3 blue balls. Two are drawn without '
        'replacement. Find the probability that (a) both are red, and (b) '
        'one is red and one blue.',
    marks: 4,
    problem: true,
    answer:
        '(a) P(both red) = 5/8 × 4/7 = 20/56 = 5/14\n'
        '(b) P(one of each) = P(red then blue) + P(blue then red) = 5/8 × '
        '3/7 + 3/8 × 5/7 = 30/56 = 15/28\n'
        'Using combinations: (⁵C₁ × ³C₁) ÷ ⁸C₂ = 15/28.',
  ),
  DescriptiveQuestion(
    subjectId: 'maths',
    chapter: 'Probability',
    text:
        'P(A) = 0.5, P(B) = 0.4 and P(A ∩ B) = 0.2. Find P(A ∪ B) and the '
        'probability of neither. Are A and B independent?',
    marks: 4,
    problem: true,
    answer:
        '• Addition theorem: P(A ∪ B) = 0.5 + 0.4 − 0.2 = 0.7\n'
        '• P(neither) = 1 − 0.7 = 0.3\n'
        '• P(A) × P(B) = 0.5 × 0.4 = 0.2 = P(A ∩ B), so A and B are '
        'independent',
  ),
  DescriptiveQuestion(
    subjectId: 'maths',
    chapter: 'Probability',
    text:
        'A coin is tossed 4 times. Find the probability of exactly 2 '
        'heads. In a game, you win ₹100 with probability 0.2, win ₹50 with '
        'probability 0.3, and lose ₹40 with probability 0.5. Find the '
        'expected value.',
    marks: 5,
    problem: true,
    answer:
        'Exactly 2 heads (binomial, n = 4, p = 1/2):\n'
        '• P = ⁴C₂ × (1/2)² × (1/2)² = 6/16 = 3/8\n'
        'Expected value:\n'
        '• E = 100 × 0.2 + 50 × 0.3 − 40 × 0.5 = 20 + 15 − 20 = ₹15\n'
        'On average, a player gains ₹15 per game.',
  ),
];
