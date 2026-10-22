// Renders the app's main screens to PNGs in screenshots/, for the README and
// portfolio. Not part of `flutter test`; run it on its own:
//
//   flutter test tool/screenshots_test.dart --update-goldens
//
// It lives outside test/ so CI doesn't compare these images.
// ignore_for_file: invalid_use_of_visible_for_testing_member
import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:cost_master/data/question_bank.dart';
import 'package:cost_master/main.dart';
import 'package:cost_master/models/profile.dart';
import 'package:cost_master/models/question.dart';
import 'package:cost_master/services/auth_service.dart';
import 'package:cost_master/state/app_state.dart';

import '../test/fake_auth.dart';

const _student = AuthUser(uid: 'u1', email: 'asha@example.com');

void main() {
  setUpAll(_loadFonts);

  setUp(() {
    final now = DateTime.now();
    TestAttempt attempt(String title, int correct, int total, int daysAgo) =>
        TestAttempt(
          title: title,
          correct: correct,
          total: total,
          seconds: total * 55,
          date: now.subtract(Duration(days: daysAgo, hours: daysAgo * 3)),
        );
    final attempts = [
      attempt('Management Accounting', 21, 25, 0),
      attempt('CMA Intermediate – Mock Test', 41, 50, 1),
      attempt('Corporate Accounting & Auditing', 18, 25, 2),
      attempt('Operations & Strategic Management', 22, 25, 4),
      attempt('Financial Management & Business Data Analytics', 16, 25, 5),
      attempt('CMA Intermediate – Mock Test', 36, 50, 7),
      attempt('Management Accounting', 17, 25, 9),
      attempt('Corporate Accounting & Auditing', 14, 25, 12),
    ];
    SharedPreferences.setMockInitialValues({
      'ownerUid': 'u1',
      'profile': jsonEncode(const Profile(
        name: 'Asha Menon',
        course: intermediate,
        group: 2,
        targetTerm: 'December 2026',
      ).toJson()),
      'attempts': [for (final a in attempts) jsonEncode(a.toJson())],
    });
  });

  Future<void> open(WidgetTester tester, {AuthService? auth}) async {
    tester.view.physicalSize = const Size(1080, 2340);
    tester.view.devicePixelRatio = 3;
    addTearDown(tester.view.reset);
    final state = await AppState.load();
    await tester.pumpWidget(CostMasterApp(
      state: state,
      auth: auth ?? FakeAuthService(signedInAs: _student),
    ));
    await tester.pumpAndSettle();
  }

  Future<void> shot(String name) => expectLater(
        find.byType(MaterialApp).first,
        matchesGoldenFile('../screenshots/$name.png'),
      );

  _screenshots('login', (tester) async {
    await open(tester, auth: FakeAuthService());
    await shot('01_login');
  });

  _screenshots('home, results and profile tabs', (tester) async {
    await open(tester);
    await shot('02_home');

    await tester.tap(find.text('Results').last);
    await tester.pumpAndSettle();
    await shot('07_results');

    await tester.tap(find.text('Profile').last);
    await tester.pumpAndSettle();
    await shot('08_profile');
  });

  _screenshots('paper and chapter', (tester) async {
    await open(tester);
    await _tapVisible(tester, find.text('Management Accounting').first);
    await tester.pumpAndSettle();
    await shot('03_paper');

    await _tapVisible(tester, find.text('Decision Making'));
    await tester.pumpAndSettle();
    await _tapVisible(tester, find.text('Show answer').first);
    await tester.pumpAndSettle();
    // Bring the first question and its revealed answer to the top.
    final question = find.textContaining('QUESTION 1', findRichText: true);
    await tester.ensureVisible(question.first);
    await tester.drag(find.byType(Scrollable).last, const Offset(0, 200));
    await tester.pumpAndSettle();
    await shot('04_chapter');
  });

  _screenshots('mock test and result', (tester) async {
    await open(tester);
    await _tapVisible(tester, find.text('Start Mock Test'));
    await tester.pumpAndSettle();
    await _tapVisible(tester, find.text('25'));
    await tester.pumpAndSettle();
    await tester.drag(find.byType(Scrollable).last, const Offset(0, 2000));
    await tester.pumpAndSettle();
    await shot('05_test_settings');

    await _tapVisible(tester, find.text('Start Test'));
    await tester.pumpAndSettle();
    await tester.pump(const Duration(seconds: 46));
    await _answer(tester, correctly: true);
    // The test's clock ticks every second, so pump frames instead of settling.
    for (var i = 0; i < 10; i++) {
      await tester.pump(const Duration(milliseconds: 100));
    }
    await shot('06_mock_test');

    for (var i = 0; i < 24; i++) {
      await _answer(tester, correctly: i % 6 != 2);
      await tester.pump(const Duration(seconds: 1));
      await tester.tap(find.text('Next'));
      await tester.pump(const Duration(seconds: 30));
    }
    await tester.tap(find.text('Submit'));
    await tester.pumpAndSettle();
    await tester.tap(find.descendant(
      of: find.byType(AlertDialog),
      matching: find.text('Submit'),
    ));
    await tester.pumpAndSettle();
    await shot('09_result');
  });
}

/// Like [testWidgets], with shadows drawn as on a device.
void _screenshots(String description, WidgetTesterCallback body) =>
    testWidgets(description, (tester) async {
      debugDisableShadows = false;
      try {
        await body(tester);
      } finally {
        debugDisableShadows = true;
      }
    });

/// Picks the right option for the question on screen, or a wrong one.
Future<void> _answer(WidgetTester tester, {required bool correctly}) async {
  final question = questionBank.firstWhere(
    (q) => find.text(q.text).evaluate().isNotEmpty,
  );
  final right = question.options[question.answerIndex];
  final pick = correctly
      ? right
      : question.options.firstWhere((o) => o != right);
  await tester.tap(find.text(pick).last);
}

Future<void> _tapVisible(WidgetTester tester, Finder finder) async {
  await tester.ensureVisible(finder);
  await tester.pumpAndSettle();
  await tester.tap(finder);
}

/// Tests draw text in a placeholder font unless the real ones are loaded.
Future<void> _loadFonts() async {
  Future<void> load(String family, Iterable<String> paths) async {
    final loader = FontLoader(family);
    for (final path in paths) {
      final bytes = File(path).readAsBytesSync();
      loader.addFont(Future.value(ByteData.sublistView(bytes)));
    }
    await loader.load();
  }

  await load('Manrope', [
    for (final w in [400, 500, 600, 700, 800]) 'assets/fonts/Manrope-$w.ttf',
  ]);
  final flutterRoot = Platform.environment['FLUTTER_ROOT']!;
  await load('MaterialIcons', [
    '$flutterRoot/bin/cache/artifacts/material_fonts/materialicons-regular.otf',
  ]);
}
