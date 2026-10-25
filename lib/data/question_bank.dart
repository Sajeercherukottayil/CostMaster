import '../models/profile.dart';
import '../models/question.dart';
import 'descriptive/cost.dart';
import 'descriptive/eco.dart';
import 'descriptive/fa.dart';
import 'descriptive/inter/caa.dart';
import 'descriptive/inter/cost.dart';
import 'descriptive/inter/fa.dart';
import 'descriptive/inter/fm.dart';
import 'descriptive/inter/law.dart';
import 'descriptive/inter/ma.dart';
import 'descriptive/inter/om.dart';
import 'descriptive/inter/tax.dart';
import 'descriptive/law.dart';
import 'descriptive/maths.dart';
import 'descriptive/more/cost.dart';
import 'descriptive/more/eco.dart';
import 'descriptive/more/fa.dart';
import 'descriptive/more/inter/cost.dart';
import 'descriptive/more/inter/fa.dart';
import 'descriptive/more/inter/law.dart';
import 'descriptive/more/inter/tax.dart';
import 'descriptive/more/law.dart';
import 'descriptive/more/maths.dart';
import 'descriptive/problems/cost.dart';
import 'descriptive/problems/eco.dart';
import 'descriptive/problems/fa.dart';
import 'descriptive/problems/inter/caa.dart';
import 'descriptive/problems/inter/cost.dart';
import 'descriptive/problems/inter/fa.dart';
import 'descriptive/problems/inter/fm.dart';
import 'descriptive/problems/inter/law.dart';
import 'descriptive/problems/inter/ma.dart';
import 'descriptive/problems/inter/om.dart';
import 'descriptive/problems/inter/tax.dart';
import 'descriptive/problems/law.dart';
import 'descriptive/problems/maths.dart';
import 'questions/cost.dart';
import 'questions/eco.dart';
import 'questions/fa.dart';
import 'questions/inter/caa.dart';
import 'questions/inter/cost.dart';
import 'questions/inter/fa.dart';
import 'questions/inter/fm.dart';
import 'questions/inter/law.dart';
import 'questions/inter/ma.dart';
import 'questions/inter/om.dart';
import 'questions/inter/tax.dart';
import 'questions/law.dart';
import 'questions/maths.dart';
import 'questions/more/cost.dart';
import 'questions/more/eco.dart';
import 'questions/more/fa.dart';
import 'questions/more/inter/cost.dart';
import 'questions/more/inter/fa.dart';
import 'questions/more/inter/law.dart';
import 'questions/more/inter/tax.dart';
import 'questions/more/law.dart';
import 'questions/more/maths.dart';

// Subjects follow the CMA Syllabus 2022 papers. Foundation Paper 2 is split
// into Financial Accounting and Cost Accounting. Intermediate Paper 7
// (Direct & Indirect Taxation) follows the law for the December 2026 term
// and must be revised each term as tax law changes.
const subjects = [
  Subject(
    id: 'law',
    name: 'Business Laws & Communication',
    level: foundation,
    paper: 1,
    group: 1,
    chapters: [
      'Indian Contract Act, 1872',
      'Sale of Goods Act, 1930',
      'Negotiable Instruments Act, 1881',
      'Business Communication',
    ],
  ),
  Subject(
    id: 'fa',
    name: 'Financial Accounting',
    level: foundation,
    paper: 2,
    group: 1,
    chapters: [
      'Accounting Concepts & Principles',
      'Accounting Process & Rectification of Errors',
      'Bank Reconciliation Statement',
      'Final Accounts',
      'Depreciation',
      'Bills of Exchange',
      'Consignment',
      'Partnership Accounts',
      'Not-for-Profit Organisations',
      'Single Entry System',
      'Ratio Analysis',
    ],
  ),
  Subject(
    id: 'cost',
    name: 'Cost Accounting',
    level: foundation,
    paper: 2,
    group: 1,
    chapters: [
      'Cost Concepts & Cost Sheet',
      'Material Cost',
      'Employee Cost',
      'Overheads',
      'Job & Process Costing',
      'Marginal Costing & CVP Analysis',
      'Standard Costing',
    ],
  ),
  Subject(
    id: 'maths',
    name: 'Business Maths & Statistics',
    level: foundation,
    paper: 3,
    group: 2,
    chapters: [
      'Ratio & Proportion',
      'Indices & Logarithms',
      'Equations',
      'Sequence & Series',
      'Permutations & Combinations',
      'Time Value of Money',
      'Measures of Central Tendency',
      'Measures of Dispersion',
      'Correlation & Regression',
      'Index Numbers',
      'Probability',
    ],
  ),
  Subject(
    id: 'eco',
    name: 'Business Economics & Management',
    level: foundation,
    paper: 4,
    group: 2,
    chapters: [
      'Demand & Consumer Behaviour',
      'Production & Cost',
      'Market Structures',
      'Money & Banking',
      'Principles & Functions of Management',
    ],
  ),
  Subject(
    id: 'i_law',
    name: 'Business Laws & Ethics',
    level: intermediate,
    paper: 5,
    group: 1,
    chapters: [
      'Special Contracts',
      'Sale of Goods & Negotiable Instruments',
      'Partnership & LLP',
      'Companies Act, 2013',
      'Business Ethics',
    ],
  ),
  Subject(
    id: 'i_fa',
    name: 'Financial Accounting',
    level: intermediate,
    paper: 6,
    group: 1,
    chapters: [
      'Accounting Standards',
      'Hire Purchase',
      'Branch & Departmental Accounts',
      'Insurance Claims',
      'Royalty & Joint Venture',
      'Investment Accounts',
      'Not-for-Profit Organisations',
      'Self-Balancing Ledgers',
    ],
  ),
  Subject(
    id: 'i_tax',
    name: 'Direct & Indirect Taxation',
    level: intermediate,
    paper: 7,
    group: 1,
    chapters: [
      'Basics & Residential Status',
      'Income from Salaries',
      'Income from House Property',
      'Profits & Gains of Business or Profession',
      'Capital Gains & Other Sources',
      'Deductions & Tax Liability',
      'GST: Concepts, Levy & Supply',
      'GST: Registration, Time & Place of Supply',
      'GST: Input Tax Credit, Returns & Payment',
      'Customs Law',
    ],
  ),
  Subject(
    id: 'i_cost',
    name: 'Cost Accounting',
    level: intermediate,
    paper: 8,
    group: 1,
    chapters: [
      'Cost Accounting Standards',
      'Material & Employee Cost',
      'Activity Based Costing',
      'Joint & By-Products',
      'Process & Service Costing',
      'Standard Costing',
      'Reconciliation & Integrated Accounts',
      'Uniform Costing & Inter-firm Comparison',
    ],
  ),
  Subject(
    id: 'i_om',
    name: 'Operations & Strategic Management',
    level: intermediate,
    paper: 9,
    group: 2,
    chapters: [
      'Productivity & Capacity',
      'Plant Layout',
      'Project Management (PERT & CPM)',
      'Quality, JIT & Maintenance',
      'Strategic Analysis',
      'Strategy Formulation',
    ],
  ),
  Subject(
    id: 'i_caa',
    name: 'Corporate Accounting & Auditing',
    level: intermediate,
    paper: 10,
    group: 2,
    chapters: [
      'Share Capital & Redemption',
      'Company Financial Statements',
      'Amalgamation',
      'Cash Flow Statement',
      'Auditing Concepts & Evidence',
      'Audit Reports & Company Auditors',
    ],
  ),
  Subject(
    id: 'i_fm',
    name: 'Financial Management & Business Data Analytics',
    level: intermediate,
    paper: 11,
    group: 2,
    chapters: [
      'Introduction to Financial Management',
      'Cost of Capital',
      'Leverage',
      'Capital Budgeting',
      'Working Capital Management',
      'Business Data Analytics',
    ],
  ),
  Subject(
    id: 'i_ma',
    name: 'Management Accounting',
    level: intermediate,
    paper: 12,
    group: 2,
    chapters: [
      'Decision Making',
      'Budgeting & Budgetary Control',
      'Performance Measurement',
    ],
  ),
];

