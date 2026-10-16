import 'package:flutter_test/flutter_test.dart';

import 'package:cost_master/data/question_bank.dart';

void main() {
  final subjectIds = subjects.map((s) => s.id).toSet();

  test('every question is well-formed', () {
    for (final q in questionBank) {
      expect(subjectIds, contains(q.subjectId), reason: q.text);
      expect(q.options.length, 4, reason: q.text);
      expect(q.options.toSet().length, 4, reason: 'Duplicate option: ${q.text}');
      expect(q.answerIndex, inInclusiveRange(0, 3), reason: q.text);
      expect(q.explanation.trim(), isNotEmpty, reason: q.text);
    }
  });

  test('no duplicate questions', () {
    final texts = questionBank.map((q) => q.text).toList();
    expect(texts.toSet().length, texts.length);
  });

  test('every subject has questions', () {
    for (final s in subjects) {
      expect(questionsFor(s.id), isNotEmpty, reason: s.name);
    }
  });
}
