import 'package:flutter_test/flutter_test.dart';

import 'package:cost_master/data/question_bank.dart';
import 'package:cost_master/models/profile.dart';
import 'package:cost_master/models/question.dart';

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

  test('subjects follow the chosen course and group', () {
    List<int> papers(Profile p) => subjectsFor(p).map((s) => s.paper).toList();

    expect(papers(const Profile(name: 'A', course: foundation)), [1, 2, 2, 3, 4]);
    expect(papers(const Profile(name: 'A', course: intermediate, group: 1)), [5, 6, 8]);
    expect(papers(const Profile(name: 'A', course: intermediate, group: 2)), [9, 10, 11, 12]);
    expect(papers(const Profile(name: 'A', course: intermediate)), [5, 6, 8, 9, 10, 11, 12]);
  });

  test('upcoming exam terms are June and December from today', () {
    expect(upcomingTerms(DateTime(2026, 10, 16)),
        ['December 2026', 'June 2027', 'December 2027', 'June 2028']);
    expect(upcomingTerms(DateTime(2026, 6, 1), count: 2),
        ['June 2026', 'December 2026']);
  });

  test('every subject has questions', () {
    for (final s in subjects) {
      expect(questionsFor(subjectId: s.id), isNotEmpty, reason: s.name);
    }
  });
}
