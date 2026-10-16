import '../models/profile.dart';
import '../models/question.dart';
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
import 'questions/law.dart';
import 'questions/maths.dart';

// Subjects follow the CMA Syllabus 2022 papers. Foundation Paper 2 is split
// into Financial Accounting and Cost Accounting. Intermediate Paper 7
// (Direct & Indirect Taxation) is left out because tax law changes every year.
const subjects = [
  Subject(id: 'law', name: 'Business Laws & Communication', level: foundation, paper: 1),
  Subject(id: 'fa', name: 'Financial Accounting', level: foundation, paper: 2),
  Subject(id: 'cost', name: 'Cost Accounting', level: foundation, paper: 2),
  Subject(id: 'maths', name: 'Business Maths & Statistics', level: foundation, paper: 3),
  Subject(id: 'eco', name: 'Business Economics & Management', level: foundation, paper: 4),
  Subject(id: 'i_law', name: 'Business Laws & Ethics', level: intermediate, paper: 5, group: 1),
  Subject(id: 'i_fa', name: 'Financial Accounting', level: intermediate, paper: 6, group: 1),
  Subject(id: 'i_cost', name: 'Cost Accounting', level: intermediate, paper: 8, group: 1),
  Subject(id: 'i_om', name: 'Operations & Strategic Management', level: intermediate, paper: 9, group: 2),
  Subject(id: 'i_caa', name: 'Corporate Accounting & Auditing', level: intermediate, paper: 10, group: 2),
  Subject(id: 'i_fm', name: 'Financial Management & Business Data Analytics', level: intermediate, paper: 11, group: 2),
  Subject(id: 'i_ma', name: 'Management Accounting', level: intermediate, paper: 12, group: 2),
];

const questionBank = [
  ...lawQuestions,
  ...faQuestions,
  ...costQuestions,
  ...mathsQuestions,
  ...ecoQuestions,
  ...interLawQuestions,
  ...interFaQuestions,
  ...interCostQuestions,
  ...interOmQuestions,
  ...interCaaQuestions,
  ...interFmQuestions,
  ...interMaQuestions,
];

/// Subjects for the student's course and Intermediate group.
List<Subject> subjectsFor(Profile profile) => subjects
    .where((s) =>
        s.level == profile.course &&
        (profile.group == null || s.group == profile.group))
    .toList();

List<Question> questionsForSubjects(Iterable<Subject> list) {
  final ids = list.map((s) => s.id).toSet();
  return questionBank.where((q) => ids.contains(q.subjectId)).toList();
}

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
