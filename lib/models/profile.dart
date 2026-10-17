import 'question.dart';

class Profile {
  final String name;

  /// [foundation] or [intermediate].
  final String course;

  /// 1 or 2; null means both groups.
  final int? group;

  /// Exam term the student is aiming for, e.g. "December 2026".
  final String? targetTerm;

  const Profile({
    required this.name,
    required this.course,
    this.group,
    this.targetTerm,
  });

  String get courseLabel => 'CMA $course';

  String get groupLabel => switch (group) {
        1 => 'Group I',
        2 => 'Group II',
        _ => 'Both groups',
      };

  /// Start of the target exam month, e.g. 1 December 2026, if one is set.
  DateTime? get targetDate {
    final parts = targetTerm?.split(' ');
    if (parts == null || parts.length != 2) return null;
    final month = switch (parts[0]) {
      'June' => 6,
      'December' => 12,
      _ => null,
    };
    final year = int.tryParse(parts[1]);
    if (month == null || year == null) return null;
    return DateTime(year, month);
  }

  String get firstName => name.trim().split(RegExp(r'\s+')).first;

  String get initials {
    final parts = name.trim().split(RegExp(r'\s+'));
    final letters = parts.take(2).map((p) => p.isEmpty ? '' : p[0]);
    return letters.join().toUpperCase();
  }

  Map<String, dynamic> toJson() => {
        'name': name,
        'course': course,
        'group': group,
        'targetTerm': targetTerm,
      };

  factory Profile.fromJson(Map<String, dynamic> json) => Profile(
        name: json['name'] as String,
        course: json['course'] as String,
        group: json['group'] as int?,
        targetTerm: json['targetTerm'] as String?,
      );
}

class TestAttempt {
  final String title;
  final int correct;
  final int total;
  final int seconds;
  final DateTime date;

  const TestAttempt({
    required this.title,
    required this.correct,
    required this.total,
    required this.seconds,
    required this.date,
  });

  int get percent => total == 0 ? 0 : (correct * 100 / total).round();

  Map<String, dynamic> toJson() => {
        'title': title,
        'correct': correct,
        'total': total,
        'seconds': seconds,
        'date': date.toIso8601String(),
      };

  factory TestAttempt.fromJson(Map<String, dynamic> json) => TestAttempt(
        title: json['title'] as String,
        correct: json['correct'] as int,
        total: json['total'] as int,
        seconds: json['seconds'] as int,
        date: DateTime.parse(json['date'] as String),
      );
}

/// The next few CMA exam terms (June and December) from [now].
List<String> upcomingTerms(DateTime now, {int count = 4}) {
  const months = {6: 'June', 12: 'December'};
  final terms = <String>[];
  for (var year = now.year; terms.length < count; year++) {
    for (final month in months.keys) {
      if (year == now.year && month < now.month) continue;
      if (terms.length < count) terms.add('${months[month]} $year');
    }
  }
  return terms;
}