const questionBank = [
  ...lawQuestions,
  ...lawMoreQuestions,
  ...faQuestions,
  ...faMoreQuestions,
  ...costQuestions,
  ...costMoreQuestions,
  ...mathsQuestions,
  ...mathsMoreQuestions,
  ...ecoQuestions,
  ...ecoMoreQuestions,
  ...interLawQuestions,
  ...interLawMoreQuestions,
  ...interFaQuestions,
  ...interFaMoreQuestions,
  ...interTaxQuestions,
  ...interTaxMoreQuestions,
  ...interCostQuestions,
  ...interCostMoreQuestions,
  ...interOmQuestions,
  ...interCaaQuestions,
  ...interFmQuestions,
  ...interMaQuestions,
];

/// Written-answer questions, shown on chapter screens but not in tests.
const descriptiveBank = [
  ...lawDescriptive,
  ...lawProblems,
  ...lawMoreDescriptive,
  ...faDescriptive,
  ...faProblems,
  ...faMoreDescriptive,
  ...costDescriptive,
  ...costProblems,
  ...costMoreDescriptive,
  ...mathsDescriptive,
  ...mathsProblems,
  ...mathsMoreDescriptive,
  ...ecoDescriptive,
  ...ecoProblems,
  ...ecoMoreDescriptive,
  ...interLawDescriptive,
  ...interLawProblems,
  ...interLawMoreDescriptive,
  ...interFaDescriptive,
  ...interFaProblems,
  ...interFaMoreDescriptive,
  ...interTaxDescriptive,
  ...interTaxProblems,
  ...interTaxMoreDescriptive,
  ...interCostDescriptive,
  ...interCostProblems,
  ...interCostMoreDescriptive,
  ...interOmDescriptive,
  ...interOmProblems,
  ...interCaaDescriptive,
  ...interCaaProblems,
  ...interFmDescriptive,
  ...interFmProblems,
  ...interMaDescriptive,
  ...interMaProblems,
];

/// Subjects for the student's course and group.
List<Subject> subjectsFor(Profile profile) => subjects
    .where(
      (s) =>
          s.level == profile.course &&
          (profile.group == null || s.group == profile.group),
    )
    .toList();

List<Question> questionsForSubjects(Iterable<Subject> list) {
  final ids = list.map((s) => s.id).toSet();
  return questionBank.where((q) => ids.contains(q.subjectId)).toList();
}

List<Question> questionsForChapter(String subjectId, String chapter) =>
    questionBank
        .where((q) => q.subjectId == subjectId && q.chapter == chapter)
        .toList();

List<DescriptiveQuestion> descriptiveForChapter(
  String subjectId,
  String chapter,
) => descriptiveBank
    .where((q) => q.subjectId == subjectId && q.chapter == chapter)
    .toList();

/// Questions for one subject, or for every subject in a level when only
/// [level] is given.
List<Question> questionsFor({String? subjectId, String? level}) {
  if (subjectId != null) {
    return questionBank.where((q) => q.subjectId == subjectId).toList();
  }
  final ids = subjects
      .where((s) => level == null || s.level == level)
      .map((s) => s.id)
      .toSet();
  return questionBank.where((q) => ids.contains(q.subjectId)).toList();
}
