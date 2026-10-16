class Subject {
  final String id;
  final String name;
  final String level;

  const Subject({required this.id, required this.name, required this.level});
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
