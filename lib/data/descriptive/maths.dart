import '../../models/question.dart';

const mathsDescriptive = [
  DescriptiveQuestion(
    subjectId: 'maths',
    chapter: 'Ratio & Proportion',
    text:
        'If A : B = 2 : 3 and B : C = 4 : 5, find A : B : C. Divide ₹7,000 '
        'among A, B and C in this ratio.',
    marks: 4,
    answer:
        'Make B the same in both ratios. The LCM of 3 and 4 is 12.\n'
        '• A : B = 2 : 3 = 8 : 12\n'
        '• B : C = 4 : 5 = 12 : 15\n'
        'So A : B : C = 8 : 12 : 15, and the sum of the parts is 35.\n'
        '• A = 7,000 × 8/35 = ₹1,600\n'
        '• B = 7,000 × 12/35 = ₹2,400\n'
        '• C = 7,000 × 15/35 = ₹3,000\n'
        'Check: 1,600 + 2,400 + 3,000 = ₹7,000.',
    problem: true,
  ),
  DescriptiveQuestion(
    subjectId: 'maths',
    chapter: 'Indices & Logarithms',
    text:
        'State the laws of logarithms. Given log 2 = 0.3010 and log 3 = '
        '0.4771, find log 72.',
    marks: 4,
    answer:
        'Laws of logarithms (to any base a):\n'
        '• Product: log (mn) = log m + log n\n'
        '• Quotient: log (m/n) = log m − log n\n'
        '• Power: log (mⁿ) = n log m\n'
        '• Change of base: logₐ m = log m ÷ log a, with both logs on the '
        'right taken to the same base\n'
        'Also, logₐ 1 = 0 and logₐ a = 1.\n'
        'log 72 = log (8 × 9) = log 2³ + log 3² = 3 log 2 + 2 log 3\n'
        '= 3 × 0.3010 + 2 × 0.4771 = 0.9030 + 0.9542 = 1.8572',
  ),
  DescriptiveQuestion(
    subjectId: 'maths',
    chapter: 'Equations',
    text:
        'Solve x² − 5x + 6 = 0, and use the discriminant to describe the '
        'nature of its roots.',
    marks: 4,
    answer:
        'Factorise: x² − 5x + 6 = x² − 2x − 3x + 6 = (x − 2)(x − 3) = 0, '
        'so x = 2 or x = 3.\n'
        'For ax² + bx + c = 0, the discriminant is D = b² − 4ac. Here a = 1, '
        'b = −5, c = 6, so D = 25 − 24 = 1.\n'
        '• D > 0: roots are real and unequal.\n'
        '• D is a perfect square and a, b, c are rational: roots are '
        'rational.\n'
        'So the roots are real, rational and unequal, which matches 2 and 3.\n'
        '(If D = 0 the roots are real and equal; if D < 0 they are not real.)',
    problem: true,
  ),
  DescriptiveQuestion(
    subjectId: 'maths',
    chapter: 'Sequence & Series',
    text:
        'For the arithmetic progression 3, 7, 11, 15, …, find the 20th '
        'term and the sum of the first 20 terms.',
    marks: 4,
    answer:
        'First term a = 3, common difference d = 7 − 3 = 4, n = 20.\n'
        '• nth term: tₙ = a + (n − 1)d, so t₂₀ = 3 + 19 × 4 = 79\n'
        '• Sum: Sₙ = n/2 [2a + (n − 1)d], so S₂₀ = 20/2 × [6 + 76] = 10 × 82 '
        '= 820\n'
        'Check: Sₙ = n/2 × (first term + last term) = 10 × (3 + 79) = 820.',
  ),
  DescriptiveQuestion(
    subjectId: 'maths',
    chapter: 'Permutations & Combinations',
    text:
        'Distinguish between a permutation and a combination. In how many '
        'ways can a committee of 3 men and 2 women be chosen from 6 men and '
        '5 women?',
    marks: 5,
    answer:
        'A permutation is an arrangement, where order matters: ⁿPᵣ = '
        'n! ÷ (n − r)!. A combination is a selection, where order does not '
        'matter: ⁿCᵣ = n! ÷ [r! (n − r)!]. A committee is a selection, so '
        'combinations are used.\n'
        '• Ways to choose 3 men from 6 = ⁶C₃ = 6 × 5 × 4 ÷ (3 × 2 × 1) = 20\n'
        '• Ways to choose 2 women from 5 = ⁵C₂ = 5 × 4 ÷ (2 × 1) = 10\n'
        'By the multiplication rule, the number of committees = 20 × 10 '
        '= 200.',
  ),
  DescriptiveQuestion(
    subjectId: 'maths',
    chapter: 'Time Value of Money',
    text:
        'Find the amount and compound interest on ₹10,000 at 10% per annum '
        'compounded annually for 3 years. What is the effective annual rate '
        'if 10% is compounded half-yearly?',
    marks: 5,
    answer:
        '• Amount A = P (1 + r)ⁿ = 10,000 × (1.10)³ = 10,000 × 1.331 '
        '= ₹13,310\n'
        '• Compound interest = 13,310 − 10,000 = ₹3,310\n'
        'Half-yearly compounding: the rate per half-year is 5%, with 2 '
        'periods a year.\n'
        '• Effective rate = (1 + 0.05)² − 1 = 1.1025 − 1 = 0.1025 = 10.25% '
        'per annum\n'
        'The effective rate is higher than the nominal rate because interest '
        'earns interest within the year.',
    problem: true,
  ),
  DescriptiveQuestion(
    subjectId: 'maths',
    chapter: 'Measures of Central Tendency',
    text: 'Find the mean, median and mode of: 6, 3, 9, 6, 13, 5, 7.',
    marks: 4,
    answer:
        'Arrange in order: 3, 5, 6, 6, 7, 9, 13 (n = 7).\n'
        '• Mean = Σx ÷ n = 49 ÷ 7 = 7\n'
        '• Median = value of the (n + 1)/2 = 4th item = 6\n'
        '• Mode = the most frequent value = 6 (it occurs twice)\n'
        'The mean is above the median and mode because the value 13 pulls it '
        'up, so the data is positively skewed.',
    problem: true,
  ),
  DescriptiveQuestion(
    subjectId: 'maths',
    chapter: 'Measures of Dispersion',
    text:
        'Calculate the standard deviation and coefficient of variation of: '
        '2, 4, 6, 8, 10.',
    marks: 5,
    answer:
        '• Mean = (2 + 4 + 6 + 8 + 10) ÷ 5 = 30 ÷ 5 = 6\n'
        '• Deviations from mean: −4, −2, 0, 2, 4\n'
        '• Squared deviations: 16, 4, 0, 4, 16; total = 40\n'
        '• Variance = 40 ÷ 5 = 8\n'
        '• Standard deviation = √8 = 2.83 (approx.)\n'
        '• Coefficient of variation = SD ÷ Mean × 100 = 2.83 ÷ 6 × 100 '
        '= 47.14%\n'
        'The CV is a relative measure, used to compare the variability of '
        'series with different means or units.',
    problem: true,
  ),
  DescriptiveQuestion(
    subjectId: 'maths',
    chapter: 'Correlation & Regression',
    text: 'Distinguish between correlation and regression.',
    marks: 4,
    answer:
        '• Meaning: correlation measures the degree and direction of the '
        'relationship between two variables; regression gives an equation to '
        'estimate one variable from the other.\n'
        '• Dependence: correlation treats both variables alike; regression '
        'separates a dependent and an independent variable.\n'
        '• Symmetry: r between x and y is the same as between y and x; the '
        'regression of y on x differs from that of x on y.\n'
        '• Range: r lies between −1 and +1; regression coefficients have no '
        'such limit, though their product equals r².\n'
        '• Units: r has no units; a regression coefficient is in the units '
        'of the variables.\n'
        '• Cause: correlation does not show cause and effect; regression is '
        'used where one variable is assumed to influence the other.',
  ),
  DescriptiveQuestion(
    subjectId: 'maths',
    chapter: 'Index Numbers',
    text:
        'Compute the Laspeyres, Paasche and Fisher price index numbers. '
        'Commodity A: base price ₹10, base quantity 5, current price ₹12, '
        'current quantity 6. Commodity B: base price ₹8, base quantity 10, '
        'current price ₹10, current quantity 8.',
    marks: 6,
    answer:
        'Σp₁q₀ = 12×5 + 10×10 = 160; Σp₀q₀ = 10×5 + 8×10 = 130\n'
        'Σp₁q₁ = 12×6 + 10×8 = 152; Σp₀q₁ = 10×6 + 8×8 = 124\n'
        '• Laspeyres = Σp₁q₀ ÷ Σp₀q₀ × 100 = 160 ÷ 130 × 100 = 123.08\n'
        '• Paasche = Σp₁q₁ ÷ Σp₀q₁ × 100 = 152 ÷ 124 × 100 = 122.58\n'
        '• Fisher = √(Laspeyres × Paasche) = √(123.08 × 122.58) = 122.83\n'
        'Fisher\'s index is called the "ideal" index because it satisfies '
        'both the time reversal and factor reversal tests.',
    problem: true,
  ),
  DescriptiveQuestion(
    subjectId: 'maths',
    chapter: 'Probability',
    text:
        'Two fair dice are thrown. Find the probability that (a) the sum '
        'is 8, and (b) at least one die shows a six.',
    marks: 4,
    answer:
        'There are 6 × 6 = 36 equally likely outcomes.\n'
        '(a) Sum of 8: (2,6), (3,5), (4,4), (5,3), (6,2), which is 5 '
        'outcomes. P = 5/36.\n'
        '(b) Use the complement. P(no six on either die) = 5/6 × 5/6 = 25/36. '
        'So P(at least one six) = 1 − 25/36 = 11/36.\n'
        'Check by counting: 6 outcomes with a six on the first die, 6 on the '
        'second, minus (6,6) counted twice, gives 11.',
    problem: true,
  ),
];
