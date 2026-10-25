const foundation = 'Foundation';
const intermediate = 'Intermediate';
const levels = [foundation, intermediate];

class Subject {
  final String id;
  final String name;
  final String level;
  final int paper;

  /// Exam group (1 or 2) within the course.
  final int group;

  /// Chapter names in syllabus order.
  final List<String> chapters;

  const Subject({
    required this.id,
    required this.name,
    required this.level,
    required this.paper,
    required this.group,
    required this.chapters,
  });
}

class Question {
  final String subjectId;
  final String chapter;
  final String text;
  final List<String> options;
  final int answerIndex;
  final String explanation;

  const Question({
    required this.subjectId,
    required this.chapter,
    required this.text,
    required this.options,
    required this.answerIndex,
    required this.explanation,
  });
}

/// A written-answer question with a model answer to compare against.
/// Not used in mock tests, since written answers can't be auto-marked.
class DescriptiveQuestion {
  final String subjectId;
  final String chapter;
  final String text;
  final int marks;

  /// Model answer. Lines are separated by `\n`; lines starting with `• `
  /// are bullet points.
  final String answer;

  /// A numerical or case-based problem, rather than a theory question.
  final bool problem;

  const DescriptiveQuestion({
    required this.subjectId,
    required this.chapter,
    required this.text,
    required this.marks,
    required this.answer,
    this.problem = false,
  });
}
