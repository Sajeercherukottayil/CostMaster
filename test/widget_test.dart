import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:cost_master/main.dart';
import 'package:cost_master/models/profile.dart';
import 'package:cost_master/models/question.dart';
import 'package:cost_master/services/auth_service.dart';
import 'package:cost_master/state/app_state.dart';

import 'fake_auth.dart';
import 'fake_premium.dart';

const _student = AuthUser(uid: 'u1', email: 'asha@example.com');

void main() {
  // Most tests start signed in as [_student], who owns the saved data.
  setUp(() => SharedPreferences.setMockInitialValues({'ownerUid': 'u1'}));

  testWidgets('Onboarding creates a profile for Inter Group II', (
    tester,
  ) async {
    final state = await AppState.load();
    await tester.pumpWidget(
      CostMasterApp(
        state: state,
        auth: FakeAuthService(signedInAs: _student),
        premium: FakePremiumService(),
      ),
    );

    // One question per step: name, course, group, then exam term.
    expect(find.text('Welcome to CostMaster'), findsOneWidget);
    await tester.enterText(find.byType(TextField), 'Asha Menon');
    await tester.pump();
    await tapVisible(tester, find.text('Continue'));
    await tester.pumpAndSettle();
    await tapVisible(tester, find.text('CMA Intermediate'));
    await tester.pump();
    await tapVisible(tester, find.text('Continue'));
    await tester.pumpAndSettle();
    await tapVisible(tester, find.text('Group II'));
    await tester.pump();
    await tapVisible(tester, find.text('Continue'));
    await tester.pumpAndSettle();
    await tapVisible(tester, find.text('Get started'));
    await tester.pumpAndSettle();

    expect(state.profile?.course, intermediate);
    expect(state.profile?.group, 2);
    expect(find.text('Hello, Asha'), findsOneWidget);
    expect(find.text('Business Laws & Ethics'), findsNothing);
  });

  testWidgets('Mock test flow: start, answer, submit, see result and history', (
    tester,
  ) async {
    final state = await AppState.load();
    await state.saveProfile(
      const Profile(name: 'Ravi Kumar', course: foundation),
    );
    await tester.pumpWidget(
      CostMasterApp(
        state: state,
        auth: FakeAuthService(signedInAs: _student),
        premium: FakePremiumService(active: true),
      ),
    );

    await tapVisible(tester, find.text('Start Mock Test'));
    await tester.pumpAndSettle();

    await tapVisible(tester, find.text('25'));
    await tester.pump();
    await tapVisible(tester, find.text('Start Test'));
    await tester.pumpAndSettle();

    expect(find.text('Question 1 of 25'), findsOneWidget);
    await tapVisible(tester, find.text('A'));
    await tester.pump();

    for (var i = 0; i < 24; i++) {
      await tapVisible(tester, find.text('Next'));
      await tester.pump();
    }
    await tapVisible(tester, find.text('Submit'));
    await tester.pumpAndSettle();
    await tester.tap(
      find.descendant(
        of: find.byType(AlertDialog),
        matching: find.text('Submit'),
      ),
    );
    await tester.pumpAndSettle();

    expect(find.text('Result'), findsOneWidget);
    expect(find.text('Answer Review'), findsOneWidget);
    expect(state.attempts, hasLength(1));
    expect(state.attempts.first.total, 25);
  });

  testWidgets('Chapter-wise questions and answers', (tester) async {
    final state = await AppState.load();
    await state.saveProfile(
      const Profile(name: 'Ravi Kumar', course: foundation, group: 1),
    );
    await tester.pumpWidget(
      CostMasterApp(
        state: state,
        auth: FakeAuthService(signedInAs: _student),
        premium: FakePremiumService(),
      ),
    );

    await tapVisible(tester, find.text('Business Laws & Communication'));
    await tester.pumpAndSettle();
    expect(find.text('Full Paper Test'), findsOneWidget);

    await tapVisible(tester, find.text('Sale of Goods Act, 1930'));
    await tester.pumpAndSettle();
    expect(find.text('Start Chapter Test'), findsOneWidget);
    expect(find.text('Show answer'), findsWidgets);

    await tapVisible(tester, find.text('Show answer').first);
    await tester.pump();
    expect(find.text('Hide answer'), findsOneWidget);
  });

  group('Email login', () {
    Future<FakeAuthService> openApp(WidgetTester tester) async {
      final auth = FakeAuthService();
      final state = await AppState.load();
      await tester.pumpWidget(
        CostMasterApp(
          state: state,
          auth: auth,
          premium: FakePremiumService(),
        ),
      );
      await tester.pumpAndSettle();
      return auth;
    }

    testWidgets('sign up returns to login, then login opens profile setup', (
      tester,
    ) async {
      await openApp(tester);
      expect(find.text('Log in'), findsWidgets);

      await tapVisible(tester, find.text('Create account'));
      await tester.pumpAndSettle();
      final fields = find.byType(TextFormField);
      await tester.enterText(fields.at(0), 'Asha Menon');
      await tester.enterText(fields.at(1), 'asha@example.com');
      await tester.enterText(fields.at(2), 'secret1');
      await tester.enterText(fields.at(3), 'secret2');
      await tapVisible(tester, find.widgetWithText(FilledButton, 'Create account'));
      await tester.pumpAndSettle();
      expect(find.text('Passwords do not match'), findsOneWidget);

      await tester.enterText(fields.at(3), 'secret1');
      await tapVisible(tester, find.widgetWithText(FilledButton, 'Create account'));
      await tester.pumpAndSettle();

      // Back on the login form, signed out, with the email kept.
      expect(find.textContaining('Account created'), findsOneWidget);
      expect(find.widgetWithText(FilledButton, 'Log in'), findsOneWidget);
      expect(find.text('asha@example.com'), findsOneWidget);

      await tester.enterText(find.byType(TextFormField).at(1), 'secret1');
      await tapVisible(tester, find.widgetWithText(FilledButton, 'Log in'));
      await tester.pumpAndSettle();

      expect(find.text('Welcome to CostMaster'), findsOneWidget);
      expect(find.text('Asha Menon'), findsOneWidget);
    });

    testWidgets('wrong password shows an error', (tester) async {
      final auth = await openApp(tester);
      await auth.signUp(name: 'A', email: 'a@b.com', password: 'right1');
      await tester.pumpAndSettle();

      final fields = find.byType(TextFormField);
      await tester.enterText(fields.at(0), 'a@b.com');
      await tester.enterText(fields.at(1), 'wrong1');
      await tapVisible(tester, find.widgetWithText(FilledButton, 'Log in'));
      await tester.pumpAndSettle();

      expect(find.text('Incorrect email or password.'), findsOneWidget);
    });
  });

  group('Premium', () {
    Future<(AppState, FakePremiumService)> openHome(
      WidgetTester tester, {
      String? failWith,
    }) async {
      final state = await AppState.load();
      await state.saveProfile(
        const Profile(name: 'Ravi Kumar', course: foundation),
      );
      final premium = FakePremiumService(failWith: failWith);
      await tester.pumpWidget(
        CostMasterApp(
          state: state,
          auth: FakeAuthService(signedInAs: _student),
          premium: premium,
        ),
      );
      await tester.pumpAndSettle();
      return (state, premium);
    }

    testWidgets('mock test is locked until paid, then opens', (tester) async {
      final (_, premium) = await openHome(tester);
      expect(find.text('PREMIUM'), findsOneWidget);

      await tapVisible(tester, find.text('Start Mock Test'));
      await tester.pumpAndSettle();
      expect(find.text('Unlock all mock tests'), findsOneWidget);
      expect(find.text('Start Test'), findsNothing);

      await tapVisible(tester, find.text('Pay ₹299'));
      await tester.pumpAndSettle();

      expect(premium.purchases, 1);
      expect(find.text('Start Test'), findsOneWidget, reason: 'Goes on to '
          'the test settings once Premium is granted');
      await tester.pageBack();
      await tester.pumpAndSettle();
      expect(find.text('PREMIUM'), findsNothing);
    });

    testWidgets('a failed payment shows why and stays locked', (tester) async {
      await openHome(tester, failWith: 'Payment cancelled.');

      await tapVisible(tester, find.text('Start Mock Test'));
      await tester.pumpAndSettle();
      await tapVisible(tester, find.text('Pay ₹299'));
      await tester.pumpAndSettle();

      expect(find.text('Payment cancelled.'), findsOneWidget);
      expect(find.text('Unlock all mock tests'), findsOneWidget);
    });

    testWidgets('chapter tests stay free', (tester) async {
      await openHome(tester);
      await tapVisible(tester, find.text('Business Laws & Communication'));
      await tester.pumpAndSettle();
      await tapVisible(tester, find.text('Sale of Goods Act, 1930'));
      await tester.pumpAndSettle();
      await tapVisible(tester, find.text('Start Chapter Test'));
      await tester.pumpAndSettle();
      expect(find.text('Start Test'), findsOneWidget);
    });
  });

  test('a different account on the same device starts fresh', () async {
    final state = await AppState.load();
    await state.claimFor('u1');
    await state.saveProfile(const Profile(name: 'A', course: foundation));

    await state.claimFor('u1');
    expect(state.profile, isNotNull, reason: 'Same account keeps its data');

    await state.claimFor('u2');
    expect(state.profile, isNull);
  });
}

/// Scrolls [finder] into view first, as the 800x600 test screen is short.
Future<void> tapVisible(WidgetTester tester, Finder finder) async {
  await tester.ensureVisible(finder);
  await tester.pump();
  await tester.tap(finder);
}
