const foundation = 'Foundation';
const intermediate = 'Intermediate';
const levels = [foundation, intermediate];

class Subject {
  final String id;
  final String name;
  final String level;
  final int paper;

  /// Intermediate group (1 or 2); null for Foundation.
  final int? group;

  const Subject({
    required this.id,
    required this.name,
    required this.level,
    required this.paper,
    this.group,
  });
}

class Question {
  final String subjectId;
  final String text;
  final List<String> options;
  final int answerIndex;
  final String explanation;

  const Question({
    required this.subjectId,
    required this.text,
    required this.options,
    required this.answerIndex,
    required this.explanation,
  });
}
