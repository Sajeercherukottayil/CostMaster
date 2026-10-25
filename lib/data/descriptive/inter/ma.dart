import '../../../models/question.dart';

const interMaDescriptive = [
  DescriptiveQuestion(
    subjectId: 'i_ma',
    chapter: 'Decision Making',
    text:
        'A component can be bought for ₹30 per unit. The cost of making it '
        'is: direct material ₹12, direct labour ₹8, variable overheads ₹4 '
        'and fixed overheads ₹6 (apportioned, and not avoidable). There is '
        'spare capacity. Should the company make or buy the component?',
    marks: 5,
    answer:
        'Only costs that change with the decision are relevant. Fixed '
        'overheads of ₹6 are apportioned and will be incurred either way, '
        'so they are ignored.\n'
        '• Relevant cost of making = 12 + 8 + 4 = ₹24 per unit\n'
        '• Cost of buying = ₹30 per unit\n'
        'The company should make the component, saving ₹6 per unit.\n'
        'Other factors to consider:\n'
        '• Whether spare capacity could be used for something more '
        'profitable (opportunity cost).\n'
        '• Quality and reliability of the outside supplier.\n'
        '• Keeping control over a key component and its know-how.\n'
        '• Whether the supplier\'s price will stay at ₹30.',
    problem: true,
  ),
  DescriptiveQuestion(
    subjectId: 'i_ma',
    chapter: 'Decision Making',
    text:
        'What are relevant costs? Explain sunk costs and opportunity costs '
        'in decision making.',
    marks: 5,
    answer:
        'Relevant costs are future costs that differ between the '
        'alternatives being considered. Only they should affect a decision.\n'
        '• Sunk costs: costs already incurred that cannot be recovered, such '
        'as money already spent on research or the book value of an existing '
        'machine. They are the same whatever is decided, so they are '
        'irrelevant.\n'
        '• Opportunity costs: the benefit given up by choosing one '
        'alternative over the next best. They are relevant, though they are '
        'not recorded in the accounts. Example: if a machine used for a new '
        'order could otherwise earn ₹20,000 in rent, that ₹20,000 is a cost '
        'of the order.\n'
        'Other irrelevant costs include committed costs and apportioned '
        'fixed costs that do not change with the decision.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_ma',
    chapter: 'Budgeting & Budgetary Control',
    text: 'Distinguish between a fixed budget and a flexible budget.',
    marks: 5,
    answer:
        '• Activity level: a fixed budget is prepared for one level of '
        'activity; a flexible budget for several levels, or adjusted to the '
        'actual level.\n'
        '• Cost classification: a fixed budget does not separate costs by '
        'behaviour; a flexible budget separates fixed, variable and '
        'semi-variable costs.\n'
        '• Comparison: under a fixed budget, actual results at a different '
        'activity level are compared with the original budget, which can '
        'mislead; a flexible budget compares actual costs with the budget '
        'for the actual level.\n'
        '• Suitability: fixed budgets suit stable conditions; flexible '
        'budgets suit businesses where output or sales vary.\n'
        '• Control: a flexible budget is a better tool for control and '
        'performance evaluation, because variances reflect efficiency rather '
        'than a change in volume.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_ma',
    chapter: 'Budgeting & Budgetary Control',
    text:
        'What is zero-based budgeting? State its advantages and '
        'limitations.',
    marks: 5,
    answer:
        'Zero-based budgeting (ZBB) prepares each budget from zero, '
        'rather than adjusting last year\'s figures. Every activity must be '
        'justified afresh, as if it were new. Activities are described in '
        'decision packages, ranked by benefit, and funded in order of '
        'priority.\n'
        'Advantages:\n'
        '• Removes outdated or wasteful spending carried over from past '
        'budgets.\n'
        '• Resources go to the activities that add most value.\n'
        '• Managers think carefully about why and how each activity is done.\n'
        'Limitations:\n'
        '• Time-consuming and costly to prepare.\n'
        '• Ranking decision packages can be subjective.\n'
        '• Managers need training, and may resist the process.\n'
        'ZBB is most useful for discretionary costs, such as research, '
        'training and administration.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_ma',
    chapter: 'Performance Measurement',
    text:
        'A division earns a profit of ₹3,00,000 on an investment of '
        '₹20,00,000. The cost of capital is 12%. Calculate its Return on '
        'Investment and Residual Income, and compare the two measures.',
    marks: 6,
    answer:
        '• ROI = Profit ÷ Investment × 100 = 3,00,000 ÷ 20,00,000 × 100 '
        '= 15%\n'
        '• Imputed interest = 20,00,000 × 12% = ₹2,40,000\n'
        '• Residual Income = Profit − Imputed interest = 3,00,000 − '
        '2,40,000 = ₹60,000\n'
        'Comparison:\n'
        '• ROI is a percentage, so it allows comparison between divisions of '
        'different sizes. But a manager may reject a project earning, say, '
        '14%, because it lowers the division\'s ROI, even though it is above '
        'the 12% cost of capital.\n'
        '• RI is an absolute amount. It encourages any project that earns '
        'more than the cost of capital, so it supports goal congruence. But '
        'it favours larger divisions and is harder to compare across '
        'divisions.',
    problem: true,
  ),
  DescriptiveQuestion(
    subjectId: 'i_ma',
    chapter: 'Performance Measurement',
    text: 'Explain the four perspectives of the Balanced Scorecard.',
    marks: 5,
    answer:
        'The Balanced Scorecard, developed by Kaplan and Norton, measures '
        'performance from four perspectives, so that financial results are '
        'balanced with their drivers:\n'
        '• Financial: how do we look to shareholders? Measures: ROI, '
        'profit growth, cash flow, economic value added.\n'
        '• Customer: how do customers see us? Measures: customer '
        'satisfaction, market share, retention, on-time delivery.\n'
        '• Internal business process: what must we excel at? Measures: '
        'cycle time, defect rates, cost per unit, productivity.\n'
        '• Learning and growth: can we keep improving and creating value? '
        'Measures: employee training, staff turnover, new products '
        'launched, systems capability.\n'
        'The perspectives are linked: learning improves processes, better '
        'processes satisfy customers, and satisfied customers drive '
        'financial results.',
  ),
];
