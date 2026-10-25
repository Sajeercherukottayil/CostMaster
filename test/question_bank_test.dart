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
      expect(
        q.options.toSet().length,
        4,
        reason: 'Duplicate option: ${q.text}',
      );
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

    expect(papers(const Profile(name: 'A', course: foundation)), [
      1,
      2,
      2,
      3,
      4,
    ]);
    expect(papers(const Profile(name: 'A', course: intermediate, group: 1)), [
      5,
      6,
      7,
      8,
    ]);
    expect(papers(const Profile(name: 'A', course: intermediate, group: 2)), [
      9,
      10,
      11,
      12,
    ]);
    expect(papers(const Profile(name: 'A', course: intermediate)), [
      5,
      6,
      7,
      8,
      9,
      10,
      11,
      12,
    ]);
  });

  test('upcoming exam terms are June and December from today', () {
    expect(upcomingTerms(DateTime(2026, 10, 16)), [
      'December 2026',
      'June 2027',
      'December 2027',
      'June 2028',
    ]);
    expect(upcomingTerms(DateTime(2026, 6, 1), count: 2), [
      'June 2026',
      'December 2026',
    ]);
  });

  test("every question belongs to one of its subject's chapters", () {
    final bySubject = {for (final s in subjects) s.id: s};
    for (final q in questionBank) {
      expect(
        bySubject[q.subjectId]!.chapters,
        contains(q.chapter),
        reason: q.text,
      );
    }
  });

  test('every chapter has questions', () {
    for (final s in subjects) {
      expect(s.chapters.toSet().length, s.chapters.length, reason: s.name);
      for (final c in s.chapters) {
        expect(
          questionsForChapter(s.id, c),
          isNotEmpty,
          reason: '${s.name}: $c',
        );
      }
    }
  });

  test('every descriptive question is well-formed', () {
    final bySubject = {for (final s in subjects) s.id: s};
    for (final q in descriptiveBank) {
      expect(
        bySubject[q.subjectId]?.chapters,
        contains(q.chapter),
        reason: q.text,
      );
      expect(q.text.trim(), isNotEmpty);
      expect(q.answer.trim(), isNotEmpty, reason: q.text);
      expect(q.marks, inInclusiveRange(1, 20), reason: q.text);
    }
    final texts = descriptiveBank.map((q) => q.text).toList();
    expect(texts.toSet().length, texts.length, reason: 'Duplicate question');
  });

  test('every chapter has descriptive questions', () {
    for (final s in subjects) {
      for (final c in s.chapters) {
        expect(
          descriptiveForChapter(s.id, c),
          isNotEmpty,
          reason: '${s.name}: $c',
        );
      }
    }
  });

  test('every chapter has a problem question', () {
    for (final s in subjects) {
      for (final c in s.chapters) {
        expect(
          descriptiveForChapter(s.id, c).where((q) => q.problem),
          isNotEmpty,
          reason: '${s.name}: $c',
        );
      }
    }
  });

  test('every subject has questions', () {
    for (final s in subjects) {
      expect(questionsFor(subjectId: s.id), isNotEmpty, reason: s.name);
    }
  });
}
