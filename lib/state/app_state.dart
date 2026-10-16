import 'dart:convert';

import 'package:flutter/widgets.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../models/profile.dart';

/// Holds the student's profile and test history, saved on the device.
class AppState extends ChangeNotifier {
  static const _profileKey = 'profile';
  static const _attemptsKey = 'attempts';
  static const _maxAttempts = 50;

  final SharedPreferences _prefs;
  Profile? _profile;
  final List<TestAttempt> _attempts;

  AppState._(this._prefs, this._profile, this._attempts);

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
    return AppState._(prefs, profile, attempts);
  }

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

  Future<void> _saveAttempts() => _prefs.setStringList(
      _attemptsKey, [for (final a in _attempts) jsonEncode(a.toJson())]);
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
