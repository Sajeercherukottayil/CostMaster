import '../models/question.dart';
import 'questions/cost.dart';
import 'questions/eco.dart';
import 'questions/fa.dart';
import 'questions/law.dart';
import 'questions/maths.dart';

// Subjects follow the CMA Foundation (Syllabus 2022) papers. Paper 2 is split
// into Financial Accounting and Cost Accounting, which also map to the
// Intermediate papers of the same names.
const subjects = [
  Subject(id: 'law', name: 'Business Laws & Communication', level: 'Foundation'),
  Subject(id: 'fa', name: 'Financial Accounting', level: 'Foundation / Inter'),
  Subject(id: 'cost', name: 'Cost Accounting', level: 'Foundation / Inter'),
  Subject(id: 'maths', name: 'Business Maths & Statistics', level: 'Foundation'),
  Subject(id: 'eco', name: 'Business Economics & Management', level: 'Foundation'),
];

const questionBank = [
  ...lawQuestions,
  ...faQuestions,
  ...costQuestions,
  ...mathsQuestions,
  ...ecoQuestions,
];

List<Question> questionsFor(String? subjectId) => subjectId == null
    ? questionBank
    : questionBank.where((q) => q.subjectId == subjectId).toList();
