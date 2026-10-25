import '../../../models/question.dart';

const mathsMoreDescriptive = [
  // Ratio & Proportion
  DescriptiveQuestion(
    subjectId: 'maths',
    chapter: 'Ratio & Proportion',
    text:
        'Divide ₹3,120 among A, B and C so that 2 times A\'s share = 3 '
        'times B\'s share = 4 times C\'s share.',
    marks: 4,
    problem: true,
    answer:
        'If 2A = 3B = 4C = k, then A = k/2, B = k/3, C = k/4.\n'
        '• A : B : C = 1/2 : 1/3 : 1/4. Multiply by 12: 6 : 4 : 3\n'
        '• Sum of parts = 13; each part = 3,120 ÷ 13 = 240\n'
        '• A = 6 × 240 = ₹1,440; B = 4 × 240 = ₹960; C = 3 × 240 = ₹720\n'
        'Check: 2 × 1,440 = 3 × 960 = 4 × 720 = 2,880.',
  ),
  DescriptiveQuestion(
    subjectId: 'maths',
    chapter: 'Ratio & Proportion',
    text:
        'In what ratio must rice at ₹50 per kg be mixed with rice at ₹60 '
        'per kg to get a mixture worth ₹54 per kg? How much of each is needed '
        'for 50 kg of mixture?',
    marks: 4,
    problem: true,
    answer:
        'By the rule of alligation:\n'
        '• Cheaper : Dearer = (60 − 54) : (54 − 50) = 6 : 4 = 3 : 2\n'
        '• For 50 kg: cheaper rice = 50 × 3/5 = 30 kg; dearer = 20 kg\n'
        'Check: (30 × 50 + 20 × 60) ÷ 50 = (1,500 + 1,200) ÷ 50 = ₹54 per kg.',
  ),

  // Indices & Logarithms
  DescriptiveQuestion(
    subjectId: 'maths',
    chapter: 'Indices & Logarithms',
    text: 'Solve 3^(x + 2) + 3ˣ = 90.',
    marks: 3,
    problem: true,
    answer:
        '• 3^(x + 2) = 3ˣ × 3² = 9 × 3ˣ\n'
        '• So 9 × 3ˣ + 3ˣ = 90, giving 10 × 3ˣ = 90 and 3ˣ = 9\n'
        '• 9 = 3², so x = 2\n'
        'Check: 3⁴ + 3² = 81 + 9 = 90.',
  ),
  DescriptiveQuestion(
    subjectId: 'maths',
    chapter: 'Indices & Logarithms',
    text: 'If log [(a + b) ÷ 3] = ½ (log a + log b), show that a² + b² = 7ab.',
    marks: 4,
    problem: true,
    answer:
        '• ½ (log a + log b) = ½ log (ab) = log √(ab)\n'
        '• So log [(a + b) ÷ 3] = log √(ab), and (a + b) ÷ 3 = √(ab)\n'
        '• Square both sides: (a + b)² = 9ab\n'
        '• a² + 2ab + b² = 9ab, so a² + b² = 7ab',
  ),

  // Equations
  DescriptiveQuestion(
    subjectId: 'maths',
    chapter: 'Equations',
    text:
        'Find the values of k for which x² + kx + 16 = 0 has equal roots, '
        'and find the roots in each case.',
    marks: 4,
    problem: true,
    answer:
        'For equal roots, the discriminant must be zero: b² − 4ac = 0.\n'
        '• k² − 4 × 1 × 16 = 0, so k² = 64 and k = ±8\n'
        '• k = 8: x² + 8x + 16 = (x + 4)² = 0, so both roots are −4\n'
        '• k = −8: x² − 8x + 16 = (x − 4)² = 0, so both roots are 4',
  ),
  DescriptiveQuestion(
    subjectId: 'maths',
    chapter: 'Equations',
    text:
        'The sum of the digits of a two-digit number is 9. When the digits '
        'are reversed, the number increases by 27. Find the number.',
    marks: 4,
    problem: true,
    answer:
        'Let the tens digit be x and the units digit y. The number is '
        '10x + y.\n'
        '• x + y = 9 … (1)\n'
        '• Reversed: 10y + x = 10x + y + 27, so 9y − 9x = 27 and y − x = 3 '
        '… (2)\n'
        '• Adding (1) and (2): 2y = 12, so y = 6 and x = 3\n'
        'The number is 36. Check: 63 − 36 = 27.',
  ),

  // Sequence & Series
  DescriptiveQuestion(
    subjectId: 'maths',
    chapter: 'Sequence & Series',
    text:
        'A person\'s annual salary starts at ₹3,60,000 and rises by ₹24,000 '
        'every year. Find the salary in the 10th year and the total earned '
        'over 10 years.',
    marks: 4,
    problem: true,
    answer:
        'This is an AP with a = 3,60,000 and d = 24,000.\n'
        '• 10th year salary = a + 9d = 3,60,000 + 2,16,000 = ₹5,76,000\n'
        '• Total = n/2 × (first + last) = 10/2 × (3,60,000 + 5,76,000) = '
        '₹46,80,000',
  ),
  DescriptiveQuestion(
    subjectId: 'maths',
    chapter: 'Sequence & Series',
    text:
        'A machine worth ₹1,00,000 loses 10% of its value each year. Find '
        'its value after 3 years and the total depreciation.',
    marks: 4,
    problem: true,
    answer:
        'The values form a GP with a = 1,00,000 and r = 0.9.\n'
        '• After 1 year: 90,000; after 2 years: 81,000; after 3 years: '
        '72,900\n'
        '• Using the formula: 1,00,000 × 0.9³ = ₹72,900\n'
        '• Total depreciation = 1,00,000 − 72,900 = ₹27,100 (10,000 + 9,000 + '
        '8,100)',
  ),

  // Permutations & Combinations
  DescriptiveQuestion(
    subjectId: 'maths',
    chapter: 'Permutations & Combinations',
    text:
        'How many 4-digit numbers can be formed from the digits 0 to 9 '
        'without repetition? How many of them are greater than 5,000?',
    marks: 5,
    problem: true,
    answer:
        'All 4-digit numbers:\n'
        '• The first digit cannot be 0: 9 choices\n'
        '• The remaining 3 places are filled from the other 9 digits: 9 × 8 '
        '× 7\n'
        '• Total = 9 × 9 × 8 × 7 = 4,536\n'
        'Greater than 5,000:\n'
        '• The first digit must be 5, 6, 7, 8 or 9: 5 choices\n'
        '• The rest: 9 × 8 × 7 = 504\n'
        '• Total = 5 × 504 = 2,520',
  ),
  DescriptiveQuestion(
    subjectId: 'maths',
    chapter: 'Permutations & Combinations',
    text:
        'In how many ways can 5 different books be arranged on a shelf if '
        '(a) two particular books are always together, and (b) they are '
        'never together?',
    marks: 4,
    problem: true,
    answer:
        '(a) Treat the two books as one unit: 4 units can be arranged in '
        '4! = 24 ways, and the two books within the unit in 2! = 2 ways.\n'
        '• Total = 24 × 2 = 48\n'
        '(b) Total arrangements without restriction = 5! = 120.\n'
        '• Never together = 120 − 48 = 72',
  ),

  // Time Value of Money
  DescriptiveQuestion(
    subjectId: 'maths',
    chapter: 'Time Value of Money',
    text:
        'You are offered ₹1,00,000 today or ₹1,30,000 after 3 years. If '
        'money can earn 10% a year compounded annually, which should you '
        'choose?',
    marks: 4,
    problem: true,
    answer:
        'Compare present values at 10%.\n'
        '• PV of ₹1,30,000 after 3 years = 1,30,000 ÷ 1.331 = ₹97,671\n'
        '• PV of ₹1,00,000 today = ₹1,00,000\n'
        'Choose ₹1,00,000 today, since it is worth more.\n'
        'Check by future value: 1,00,000 × 1.331 = ₹1,33,100 after 3 years, '
        'which is more than ₹1,30,000.',
  ),
  DescriptiveQuestion(
    subjectId: 'maths',
    chapter: 'Time Value of Money',
    text:
        'A company must replace a machine costing ₹5,00,000 after 5 years. '
        'How much should it deposit at the end of each year in a sinking '
        'fund earning 8% a year?',
    marks: 5,
    problem: true,
    answer:
        'Future value of an annuity factor = [(1 + i)ⁿ − 1] ÷ i\n'
        '• (1.08)⁵ = 1.46933\n'
        '• Factor = 0.46933 ÷ 0.08 = 5.8666\n'
        '• Annual deposit = 5,00,000 ÷ 5.8666 = ₹85,228 (approx.)\n'
        'Total deposited is about ₹4,26,140; the rest comes from interest.',
  ),

  // Measures of Central Tendency
  DescriptiveQuestion(
    subjectId: 'maths',
    chapter: 'Measures of Central Tendency',
    text:
        'The mean of the distribution below is 28. Find the missing '
        'frequency f. Values: 10, 20, 30, 40, 50; frequencies: 5, 8, f, 6, 3.',
    marks: 4,
    problem: true,
    answer:
        '• Σf = 22 + f\n'
        '• Σfx = 50 + 160 + 30f + 240 + 150 = 600 + 30f\n'
        '• Mean = (600 + 30f) ÷ (22 + f) = 28\n'
        '• 600 + 30f = 616 + 28f, so 2f = 16 and f = 8\n'
        'Check: Σfx = 840 and Σf = 30, so mean = 28.',
  ),
  DescriptiveQuestion(
    subjectId: 'maths',
    chapter: 'Measures of Central Tendency',
    text:
        'Find the median and the quartiles: class 0–10 (frequency 4), '
        '10–20 (6), 20–30 (10), 30–40 (12), 40–50 (8).',
    marks: 6,
    problem: true,
    answer:
        'N = 40; cumulative frequencies: 4, 10, 20, 32, 40.\n'
        'Formula: L + (position − cf before) ÷ f × h\n'
        '• Q1: position N/4 = 10, which falls in 10–20 (cf before 4, f 6): '
        '10 + (10 − 4) ÷ 6 × 10 = 20\n'
        '• Median: position N/2 = 20, in 20–30 (cf before 10, f 10): 20 + '
        '(20 − 10) ÷ 10 × 10 = 30\n'
        '• Q3: position 3N/4 = 30, in 30–40 (cf before 20, f 12): 30 + '
        '(30 − 20) ÷ 12 × 10 = 38.33',
  ),
  DescriptiveQuestion(
    subjectId: 'maths',
    chapter: 'Measures of Central Tendency',
    text:
        'Compare the arithmetic mean, median and mode as measures of '
        'central tendency.',
    marks: 5,
    answer:
        'Arithmetic mean\n'
        '• Uses every value and allows further algebra, such as combined '
        'means.\n'
        '• Affected by extreme values; cannot be found for open-ended '
        'classes without assumptions.\n'
        'Median\n'
        '• The middle value; not affected by extreme values.\n'
        '• Can be found for open-ended data and qualitative data that can be '
        'ranked.\n'
        '• Does not use all values and is less suited to further algebra.\n'
        'Mode\n'
        '• The most frequent value; easy to understand, and useful for '
        'things like the most popular size.\n'
        '• May not exist or may not be unique, and is unstable for small '
        'data.\n'
        'For symmetric data the three are equal; for skewed data the median '
        'is often the best summary.',
  ),

  // Measures of Dispersion
  DescriptiveQuestion(
    subjectId: 'maths',
    chapter: 'Measures of Dispersion',
    text:
        'Find the standard deviation: values 10, 20, 30, 40, 50 with '
        'frequencies 2, 3, 5, 3, 2.',
    marks: 5,
    problem: true,
    answer:
        '• N = 15; Σfx = 20 + 60 + 150 + 120 + 100 = 450; mean = 30\n'
        '• Deviations from the mean: −20, −10, 0, 10, 20\n'
        '• Σfd² = 2 × 400 + 3 × 100 + 0 + 3 × 100 + 2 × 400 = 2,200\n'
        '• Variance = 2,200 ÷ 15 = 146.67\n'
        '• Standard deviation = √146.67 = 12.11',
  ),
  DescriptiveQuestion(
    subjectId: 'maths',
    chapter: 'Measures of Dispersion',
    text:
        'Group 1 has 50 items with mean 60 and SD 8; group 2 has 50 items '
        'with mean 70 and SD 6. Find the combined mean and combined standard '
        'deviation.',
    marks: 6,
    problem: true,
    answer:
        '• Combined mean = (50 × 60 + 50 × 70) ÷ 100 = 65\n'
        '• d₁ = 60 − 65 = −5; d₂ = 70 − 65 = 5\n'
        'Combined variance = [n₁(σ₁² + d₁²) + n₂(σ₂² + d₂²)] ÷ (n₁ + n₂)\n'
        '• = [50 × (64 + 25) + 50 × (36 + 25)] ÷ 100\n'
        '• = (4,450 + 3,050) ÷ 100 = 75\n'
        '• Combined SD = √75 = 8.66',
  ),
  DescriptiveQuestion(
    subjectId: 'maths',
    chapter: 'Measures of Dispersion',
    text:
        'Distinguish between absolute and relative measures of '
        'dispersion. Why are relative measures needed?',
    marks: 4,
    answer:
        '• Absolute measures (range, quartile deviation, mean deviation, '
        'standard deviation) are in the same units as the data, such as '
        'rupees or kg.\n'
        '• Relative measures (coefficient of range, coefficient of QD, '
        'coefficient of variation) are ratios or percentages, with no '
        'units.\n'
        'Relative measures are needed to compare variability between series '
        'with different units, or with very different averages. For '
        'example, comparing the variation in heights (cm) and weights (kg), '
        'or in prices of gold and vegetables, needs the coefficient of '
        'variation.',
  ),

  // Correlation & Regression
  DescriptiveQuestion(
    subjectId: 'maths',
    chapter: 'Correlation & Regression',
    text:
        'A correlation coefficient of 0.8 is found from 25 pairs of '
        'observations. Find the probable error and say whether the '
        'correlation is significant.',
    marks: 4,
    problem: true,
    answer:
        '• Probable error = 0.6745 × (1 − r²) ÷ √n = 0.6745 × (1 − 0.64) '
        '÷ 5 = 0.0486\n'
        '• 6 × PE = 0.29\n'
        '• Since r (0.8) is more than 6 × PE, the correlation is '
        'significant.\n'
        '• Limits of r in the population: 0.8 ± 0.0486, so about 0.75 to '
        '0.85\n'
        'Rule: if r is less than PE, it is not significant; if it is more '
        'than 6 × PE, it is significant.',
  ),
  DescriptiveQuestion(
    subjectId: 'maths',
    chapter: 'Correlation & Regression',
    text: 'State the properties of the regression coefficients.',
    marks: 4,
    answer:
        '• The correlation coefficient is the geometric mean of the two '
        'regression coefficients: r = ±√(b_yx × b_xy).\n'
        '• Both regression coefficients have the same sign, which is also '
        'the sign of r.\n'
        '• If one regression coefficient is greater than 1, the other must '
        'be less than 1, since their product cannot exceed 1.\n'
        '• In absolute value, the arithmetic mean of the two coefficients is '
        'at least r (since the AM of two numbers is never less than their '
        'GM).\n'
        '• They are independent of change of origin but not of scale.\n'
        '• The two regression lines intersect at the means (x̄, ȳ).',
  ),

  // Index Numbers
  DescriptiveQuestion(
    subjectId: 'maths',
    chapter: 'Index Numbers',
    text:
        'Construct a cost of living index by the aggregate expenditure '
        'method. Food: base quantity 10, base price ₹20, current price ₹30. '
        'Rent: 1, ₹500, ₹600. Clothing: 5, ₹40, ₹50.',
    marks: 5,
    problem: true,
    answer:
        '• Σp₀q₀ = 10 × 20 + 1 × 500 + 5 × 40 = 200 + 500 + 200 = 900\n'
        '• Σp₁q₀ = 10 × 30 + 1 × 600 + 5 × 50 = 300 + 600 + 250 = 1,150\n'
        '• Cost of living index = 1,150 ÷ 900 × 100 = 127.78\n'
        'The cost of the same basket has risen by about 27.8%.',
  ),
  DescriptiveQuestion(
    subjectId: 'maths',
    chapter: 'Index Numbers',
    text:
        'An old index (2015 = 100) stands at 150 in 2020. A new index (2020 '
        '= 100) is 110 in 2021 and 121 in 2022. Splice the new series to the '
        'old base.',
    marks: 4,
    problem: true,
    answer:
        'Splicing factor = 150 ÷ 100 = 1.5 (the old index in the new base '
        'year).\n'
        '• 2020: 100 × 1.5 = 150\n'
        '• 2021: 110 × 1.5 = 165\n'
        '• 2022: 121 × 1.5 = 181.5\n'
        'The series is now continuous with 2015 = 100.',
  ),
  DescriptiveQuestion(
    subjectId: 'maths',
    chapter: 'Index Numbers',
    text: 'What problems arise in constructing index numbers?',
    marks: 5,
    answer:
        '• Purpose: the index must be designed for a clear purpose, which '
        'decides the items, prices and weights.\n'
        '• Base year: it should be a normal year, free from unusual events, '
        'and not too distant.\n'
        '• Selection of items: they must be representative and not too '
        'many to handle.\n'
        '• Prices: deciding whether to use wholesale or retail prices, and '
        'from which markets.\n'
        '• Weights: important items must get more weight, and weights may '
        'go out of date.\n'
        '• Average: choosing between arithmetic, geometric or other means.\n'
        '• Formula: choosing between Laspeyres, Paasche, Fisher and others, '
        'each with its own bias.',
  ),

  // Probability
  DescriptiveQuestion(
    subjectId: 'maths',
    chapter: 'Probability',
    text:
        'Machine A makes 60% of a factory\'s output, with 2% defective; '
        'machine B makes 40%, with 5% defective. An item chosen at random is '
        'defective. Find the probability that it came from machine B.',
    marks: 5,
    problem: true,
    answer:
        'Using Bayes\' theorem:\n'
        '• P(A and defective) = 0.6 × 0.02 = 0.012\n'
        '• P(B and defective) = 0.4 × 0.05 = 0.020\n'
        '• P(defective) = 0.012 + 0.020 = 0.032\n'
        '• P(B | defective) = 0.020 ÷ 0.032 = 0.625\n'
        'So there is a 62.5% chance the defective item came from B, although '
        'B makes only 40% of the output.',
  ),
  DescriptiveQuestion(
    subjectId: 'maths',
    chapter: 'Probability',
    text:
        '10% of items produced are defective. In a sample of 5, find the '
        'probability of (a) no defective, and (b) at most one defective.',
    marks: 5,
    problem: true,
    answer:
        'Binomial distribution with n = 5, p = 0.1, q = 0.9.\n'
        '(a) P(0) = q⁵ = 0.9⁵ = 0.5905\n'
        '(b) P(1) = ⁵C₁ × p × q⁴ = 5 × 0.1 × 0.6561 = 0.3281\n'
        '• P(at most 1) = 0.5905 + 0.3281 = 0.9185\n'
        'So about 92% of samples will have no more than one defective item.',
  ),
];
