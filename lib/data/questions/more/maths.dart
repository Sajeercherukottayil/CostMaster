import '../../../models/question.dart';

const mathsMoreQuestions = [
  // Ratio & Proportion
  Question(
    subjectId: 'maths',
    chapter: 'Ratio & Proportion',
    text: 'The sub-duplicate ratio of 16 : 25 is:',
    options: ['4 : 5', '256 : 625', '8 : 12.5', '5 : 4'],
    answerIndex: 0,
    explanation: 'The sub-duplicate ratio of a : b is √a : √b = 4 : 5.',
  ),
  Question(
    subjectId: 'maths',
    chapter: 'Ratio & Proportion',
    text: 'The triplicate ratio of 2 : 3 is:',
    options: ['6 : 9', '8 : 27', '4 : 9', '2 : 9'],
    answerIndex: 1,
    explanation: 'The triplicate ratio of a : b is a³ : b³ = 8 : 27.',
  ),
  Question(
    subjectId: 'maths',
    chapter: 'Ratio & Proportion',
    text:
        'Two numbers are in the ratio 3 : 5 and their sum is 64. The larger '
        'number is:',
    options: ['24', '40', '32', '48'],
    answerIndex: 1,
    explanation: 'Each part = 64 ÷ 8 = 8. The larger number = 5 × 8 = 40.',
  ),
  Question(
    subjectId: 'maths',
    chapter: 'Ratio & Proportion',
    text: 'The ratio of 40 paise to ₹2 is:',
    options: ['20 : 1', '1 : 5', '1 : 50', '2 : 1'],
    answerIndex: 1,
    explanation: 'Convert to the same unit: 40 paise : 200 paise = 1 : 5.',
  ),
  Question(
    subjectId: 'maths',
    chapter: 'Ratio & Proportion',
    text: 'If a : b = 4 : 5, then (5a − 2b) : (3a + b) is:',
    options: ['10 : 17', '2 : 3', '17 : 10', '1 : 2'],
    answerIndex: 0,
    explanation: 'Put a = 4, b = 5: (20 − 10) : (12 + 5) = 10 : 17.',
  ),
  Question(
    subjectId: 'maths',
    chapter: 'Ratio & Proportion',
    text: 'If 4, x and 9 are in continued proportion, x is:',
    options: ['6', '6.5', '36', '13'],
    answerIndex: 0,
    explanation: 'In continued proportion 4 : x = x : 9, so x² = 36 and x = 6.',
  ),
  Question(
    subjectId: 'maths',
    chapter: 'Ratio & Proportion',
    text:
        'The ages of two people are in the ratio 3 : 4. After 5 years the '
        'ratio will be 4 : 5. The present age of the elder is:',
    options: ['15', '20', '25', '16'],
    answerIndex: 1,
    explanation:
        '(3x + 5) ÷ (4x + 5) = 4/5 gives 15x + 25 = 16x + 20, so x = 5. '
        'Ages are 15 and 20.',
  ),
  Question(
    subjectId: 'maths',
    chapter: 'Ratio & Proportion',
    text:
        '6 workers finish a job in 10 days. Working at the same rate, 15 '
        'workers will finish it in:',
    options: ['25 days', '4 days', '6 days', '5 days'],
    answerIndex: 1,
    explanation:
        'Workers and days are inversely proportional: 6 × 10 = 15 × '
        'd, so d = 4 days.',
  ),
  Question(
    subjectId: 'maths',
    chapter: 'Ratio & Proportion',
    text: '12 pens cost ₹180. The cost of 20 pens is:',
    options: ['₹240', '₹300', '₹360', '₹200'],
    answerIndex: 1,
    explanation: 'Cost per pen = 180 ÷ 12 = ₹15, so 20 pens cost ₹300.',
  ),
  Question(
    subjectId: 'maths',
    chapter: 'Ratio & Proportion',
    text: 'The ratio compounded of 2 : 3, 4 : 5 and 5 : 6 is:',
    options: ['4 : 9', '11 : 14', '40 : 45', '2 : 3'],
    answerIndex: 0,
    explanation: 'Multiply: (2 × 4 × 5) : (3 × 5 × 6) = 40 : 90 = 4 : 9.',
  ),

  // Indices & Logarithms
  Question(
    subjectId: 'maths',
    chapter: 'Indices & Logarithms',
    text: 'If log 3 = 0.4771, then log 9 is:',
    options: ['0.9542', '1.4313', '0.2276', '0.4771'],
    answerIndex: 0,
    explanation: 'log 9 = log 3² = 2 log 3 = 0.9542.',
  ),
  Question(
    subjectId: 'maths',
    chapter: 'Indices & Logarithms',
    text: 'The value of log₃ (1/9) is:',
    options: ['2', '−2', '1/2', '−1/2'],
    answerIndex: 1,
    explanation: '1/9 = 3⁻², so log₃ (1/9) = −2.',
  ),
  Question(
    subjectId: 'maths',
    chapter: 'Indices & Logarithms',
    text: 'If 2ˣ = 64, then x is:',
    options: ['5', '6', '8', '32'],
    answerIndex: 1,
    explanation: '64 = 2⁶, so x = 6.',
  ),
  Question(
    subjectId: 'maths',
    chapter: 'Indices & Logarithms',
    text: 'The value of 64^(−1/3) is:',
    options: ['4', '−4', '1/4', '1/8'],
    answerIndex: 2,
    explanation:
        '64^(1/3) = 4, and a negative index means the reciprocal, so '
        '1/4.',
  ),
  Question(
    subjectId: 'maths',
    chapter: 'Indices & Logarithms',
    text: 'The value of log₅ 125 + log₂ 16 is:',
    options: ['7', '12', '5', '141'],
    answerIndex: 0,
    explanation:
        'log₅ 125 = 3 (since 5³ = 125) and log₂ 16 = 4, so the sum is '
        '7.',
  ),
  Question(
    subjectId: 'maths',
    chapter: 'Indices & Logarithms',
    text: 'If log 2 = 0.3010, then log 5 is:',
    options: ['0.6990', '1.5050', '0.3010', '0.1505'],
    answerIndex: 0,
    explanation: 'log 5 = log (10/2) = log 10 − log 2 = 1 − 0.3010 = 0.6990.',
  ),
  Question(
    subjectId: 'maths',
    chapter: 'Indices & Logarithms',
    text: 'The value of log₁₀ 0.001 is:',
    options: ['3', '−3', '0.001', '−0.3'],
    answerIndex: 1,
    explanation: '0.001 = 10⁻³, so log₁₀ 0.001 = −3.',
  ),
  Question(
    subjectId: 'maths',
    chapter: 'Indices & Logarithms',
    text: 'The value of 3² × 3³ is:',
    options: ['729', '243', '216', '15'],
    answerIndex: 1,
    explanation: 'aᵐ × aⁿ = aᵐ⁺ⁿ, so 3² × 3³ = 3⁵ = 243.',
  ),
  Question(
    subjectId: 'maths',
    chapter: 'Indices & Logarithms',
    text: 'The characteristic of log 4567 is:',
    options: ['4', '3', '2', '0'],
    answerIndex: 1,
    explanation:
        'For a number with 4 digits before the decimal point, the '
        'characteristic is 4 − 1 = 3.',
  ),
  Question(
    subjectId: 'maths',
    chapter: 'Indices & Logarithms',
    text: 'The value of log₄ 8 is:',
    options: ['2', '3/2', '2/3', '1/2'],
    answerIndex: 1,
    explanation: 'Change of base: log₄ 8 = log₂ 8 ÷ log₂ 4 = 3 ÷ 2 = 3/2.',
  ),

  // Equations
  Question(
    subjectId: 'maths',
    chapter: 'Equations',
    text: 'The roots of x² − 4x + 4 = 0 are:',
    options: ['Real and unequal', 'Real and equal', 'Not real', 'Irrational'],
    answerIndex: 1,
    explanation:
        'Discriminant = 16 − 16 = 0, so the roots are real and equal '
        '(both 2).',
  ),
  Question(
    subjectId: 'maths',
    chapter: 'Equations',
    text: 'If α and β are the roots of x² − 5x + 6 = 0, then α² + β² is:',
    options: ['13', '25', '19', '36'],
    answerIndex: 0,
    explanation:
        'α + β = 5 and αβ = 6, so α² + β² = (α + β)² − 2αβ = 25 − 12 = '
        '13.',
  ),
  Question(
    subjectId: 'maths',
    chapter: 'Equations',
    text: 'If one root of x² − kx + 8 = 0 is 2, the value of k is:',
    options: ['4', '6', '8', '10'],
    answerIndex: 1,
    explanation: 'Substitute x = 2: 4 − 2k + 8 = 0, so k = 6.',
  ),
  Question(
    subjectId: 'maths',
    chapter: 'Equations',
    text: 'The solution of 5x − 3 = 2x + 9 is:',
    options: ['x = 2', 'x = 4', 'x = 3', 'x = 6'],
    answerIndex: 1,
    explanation: '5x − 2x = 9 + 3, so 3x = 12 and x = 4.',
  ),
  Question(
    subjectId: 'maths',
    chapter: 'Equations',
    text: 'If 3x + 2y = 12 and x − y = −1, then y is:',
    options: ['2', '3', '4', '1'],
    answerIndex: 1,
    explanation:
        'x = y − 1. Substituting: 3y − 3 + 2y = 12, so y = 3 (and '
        'x = 2).',
  ),
  Question(
    subjectId: 'maths',
    chapter: 'Equations',
    text:
        'A father is three times as old as his son. In 10 years he will be '
        'twice as old. The father\'s present age is:',
    options: ['30', '40', '45', '36'],
    answerIndex: 0,
    explanation: '3x + 10 = 2(x + 10) gives x = 10. The father is 30.',
  ),
  Question(
    subjectId: 'maths',
    chapter: 'Equations',
    text:
        '3 pens and 2 pencils cost ₹40; 2 pens and 3 pencils cost ₹35. The '
        'cost of one pen is:',
    options: ['₹5', '₹10', '₹8', '₹12'],
    answerIndex: 1,
    explanation:
        '3p + 2q = 40 and 2p + 3q = 35. Multiplying and subtracting '
        '(9p + 6q = 120, 4p + 6q = 70) gives 5p = 50, so p = ₹10.',
  ),
  Question(
    subjectId: 'maths',
    chapter: 'Equations',
    text: 'Which of the following is a root of x³ − 6x² + 11x − 6 = 0?',
    options: ['−1', '1', '4', '0'],
    answerIndex: 1,
    explanation: 'For x = 1: 1 − 6 + 11 − 6 = 0. The roots are 1, 2 and 3.',
  ),
  Question(
    subjectId: 'maths',
    chapter: 'Equations',
    text:
        'The equation whose roots are the reciprocals of the roots of '
        'x² − 5x + 6 = 0 is:',
    options: [
      '6x² − 5x + 1 = 0',
      'x² + 5x + 6 = 0',
      '6x² + 5x − 1 = 0',
      'x² − 6x + 5 = 0',
    ],
    answerIndex: 0,
    explanation:
        'The roots are 2 and 3, so the new roots are 1/2 and 1/3: sum '
        '5/6, product 1/6. The equation is 6x² − 5x + 1 = 0.',
  ),
  Question(
    subjectId: 'maths',
    chapter: 'Equations',
    text:
        'Demand is D = 100 − 2p and supply is S = 20 + 2p. The equilibrium '
        'price is:',
    options: ['₹40', '₹20', '₹30', '₹60'],
    answerIndex: 1,
    explanation:
        'At equilibrium D = S: 100 − 2p = 20 + 2p, so 4p = 80 and p = '
        '₹20 (quantity 60).',
  ),

  // Sequence & Series
  Question(
    subjectId: 'maths',
    chapter: 'Sequence & Series',
    text: 'The sum of the first 10 odd natural numbers is:',
    options: ['55', '100', '110', '50'],
    answerIndex: 1,
    explanation: 'The sum of the first n odd numbers is n², so 10² = 100.',
  ),
  Question(
    subjectId: 'maths',
    chapter: 'Sequence & Series',
    text: 'The 10th term of the AP 7, 4, 1, … is:',
    options: ['−20', '−23', '−17', '37'],
    answerIndex: 0,
    explanation: 'a = 7, d = −3, so t₁₀ = 7 + 9 × (−3) = −20.',
  ),
  Question(
    subjectId: 'maths',
    chapter: 'Sequence & Series',
    text: 'How many terms are there in the AP 5, 9, 13, …, 101?',
    options: ['24', '25', '26', '20'],
    answerIndex: 1,
    explanation: 'n = (101 − 5) ÷ 4 + 1 = 24 + 1 = 25.',
  ),
  Question(
    subjectId: 'maths',
    chapter: 'Sequence & Series',
    text: 'The sum 2 + 4 + 6 + … + 100 is:',
    options: ['2,500', '2,550', '5,050', '5,000'],
    answerIndex: 1,
    explanation: 'This is 2 × (1 + 2 + … + 50) = 2 × 1,275 = 2,550.',
  ),
  Question(
    subjectId: 'maths',
    chapter: 'Sequence & Series',
    text:
        'In a GP, the 3rd term is 12 and the 6th term is 96. The first term '
        'is:',
    options: ['2', '3', '4', '6'],
    answerIndex: 1,
    explanation: 'ar⁵ ÷ ar² = r³ = 8, so r = 2. Then a × 4 = 12, so a = 3.',
  ),
  Question(
    subjectId: 'maths',
    chapter: 'Sequence & Series',
    text: 'The sum 1² + 2² + … + 10² is:',
    options: ['385', '355', '55', '3,025'],
    answerIndex: 0,
    explanation: 'Σn² = n(n + 1)(2n + 1) ÷ 6 = 10 × 11 × 21 ÷ 6 = 385.',
  ),
  Question(
    subjectId: 'maths',
    chapter: 'Sequence & Series',
    text: 'The sum 1³ + 2³ + 3³ + 4³ + 5³ is:',
    options: ['125', '225', '150', '55'],
    answerIndex: 1,
    explanation: 'Σn³ = [n(n + 1) ÷ 2]² = 15² = 225.',
  ),
  Question(
    subjectId: 'maths',
    chapter: 'Sequence & Series',
    text:
        'The sum of the first n terms of an AP is 3n² + 2n. Its common '
        'difference is:',
    options: ['3', '5', '6', '2'],
    answerIndex: 2,
    explanation:
        'tₙ = Sₙ − Sₙ₋₁ = 6n − 1, so the terms are 5, 11, 17, … and '
        'd = 6.',
  ),
  Question(
    subjectId: 'maths',
    chapter: 'Sequence & Series',
    text:
        'Three arithmetic means are inserted between 2 and 18. The middle '
        'one is:',
    options: ['8', '10', '12', '6'],
    answerIndex: 1,
    explanation: '18 = 2 + 4d, so d = 4. The means are 6, 10 and 14.',
  ),
  Question(
    subjectId: 'maths',
    chapter: 'Sequence & Series',
    text:
        'The sum to infinity of a GP is 8 and its first term is 4. The '
        'common ratio is:',
    options: ['1/4', '1/2', '2', '1/8'],
    answerIndex: 1,
    explanation:
        'S∞ = a ÷ (1 − r): 8 = 4 ÷ (1 − r), so 1 − r = 1/2 and r = '
        '1/2.',
  ),

  // Permutations & Combinations
  Question(
    subjectId: 'maths',
    chapter: 'Permutations & Combinations',
    text: 'The value of ⁷P₃ is:',
    options: ['35', '210', '21', '343'],
    answerIndex: 1,
    explanation: '⁷P₃ = 7 × 6 × 5 = 210.',
  ),
  Question(
    subjectId: 'maths',
    chapter: 'Permutations & Combinations',
    text:
        'How many 4-letter arrangements can be made from 6 different '
        'letters without repetition?',
    options: ['15', '360', '1,296', '24'],
    answerIndex: 1,
    explanation: '⁶P₄ = 6 × 5 × 4 × 3 = 360.',
  ),
  Question(
    subjectId: 'maths',
    chapter: 'Permutations & Combinations',
    text: 'The number of arrangements of the letters of MISSISSIPPI is:',
    options: ['34,650', '39,916,800', '69,300', '1,663,200'],
    answerIndex: 0,
    explanation:
        '11 letters with I × 4, S × 4 and P × 2: 11! ÷ (4! × 4! × 2!) '
        '= 34,650.',
  ),
  Question(
    subjectId: 'maths',
    chapter: 'Permutations & Combinations',
    text: 'If ⁿC₂ = 45, then n is:',
    options: ['9', '10', '15', '45'],
    answerIndex: 1,
    explanation: 'n(n − 1) ÷ 2 = 45, so n(n − 1) = 90 and n = 10.',
  ),
  Question(
    subjectId: 'maths',
    chapter: 'Permutations & Combinations',
    text:
        'At a meeting, each of 12 people shakes hands once with every '
        'other. The number of handshakes is:',
    options: ['132', '66', '144', '24'],
    answerIndex: 1,
    explanation: 'Handshakes = ¹²C₂ = 12 × 11 ÷ 2 = 66.',
  ),
  Question(
    subjectId: 'maths',
    chapter: 'Permutations & Combinations',
    text:
        'In how many ways can 2 boys and 1 girl be chosen from 4 boys and '
        '3 girls?',
    options: ['12', '18', '35', '24'],
    answerIndex: 1,
    explanation: '⁴C₂ × ³C₁ = 6 × 3 = 18.',
  ),
  Question(
    subjectId: 'maths',
    chapter: 'Permutations & Combinations',
    text:
        'The number of triangles that can be formed from 8 points, no three '
        'of which are collinear, is:',
    options: ['24', '56', '336', '28'],
    answerIndex: 1,
    explanation: 'Any 3 points form a triangle: ⁸C₃ = 56.',
  ),
  Question(
    subjectId: 'maths',
    chapter: 'Permutations & Combinations',
    text:
        'How many 3-digit numbers can be formed from the digits 1 to 5 if '
        'digits may be repeated?',
    options: ['60', '125', '15', '243'],
    answerIndex: 1,
    explanation: 'Each of the 3 places can take any of 5 digits: 5³ = 125.',
  ),
  Question(
    subjectId: 'maths',
    chapter: 'Permutations & Combinations',
    text: 'The value of ¹²C₉ is:',
    options: ['220', '1,320', '495', '66'],
    answerIndex: 0,
    explanation: 'ⁿCᵣ = ⁿCₙ₋ᵣ, so ¹²C₉ = ¹²C₃ = 12 × 11 × 10 ÷ 6 = 220.',
  ),
  Question(
    subjectId: 'maths',
    chapter: 'Permutations & Combinations',
    text: 'In how many ways can 6 different beads be strung into a necklace?',
    options: ['120', '60', '720', '360'],
    answerIndex: 1,
    explanation:
        'A necklace can be turned over, so arrangements = (6 − 1)! ÷ 2 '
        '= 60.',
  ),

  // Time Value of Money
  Question(
    subjectId: 'maths',
    chapter: 'Time Value of Money',
    text:
        '₹8,000 amounts to ₹9,200 in 3 years at simple interest. The rate '
        'of interest is:',
    options: ['4%', '5%', '6%', '15%'],
    answerIndex: 1,
    explanation: 'SI = 1,200 = 8,000 × r × 3, so r = 1,200 ÷ 24,000 = 5%.',
  ),
  Question(
    subjectId: 'maths',
    chapter: 'Time Value of Money',
    text:
        'The amount of ₹10,000 after 1 year at 10% a year compounded '
        'half-yearly is:',
    options: ['₹11,000', '₹11,025', '₹11,050', '₹10,500'],
    answerIndex: 1,
    explanation:
        'Rate 5% per half-year for 2 periods: 10,000 × 1.05² = '
        '₹11,025.',
  ),
  Question(
    subjectId: 'maths',
    chapter: 'Time Value of Money',
    text:
        'The present value of ₹10,000 receivable after 2 years at 10% '
        'compound interest is approximately:',
    options: ['₹8,000', '₹8,264', '₹9,091', '₹8,333'],
    answerIndex: 1,
    explanation: 'PV = 10,000 ÷ 1.21 = ₹8,264.',
  ),
  Question(
    subjectId: 'maths',
    chapter: 'Time Value of Money',
    text:
        'The future value of ₹1,000 deposited at the end of each year for '
        '3 years at 10% is:',
    options: ['₹3,000', '₹3,310', '₹3,641', '₹3,300'],
    answerIndex: 1,
    explanation: 'FV = 1,000 × 1.21 + 1,000 × 1.10 + 1,000 = ₹3,310.',
  ),
  Question(
    subjectId: 'maths',
    chapter: 'Time Value of Money',
    text: 'By the rule of 72, money doubles at 8% compound interest in about:',
    options: ['8 years', '9 years', '12.5 years', '6 years'],
    answerIndex: 1,
    explanation: 'Years ≈ 72 ÷ rate = 72 ÷ 8 = 9 years.',
  ),
  Question(
    subjectId: 'maths',
    chapter: 'Time Value of Money',
    text:
        'The annual year-end deposit at 10% needed to build up ₹33,100 in '
        '3 years is:',
    options: ['₹11,033', '₹10,000', '₹9,091', '₹11,000'],
    answerIndex: 1,
    explanation:
        'Future value factor of an annuity for 3 years at 10% = 3.31. '
        'Deposit = 33,100 ÷ 3.31 = ₹10,000.',
  ),
  Question(
    subjectId: 'maths',
    chapter: 'Time Value of Money',
    text:
        'The present value of ₹1,000 paid at the start of each year for 3 '
        'years (annuity due) at 10% is approximately:',
    options: ['₹2,487', '₹2,736', '₹3,000', '₹2,500'],
    answerIndex: 1,
    explanation: 'PV = 1,000 × (1 + 0.9091 + 0.8264) = ₹2,736 (approx.).',
  ),
  Question(
    subjectId: 'maths',
    chapter: 'Time Value of Money',
    text: 'The effective annual rate for 8% compounded half-yearly is:',
    options: ['8%', '8.16%', '8.24%', '16%'],
    answerIndex: 1,
    explanation: 'Effective rate = (1.04)² − 1 = 0.0816 = 8.16%.',
  ),
  Question(
    subjectId: 'maths',
    chapter: 'Time Value of Money',
    text:
        'A perpetuity pays ₹100 next year, growing at 5% a year. At a '
        'discount rate of 10%, its present value is:',
    options: ['₹1,000', '₹2,000', '₹666.67', '₹1,500'],
    answerIndex: 1,
    explanation:
        'PV of a growing perpetuity = C ÷ (r − g) = 100 ÷ 0.05 = '
        '₹2,000.',
  ),
  Question(
    subjectId: 'maths',
    chapter: 'Time Value of Money',
    text:
        'A loan of ₹1,00,000 at 12% a year is repaid by annual instalments. '
        'The interest included in the first instalment is:',
    options: ['₹12,000', '₹1,000', '₹6,000', '₹10,000'],
    answerIndex: 0,
    explanation:
        'Interest for the first year is on the full balance: 1,00,000 '
        '× 12% = ₹12,000. Later instalments contain less interest.',
  ),

  // Measures of Central Tendency
  Question(
    subjectId: 'maths',
    chapter: 'Measures of Central Tendency',
    text: 'Marks of 60 (weight 2) and 70 (weight 3) have a weighted mean of:',
    options: ['65', '66', '64', '68'],
    answerIndex: 1,
    explanation: 'Weighted mean = (60 × 2 + 70 × 3) ÷ 5 = 330 ÷ 5 = 66.',
  ),
  Question(
    subjectId: 'maths',
    chapter: 'Measures of Central Tendency',
    text: 'The median of 11, 15, 7, 9, 13, 20 is:',
    options: ['11', '12', '13', '12.5'],
    answerIndex: 1,
    explanation:
        'In order: 7, 9, 11, 13, 15, 20. With 6 items, median = '
        '(11 + 13) ÷ 2 = 12.',
  ),
  Question(
    subjectId: 'maths',
    chapter: 'Measures of Central Tendency',
    text: 'The mean of the first 10 natural numbers is:',
    options: ['5', '5.5', '10', '55'],
    answerIndex: 1,
    explanation: 'Sum = 55, so mean = 55 ÷ 10 = 5.5.',
  ),
  Question(
    subjectId: 'maths',
    chapter: 'Measures of Central Tendency',
    text: 'If 5 is added to every observation, the arithmetic mean:',
    options: [
      'Is unchanged',
      'Increases by 5',
      'Is multiplied by 5',
      'Decreases by 5',
    ],
    answerIndex: 1,
    explanation:
        'The mean is affected by a change of origin: adding a '
        'constant to every value adds it to the mean.',
  ),
  Question(
    subjectId: 'maths',
    chapter: 'Measures of Central Tendency',
    text:
        'Median is 40 and mean is 42. Using the empirical relationship, '
        'the mode is:',
    options: ['36', '38', '44', '46'],
    answerIndex: 0,
    explanation: 'Mode = 3 Median − 2 Mean = 120 − 84 = 36.',
  ),
  Question(
    subjectId: 'maths',
    chapter: 'Measures of Central Tendency',
    text: 'The geometric mean of 1, 3 and 9 is:',
    options: ['3', '4.33', '13', '27'],
    answerIndex: 0,
    explanation: 'GM = (1 × 3 × 9)^(1/3) = 27^(1/3) = 3.',
  ),
  Question(
    subjectId: 'maths',
    chapter: 'Measures of Central Tendency',
    text: 'The harmonic mean of 4 and 12 is:',
    options: ['8', '6', '6.93', '16'],
    answerIndex: 1,
    explanation: 'HM of two numbers = 2ab ÷ (a + b) = 96 ÷ 16 = 6.',
  ),
  Question(
    subjectId: 'maths',
    chapter: 'Measures of Central Tendency',
    text:
        'For any set of positive, unequal numbers, the relationship '
        'between AM, GM and HM is:',
    options: ['AM < GM < HM', 'AM > GM > HM', 'AM = GM = HM', 'GM > AM > HM'],
    answerIndex: 1,
    explanation:
        'AM > GM > HM for unequal positive values. They are equal '
        'only when all values are the same.',
  ),
  Question(
    subjectId: 'maths',
    chapter: 'Measures of Central Tendency',
    text:
        'For 15 observations in ascending order, the third quartile is the '
        'value of the:',
    options: ['11th item', '12th item', '10th item', '8th item'],
    answerIndex: 1,
    explanation: 'Q3 = value of the 3(n + 1) ÷ 4 = 3 × 16 ÷ 4 = 12th item.',
  ),
  Question(
    subjectId: 'maths',
    chapter: 'Measures of Central Tendency',
    text:
        'The mean of 20 observations is 50. One value, 72, was wrongly '
        'read as 27. The correct mean is:',
    options: ['52.25', '47.75', '50', '54.5'],
    answerIndex: 0,
    explanation:
        'Correct sum = 1,000 − 27 + 72 = 1,045. Correct mean = '
        '1,045 ÷ 20 = 52.25.',
  ),

  // Measures of Dispersion
  Question(
    subjectId: 'maths',
    chapter: 'Measures of Dispersion',
    text: 'The variance of 1, 2, 3, 4, 5 is:',
    options: ['1', '2', '2.5', '1.41'],
    answerIndex: 1,
    explanation:
        'Mean = 3. Squared deviations: 4, 1, 0, 1, 4, total 10. '
        'Variance = 10 ÷ 5 = 2.',
  ),
  Question(
    subjectId: 'maths',
    chapter: 'Measures of Dispersion',
    text:
        'Series A has mean 40 and SD 8; series B has mean 50 and SD 12. '
        'Which is more consistent?',
    options: ['A, CV 20%', 'B, CV 24%', 'Both equally', 'Cannot be said'],
    answerIndex: 0,
    explanation:
        'CV of A = 8 ÷ 40 = 20%; CV of B = 12 ÷ 50 = 24%. Lower CV '
        'means more consistent.',
  ),
  Question(
    subjectId: 'maths',
    chapter: 'Measures of Dispersion',
    text: 'The variance of a series is 2.25. Its standard deviation is:',
    options: ['1.5', '5.06', '1.125', '0.75'],
    answerIndex: 0,
    explanation: 'SD = √Variance = √2.25 = 1.5.',
  ),
  Question(
    subjectId: 'maths',
    chapter: 'Measures of Dispersion',
    text:
        'For a normal distribution, the quartile deviation is '
        'approximately:',
    options: [
      '2/3 of the SD',
      '4/5 of the SD',
      'Equal to the SD',
      'Twice the SD',
    ],
    answerIndex: 0,
    explanation:
        'For a normal distribution, QD ≈ 2/3 σ and mean deviation ≈ '
        '4/5 σ.',
  ),
  Question(
    subjectId: 'maths',
    chapter: 'Measures of Dispersion',
    text: 'Q1 is 30 and Q3 is 50. The coefficient of quartile deviation is:',
    options: ['0.25', '10', '0.4', '0.6'],
    answerIndex: 0,
    explanation: 'Coefficient = (Q3 − Q1) ÷ (Q3 + Q1) = 20 ÷ 80 = 0.25.',
  ),
  Question(
    subjectId: 'maths',
    chapter: 'Measures of Dispersion',
    text: 'Q1 is 25 and Q3 is 45. The interquartile range is:',
    options: ['10', '20', '35', '70'],
    answerIndex: 1,
    explanation:
        'Interquartile range = Q3 − Q1 = 20. Quartile deviation is '
        'half of this, 10.',
  ),
  Question(
    subjectId: 'maths',
    chapter: 'Measures of Dispersion',
    text: 'The mean deviation from the median of 1, 3, 5, 7, 9 is:',
    options: ['2', '2.4', '3', '4'],
    answerIndex: 1,
    explanation:
        'Median = 5. Absolute deviations: 4, 2, 0, 2, 4, total 12. MD '
        '= 12 ÷ 5 = 2.4.',
  ),
  Question(
    subjectId: 'maths',
    chapter: 'Measures of Dispersion',
    text: 'The variance of X is 9. The variance of 2X is:',
    options: ['18', '36', '9', '81'],
    answerIndex: 1,
    explanation: 'Var(aX) = a² Var(X) = 4 × 9 = 36.',
  ),
  Question(
    subjectId: 'maths',
    chapter: 'Measures of Dispersion',
    text: 'The standard deviation of a data set is always:',
    options: [
      'Negative',
      'Non-negative',
      'Greater than the mean',
      'Equal to the range',
    ],
    answerIndex: 1,
    explanation:
        'SD is the square root of an average of squared deviations, '
        'so it cannot be negative. It is zero only when all values are equal.',
  ),
  Question(
    subjectId: 'maths',
    chapter: 'Measures of Dispersion',
    text: 'The Lorenz curve is used to study:',
    options: [
      'Correlation',
      'Inequality in a distribution, such as income',
      'Time series trends',
      'Index numbers',
    ],
    answerIndex: 1,
    explanation:
        'The Lorenz curve is a graphic measure of dispersion. The '
        'further it lies from the line of equality, the greater the '
        'inequality.',
  ),

  // Correlation & Regression
  Question(
    subjectId: 'maths',
    chapter: 'Correlation & Regression',
    text: 'Which pair is likely to show positive correlation?',
    options: [
      'Price and demand',
      'Height and weight of adults',
      'Speed and travel time',
      'Temperature and sales of woollens',
    ],
    answerIndex: 1,
    explanation:
        'Height and weight tend to rise together. The other pairs '
        'move in opposite directions.',
  ),
  Question(
    subjectId: 'maths',
    chapter: 'Correlation & Regression',
    text:
        'Covariance of X and Y is 12, σx = 3 and σy = 5. The correlation '
        'coefficient is:',
    options: ['0.8', '0.4', '1.25', '0.6'],
    answerIndex: 0,
    explanation: 'r = Cov ÷ (σx σy) = 12 ÷ 15 = 0.8.',
  ),
  Question(
    subjectId: 'maths',
    chapter: 'Correlation & Regression',
    text:
        'r = 0.6, σx = 2 and σy = 4. The regression coefficient of Y on X '
        'is:',
    options: ['0.3', '1.2', '0.6', '2.4'],
    answerIndex: 1,
    explanation: 'b_yx = r σy ÷ σx = 0.6 × 4 ÷ 2 = 1.2.',
  ),
  Question(
    subjectId: 'maths',
    chapter: 'Correlation & Regression',
    text:
        'r = 0.8 for 36 pairs of observations. The probable error of r is '
        'approximately:',
    options: ['0.0405', '0.06', '0.0135', '0.36'],
    answerIndex: 0,
    explanation: 'PE = 0.6745 × (1 − r²) ÷ √n = 0.6745 × 0.36 ÷ 6 = 0.0405.',
  ),
  Question(
    subjectId: 'maths',
    chapter: 'Correlation & Regression',
    text:
        'The regression line of Y on X is Y = 2X + 3. The estimated Y when '
        'X = 5 is:',
    options: ['10', '13', '8', '16'],
    answerIndex: 1,
    explanation: 'Y = 2 × 5 + 3 = 13.',
  ),
  Question(
    subjectId: 'maths',
    chapter: 'Correlation & Regression',
    text:
        'The two regression coefficients and the correlation coefficient '
        'always have:',
    options: [
      'Opposite signs',
      'The same sign',
      'Values greater than 1',
      'Zero sum',
    ],
    answerIndex: 1,
    explanation:
        'All three share the sign of the covariance, and r is the '
        'geometric mean of the two regression coefficients.',
  ),
  Question(
    subjectId: 'maths',
    chapter: 'Correlation & Regression',
    text:
        'If the two regression lines coincide, the correlation '
        'coefficient is:',
    options: ['0', '±1', '0.5', 'Undefined'],
    answerIndex: 1,
    explanation:
        'The lines coincide only when correlation is perfect, '
        'positive or negative.',
  ),
  Question(
    subjectId: 'maths',
    chapter: 'Correlation & Regression',
    text: 'The correlation coefficient is:',
    options: [
      'Affected by change of origin',
      'Independent of change of origin and scale',
      'Affected by change of scale only',
      'Always positive',
    ],
    answerIndex: 1,
    explanation:
        'Adding constants or multiplying by positive constants does '
        'not change r (a negative multiplier only changes its sign).',
  ),
  Question(
    subjectId: 'maths',
    chapter: 'Correlation & Regression',
    text: 'A scatter diagram is used to:',
    options: [
      'Calculate the exact value of r',
      'Show the relationship between two variables visually',
      'Find the mean',
      'Construct index numbers',
    ],
    answerIndex: 1,
    explanation:
        'Plotting the pairs shows the direction and rough strength of '
        'correlation, but not its exact value.',
  ),
  Question(
    subjectId: 'maths',
    chapter: 'Correlation & Regression',
    text: 'For 6 pairs of ranks, Σd² = 14. Spearman\'s rank correlation is:',
    options: ['0.6', '0.4', '0.8', '0.2'],
    answerIndex: 0,
    explanation: 'ρ = 1 − 6Σd² ÷ [n(n² − 1)] = 1 − 84 ÷ 210 = 0.6.',
  ),

  // Index Numbers
  Question(
    subjectId: 'maths',
    chapter: 'Index Numbers',
    text: 'Laspeyres\' quantity index is calculated as:',
    options: [
      'Σq₁p₀ ÷ Σq₀p₀ × 100',
      'Σq₁p₁ ÷ Σq₀p₁ × 100',
      'Σp₁q₀ ÷ Σp₀q₀ × 100',
      'Σq₁ ÷ Σq₀ × 100',
    ],
    answerIndex: 0,
    explanation:
        'A Laspeyres quantity index weights quantities by base-year '
        'prices.',
  ),
  Question(
    subjectId: 'maths',
    chapter: 'Index Numbers',
    text:
        'With 2020 = 100, the index is 120 in 2023 and 150 in 2025. If the '
        'base is shifted to 2023, the 2025 index is:',
    options: ['125', '130', '180', '30'],
    answerIndex: 0,
    explanation: 'New index = 150 ÷ 120 × 100 = 125.',
  ),
  Question(
    subjectId: 'maths',
    chapter: 'Index Numbers',
    text: 'Which index number satisfies the factor reversal test?',
    options: ['Laspeyres', 'Paasche', 'Fisher', 'Simple aggregative'],
    answerIndex: 2,
    explanation:
        'Fisher\'s ideal index satisfies both the time reversal and '
        'factor reversal tests.',
  ),
  Question(
    subjectId: 'maths',
    chapter: 'Index Numbers',
    text: 'The Marshall-Edgeworth price index uses as weights:',
    options: [
      'Base-year quantities',
      'Current-year quantities',
      'The sum of base and current quantities',
      'Base-year prices',
    ],
    answerIndex: 2,
    explanation:
        'It uses (q₀ + q₁) as weights: Σp₁(q₀ + q₁) ÷ Σp₀(q₀ + q₁) × '
        '100.',
  ),
  Question(
    subjectId: 'maths',
    chapter: 'Index Numbers',
    text:
        'Price relatives of 120 (weight 3) and 110 (weight 2) give a '
        'weighted index of:',
    options: ['115', '116', '114', '118'],
    answerIndex: 1,
    explanation: 'Weighted index = (120 × 3 + 110 × 2) ÷ 5 = 580 ÷ 5 = 116.',
  ),
  Question(
    subjectId: 'maths',
    chapter: 'Index Numbers',
    text:
        'If the consumer price index is 125, the purchasing power of a '
        'rupee compared with the base year is:',
    options: ['₹1.25', '₹0.80', '₹0.75', '₹1.00'],
    answerIndex: 1,
    explanation: 'Purchasing power = 100 ÷ 125 = ₹0.80.',
  ),
  Question(
    subjectId: 'maths',
    chapter: 'Index Numbers',
    text: 'Chain base index numbers are built from:',
    options: [
      'Fixed base prices',
      'Link relatives',
      'Quantity weights only',
      'Current-year prices only',
    ],
    answerIndex: 1,
    explanation:
        'Each link relative compares a year with the previous year; '
        'chaining them gives the chain index.',
  ),
  Question(
    subjectId: 'maths',
    chapter: 'Index Numbers',
    text: 'The price of an item falls from ₹80 to ₹60. The price relative is:',
    options: ['133.33', '75', '25', '60'],
    answerIndex: 1,
    explanation: 'Price relative = 60 ÷ 80 × 100 = 75.',
  ),
  Question(
    subjectId: 'maths',
    chapter: 'Index Numbers',
    text:
        'The aggregate expenditure method of a cost of living index uses '
        'weights of:',
    options: [
      'Current-year quantities',
      'Base-year quantities',
      'Average prices',
      'No weights',
    ],
    answerIndex: 1,
    explanation:
        'It is a Laspeyres-type index: Σp₁q₀ ÷ Σp₀q₀ × 100, using the '
        'base-year consumption basket.',
  ),
  Question(
    subjectId: 'maths',
    chapter: 'Index Numbers',
    text:
        'Sales are ₹5,00,000 and the price index is 125. Sales at base-year '
        'prices (deflated) are:',
    options: ['₹6,25,000', '₹4,00,000', '₹3,75,000', '₹5,00,000'],
    answerIndex: 1,
    explanation: 'Deflated value = 5,00,000 × 100 ÷ 125 = ₹4,00,000.',
  ),

  // Probability
  Question(
    subjectId: 'maths',
    chapter: 'Probability',
    text:
        'A card is drawn from a pack of 52. The probability that it is a '
        'king or a heart is:',
    options: ['17/52', '4/13', '1/13', '1/4'],
    answerIndex: 1,
    explanation: 'P = 4/52 + 13/52 − 1/52 (king of hearts) = 16/52 = 4/13.',
  ),
  Question(
    subjectId: 'maths',
    chapter: 'Probability',
    text:
        'Three fair coins are tossed. The probability of exactly 2 heads '
        'is:',
    options: ['1/2', '3/8', '1/4', '1/8'],
    answerIndex: 1,
    explanation: 'Outcomes HHT, HTH, THH: 3 of 8, so 3/8.',
  ),
  Question(
    subjectId: 'maths',
    chapter: 'Probability',
    text: 'P(A and B) = 0.12 and P(B) = 0.4. P(A given B) is:',
    options: ['0.048', '0.3', '0.52', '0.28'],
    answerIndex: 1,
    explanation: 'P(A | B) = P(A ∩ B) ÷ P(B) = 0.12 ÷ 0.4 = 0.3.',
  ),
  Question(
    subjectId: 'maths',
    chapter: 'Probability',
    text: 'The odds in favour of an event are 3 : 5. Its probability is:',
    options: ['3/5', '3/8', '5/8', '2/5'],
    answerIndex: 1,
    explanation: 'Odds of a : b in favour give P = a ÷ (a + b) = 3/8.',
  ),
  Question(
    subjectId: 'maths',
    chapter: 'Probability',
    text: 'The expected value of the number shown on a fair die is:',
    options: ['3', '3.5', '6', '21'],
    answerIndex: 1,
    explanation: 'E = (1 + 2 + 3 + 4 + 5 + 6) ÷ 6 = 21 ÷ 6 = 3.5.',
  ),
  Question(
    subjectId: 'maths',
    chapter: 'Probability',
    text:
        'For a binomial distribution with n = 10 and p = 0.4, the variance '
        'is:',
    options: ['4', '2.4', '6', '1.55'],
    answerIndex: 1,
    explanation: 'Variance = npq = 10 × 0.4 × 0.6 = 2.4. The mean is np = 4.',
  ),
  Question(
    subjectId: 'maths',
    chapter: 'Probability',
    text: 'In a Poisson distribution:',
    options: [
      'Mean is greater than variance',
      'Mean equals variance',
      'Variance is zero',
      'Mean is always 1',
    ],
    answerIndex: 1,
    explanation:
        'Both the mean and the variance of a Poisson distribution are '
        'equal to its parameter m (λ).',
  ),
  Question(
    subjectId: 'maths',
    chapter: 'Probability',
    text:
        'In a normal distribution, the area within one standard deviation '
        'of the mean is about:',
    options: ['50%', '68.27%', '95.45%', '99.73%'],
    answerIndex: 1,
    explanation:
        'About 68.27% lies within μ ± σ, 95.45% within μ ± 2σ and '
        '99.73% within μ ± 3σ.',
  ),
  Question(
    subjectId: 'maths',
    chapter: 'Probability',
    text:
        'Two cards are drawn without replacement from a pack of 52. The '
        'probability that both are aces is:',
    options: ['1/169', '1/221', '1/26', '2/13'],
    answerIndex: 1,
    explanation: 'P = 4/52 × 3/51 = 12/2,652 = 1/221.',
  ),
  Question(
    subjectId: 'maths',
    chapter: 'Probability',
    text:
        'A fair coin is tossed 3 times. The probability of getting no head '
        'is:',
    options: ['1/8', '1/3', '3/8', '1/6'],
    answerIndex: 0,
    explanation: 'P(TTT) = (1/2)³ = 1/8.',
  ),
];
