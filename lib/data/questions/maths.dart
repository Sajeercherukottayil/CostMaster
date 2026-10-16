import '../../models/question.dart';

const mathsQuestions = [
  // Ratio, proportion, indices, logarithms
  Question(
    subjectId: 'maths',
    text: 'If a : b = 2 : 3 and b : c = 4 : 5, then a : b : c is:',
    options: ['2 : 3 : 5', '8 : 12 : 15', '8 : 12 : 5', '2 : 12 : 15'],
    answerIndex: 1,
    explanation: 'Make b common: a : b = 8 : 12 and b : c = 12 : 15, so a : b : c = 8 : 12 : 15.',
  ),
  Question(
    subjectId: 'maths',
    text: 'The duplicate ratio of 3 : 4 is:',
    options: ['6 : 8', '27 : 64', '9 : 16', '√3 : 2'],
    answerIndex: 2,
    explanation: 'Duplicate ratio is the ratio of squares: 3² : 4² = 9 : 16.',
  ),
  Question(
    subjectId: 'maths',
    text: 'The fourth proportional to 4, 6 and 10 is:',
    options: ['12', '20', '24', '15'],
    answerIndex: 3,
    explanation: '4 : 6 = 10 : x, so x = 6 × 10 / 4 = 15.',
  ),
  Question(
    subjectId: 'maths',
    text: 'The mean proportional between 4 and 16 is:',
    options: ['8', '10', '12', '64'],
    answerIndex: 0,
    explanation: 'Mean proportional = √(4 × 16) = √64 = 8.',
  ),
  Question(
    subjectId: 'maths',
    text: 'The value of 27^(2/3) is:',
    options: ['18', '3', '9', '6'],
    answerIndex: 2,
    explanation: '27^(2/3) = (27^(1/3))² = 3² = 9.',
  ),
  Question(
    subjectId: 'maths',
    text: 'If log 2 = 0.3010, then log 8 is:',
    options: ['0.6020', '0.9030', '2.4080', '1.2040'],
    answerIndex: 1,
    explanation: 'log 8 = log 2³ = 3 × 0.3010 = 0.9030.',
  ),
  Question(
    subjectId: 'maths',
    text: 'The value of log₂ 32 is:',
    options: ['16', '4', '6', '5'],
    answerIndex: 3,
    explanation: '2⁵ = 32, so log₂ 32 = 5.',
  ),

  // Equations and progressions
  Question(
    subjectId: 'maths',
    text: 'The roots of x² − 5x + 6 = 0 are:',
    options: ['2 and 3', '−2 and −3', '1 and 6', '−1 and −6'],
    answerIndex: 0,
    explanation: 'x² − 5x + 6 = (x − 2)(x − 3) = 0, so x = 2 or x = 3.',
  ),
  Question(
    subjectId: 'maths',
    text: 'The sum of the roots of 2x² − 8x + 3 = 0 is:',
    options: ['−4', '3/2', '4', '8'],
    answerIndex: 2,
    explanation: 'Sum of roots = −b/a = −(−8)/2 = 4. (Product = c/a = 3/2.)',
  ),
  Question(
    subjectId: 'maths',
    text: 'The 10th term of the AP 3, 7, 11, … is:',
    options: ['43', '39', '40', '36'],
    answerIndex: 1,
    explanation: 'tₙ = a + (n − 1)d = 3 + 9 × 4 = 39.',
  ),
  Question(
    subjectId: 'maths',
    text: 'The sum of the first 20 natural numbers is:',
    options: ['200', '420', '210', '190'],
    answerIndex: 2,
    explanation: 'Sum = n(n + 1)/2 = 20 × 21 / 2 = 210.',
  ),
  Question(
    subjectId: 'maths',
    text: 'The 6th term of the GP 2, 6, 18, … is:',
    options: ['162', '1,458', '243', '486'],
    answerIndex: 3,
    explanation: 'tₙ = arⁿ⁻¹ = 2 × 3⁵ = 2 × 243 = 486.',
  ),

  // Permutations and combinations
  Question(
    subjectId: 'maths',
    text: 'The value of ⁵C₂ is:',
    options: ['20', '10', '5', '60'],
    answerIndex: 1,
    explanation: '⁵C₂ = 5! / (2! × 3!) = 120 / 12 = 10.',
  ),
  Question(
    subjectId: 'maths',
    text: 'The value of ⁶P₂ is:',
    options: ['30', '15', '12', '36'],
    answerIndex: 0,
    explanation: '⁶P₂ = 6! / 4! = 6 × 5 = 30.',
  ),
  Question(
    subjectId: 'maths',
    text: 'In how many ways can the letters of the word RATIO be arranged?',
    options: ['60', '24', '720', '120'],
    answerIndex: 3,
    explanation: 'All 5 letters are different, so arrangements = 5! = 120.',
  ),

  // Time value of money
  Question(
    subjectId: 'maths',
    text: 'Simple interest on ₹10,000 at 8% p.a. for 3 years is:',
    options: ['₹2,400', '₹2,597', '₹800', '₹3,000'],
    answerIndex: 0,
    explanation: 'SI = P × R × T / 100 = 10,000 × 8 × 3 / 100 = ₹2,400.',
  ),
  Question(
    subjectId: 'maths',
    text: 'The amount of ₹10,000 at 10% p.a. compound interest after 2 years is:',
    options: ['₹12,000', '₹12,100', '₹12,210', '₹11,000'],
    answerIndex: 1,
    explanation: 'A = P(1 + r)ⁿ = 10,000 × 1.1² = ₹12,100.',
  ),
  Question(
    subjectId: 'maths',
    text: 'The effective annual rate for 12% p.a. compounded quarterly is '
        'approximately:',
    options: ['12.00%', '12.36%', '12.55%', '12.68%'],
    answerIndex: 2,
    explanation: 'Effective rate = (1 + 0.12/4)⁴ − 1 = 1.03⁴ − 1 ≈ 12.55%. '
        '(12.36% is half-yearly and 12.68% is monthly compounding.)',
  ),
  Question(
    subjectId: 'maths',
    text: 'The present value of ₹11,000 receivable after 1 year at 10% p.a. is:',
    options: ['₹9,900', '₹10,000', '₹10,100', '₹9,000'],
    answerIndex: 1,
    explanation: 'PV = 11,000 / 1.10 = ₹10,000.',
  ),

  // Statistics
  Question(
    subjectId: 'maths',
    text: 'The arithmetic mean of 2, 4, 6, 8 and 10 is:',
    options: ['5', '6', '7', '30'],
    answerIndex: 1,
    explanation: 'Mean = (2 + 4 + 6 + 8 + 10) / 5 = 30 / 5 = 6.',
  ),
  Question(
    subjectId: 'maths',
    text: 'The median of 3, 7, 9, 1 and 5 is:',
    options: ['9', '7', '5', '3'],
    answerIndex: 2,
    explanation: 'Arranged in order: 1, 3, 5, 7, 9. The middle (3rd) value is 5.',
  ),
  Question(
    subjectId: 'maths',
    text: 'The harmonic mean of 2 and 6 is:',
    options: ['4', '3.46', '12', '3'],
    answerIndex: 3,
    explanation: 'HM of two numbers = 2ab / (a + b) = 2 × 2 × 6 / 8 = 3.',
  ),
  Question(
    subjectId: 'maths',
    text: 'In a moderately skewed distribution, median = 20 and mean = 22. '
        'The mode is approximately:',
    options: ['16', '18', '24', '26'],
    answerIndex: 0,
    explanation: 'Mode = 3 Median − 2 Mean = 60 − 44 = 16.',
  ),
  Question(
    subjectId: 'maths',
    text: 'The standard deviation of 5, 5, 5, 5, 5 is:',
    options: ['5', '1', '25', '0'],
    answerIndex: 3,
    explanation: 'All values equal the mean, so there is no dispersion: SD = 0.',
  ),
  Question(
    subjectId: 'maths',
    text: 'The largest value in a data set is 50 and the smallest is 10. The '
        'coefficient of range is approximately:',
    options: ['40', '0.67', '0.80', '1.50'],
    answerIndex: 1,
    explanation: 'Coefficient of range = (L − S) / (L + S) = 40 / 60 ≈ 0.67.',
  ),
  Question(
    subjectId: 'maths',
    text: 'The coefficient of correlation always lies between:',
    options: ['0 and 1', '−1 and 0', '−1 and +1', '−∞ and +∞'],
    answerIndex: 2,
    explanation: 'r ranges from −1 (perfect negative) to +1 (perfect positive) '
        'correlation.',
  ),
  Question(
    subjectId: 'maths',
    text: 'The regression coefficients are bxy = 0.8 and byx = 0.45. The '
        'coefficient of correlation is:',
    options: ['0.36', '0.6', '1.25', '0.8'],
    answerIndex: 1,
    explanation: 'r = √(bxy × byx) = √0.36 = 0.6, positive because both '
        'regression coefficients are positive.',
  ),
  Question(
    subjectId: 'maths',
    text: 'Laspeyres\' price index uses as weights the:',
    options: [
      'Current year quantities',
      'Average of base and current year quantities',
      'Base year prices',
      'Base year quantities',
    ],
    answerIndex: 3,
    explanation: 'Laspeyres = Σp₁q₀ / Σp₀q₀ × 100, weighted by base year '
        'quantities. Paasche uses current year quantities.',
  ),

  // Probability
  Question(
    subjectId: 'maths',
    text: 'Two fair dice are thrown. The probability that the sum is 7 is:',
    options: ['1/12', '7/36', '1/6', '1/9'],
    answerIndex: 2,
    explanation: 'Favourable outcomes: (1,6), (2,5), (3,4), (4,3), (5,2), (6,1) = 6 of 36, i.e. 1/6.',
  ),
  Question(
    subjectId: 'maths',
    text: 'A card is drawn at random from a well-shuffled pack of 52 cards. The '
        'probability that it is an ace is:',
    options: ['1/13', '1/52', '1/4', '4/13'],
    answerIndex: 0,
    explanation: 'There are 4 aces in 52 cards: 4/52 = 1/13.',
  ),
];
