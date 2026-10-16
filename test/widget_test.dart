import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:cost_master/main.dart';
import 'package:cost_master/models/profile.dart';
import 'package:cost_master/models/question.dart';
import 'package:cost_master/state/app_state.dart';

void main() {
  setUp(() => SharedPreferences.setMockInitialValues({}));

  testWidgets('Onboarding creates a profile for Inter Group II',
      (tester) async {
    final state = await AppState.load();
    await tester.pumpWidget(CostMasterApp(state: state));

    expect(find.text('Welcome to CostMaster'), findsOneWidget);
    await tester.enterText(find.byType(TextField), 'Asha Menon');
    await tester.tap(find.text('CMA Intermediate'));
    await tester.pump();
    await tester.scrollUntilVisible(find.text('Group II'), 200,
        scrollable: find.byType(Scrollable).first);
    await tester.tap(find.text('Group II'));
    await tester.pump();
    await tester.scrollUntilVisible(find.text('Get started'), 200,
        scrollable: find.byType(Scrollable).first);
    await tester.tap(find.text('Get started'));
    await tester.pumpAndSettle();

    expect(state.profile?.course, intermediate);
    expect(state.profile?.group, 2);
    expect(find.text('Welcome back, Asha'), findsOneWidget);
    expect(find.text('Business Laws & Ethics'), findsNothing);
  });

  testWidgets('Mock test flow: start, answer, submit, see result and history',
      (tester) async {
    final state = await AppState.load();
    await state.saveProfile(
        const Profile(name: 'Ravi Kumar', course: foundation));
    await tester.pumpWidget(CostMasterApp(state: state));

    await tester.tap(find.text('Mixed test'));
    await tester.pumpAndSettle();

    await tester.tap(find.text('5'));
    await tester.pump();
    await tester.tap(find.text('Start Test'));
    await tester.pumpAndSettle();

    expect(find.text('Question 1 of 5'), findsOneWidget);
    await tester.tap(find.text('A'));
    await tester.pump();

    for (var i = 0; i < 4; i++) {
      await tester.tap(find.text('Next'));
      await tester.pump();
    }
    await tester.tap(find.text('Submit'));
    await tester.pumpAndSettle();
    await tester.tap(find.descendant(
        of: find.byType(AlertDialog), matching: find.text('Submit')));
    await tester.pumpAndSettle();

    expect(find.text('Result'), findsOneWidget);
    expect(find.text('Answer Review'), findsOneWidget);
    expect(state.attempts, hasLength(1));
    expect(state.attempts.first.total, 5);
  });
}
