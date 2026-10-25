import 'dart:convert';

import 'package:flutter/widgets.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../models/profile.dart';

/// Holds the student's profile and test history, saved on the device.
class AppState extends ChangeNotifier {
  static const _ownerKey = 'ownerUid';
  static const _profileKey = 'profile';
  static const _attemptsKey = 'attempts';
  static const _maxAttempts = 50;

  final SharedPreferences _prefs;
  String? _ownerUid;
  Profile? _profile;
  final List<TestAttempt> _attempts;

  AppState._(this._prefs, this._ownerUid, this._profile, this._attempts);

  static Future<AppState> load() async {
    final prefs = await SharedPreferences.getInstance();
    Profile? profile;
    final attempts = <TestAttempt>[];
    try {
      final raw = prefs.getString(_profileKey);
      if (raw != null) profile = Profile.fromJson(jsonDecode(raw));
      for (final s in prefs.getStringList(_attemptsKey) ?? const <String>[]) {
        attempts.add(TestAttempt.fromJson(jsonDecode(s)));
      }
    } on FormatException {
      // Corrupt saved data: start fresh rather than crash.
    } on TypeError {
      // Saved data in an unexpected shape: start fresh rather than crash.
    }
    return AppState._(prefs, prefs.getString(_ownerKey), profile, attempts);
  }

  /// The account the saved data belongs to.
  String? get ownerUid => _ownerUid;

  Profile? get profile => _profile;

  /// Newest first.
  List<TestAttempt> get attempts => List.unmodifiable(_attempts);

  int? get averagePercent => _attempts.isEmpty
      ? null
      : (_attempts.map((a) => a.percent).reduce((a, b) => a + b) /
                _attempts.length)
            .round();

  int? get bestPercent => _attempts.isEmpty
      ? null
      : _attempts.map((a) => a.percent).reduce((a, b) => a > b ? a : b);

  /// Average of the paper and chapter tests for the subject named
  /// [subjectName], whose titles are the name or "name – chapter".
  int? averagePercentFor(String subjectName) {
    final matching = _attempts
        .where(
          (a) =>
              a.title == subjectName || a.title.startsWith('$subjectName – '),
        )
        .map((a) => a.percent)
        .toList();
    if (matching.isEmpty) return null;
    return (matching.reduce((a, b) => a + b) / matching.length).round();
  }

  /// Average score and number of attempts for each test title, e.g. a
  /// chapter test "Cost Accounting – Material Cost".
  Map<String, ({int average, int count})> get statsByTitle {
    final scores = <String, List<int>>{};
    for (final a in _attempts) {
      (scores[a.title] ??= []).add(a.percent);
    }
    return {
      for (final MapEntry(:key, :value) in scores.entries)
        key: (
          average: (value.reduce((a, b) => a + b) / value.length).round(),
          count: value.length,
        ),
    };
  }

  /// Questions answered across every saved test.
  int get questionsAttempted => _attempts.fold(0, (sum, a) => sum + a.total);

  /// Makes the saved data belong to the account [uid]. If another account
  /// owned it, that account's profile and history are cleared first, so
  /// students sharing a device don't see each other's scores.
  Future<void> claimFor(String uid) async {
    if (_ownerUid == uid) return;
    if (_ownerUid != null) await reset();
    _ownerUid = uid;
    await _prefs.setString(_ownerKey, uid);
  }

  Future<void> saveProfile(Profile profile) async {
    _profile = profile;
    notifyListeners();
    await _prefs.setString(_profileKey, jsonEncode(profile.toJson()));
  }

  Future<void> addAttempt(TestAttempt attempt) async {
    _attempts.insert(0, attempt);
    if (_attempts.length > _maxAttempts) {
      _attempts.removeRange(_maxAttempts, _attempts.length);
    }
    notifyListeners();
    await _saveAttempts();
  }

  Future<void> clearHistory() async {
    _attempts.clear();
    notifyListeners();
    await _saveAttempts();
  }

  /// Removes the profile and history, returning the app to onboarding.
  Future<void> reset() async {
    _profile = null;
    _attempts.clear();
    notifyListeners();
    await _prefs.remove(_profileKey);
    await _prefs.remove(_attemptsKey);
  }

  Future<void> _saveAttempts() => _prefs.setStringList(_attemptsKey, [
    for (final a in _attempts) jsonEncode(a.toJson()),
  ]);
}

class AppScope extends InheritedNotifier<AppState> {
  const AppScope({super.key, required AppState state, required super.child})
    : super(notifier: state);

  /// Reads the state and rebuilds [context] when it changes.
  static AppState of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<AppScope>()!.notifier!;

  /// Reads the state without listening, for use in callbacks.
  static AppState read(BuildContext context) =>
      context.getInheritedWidgetOfExactType<AppScope>()!.notifier!;
}
