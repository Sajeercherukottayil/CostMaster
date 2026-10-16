import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:cost_master/main.dart';

void main() {
  testWidgets('Mock test flow: start, answer, submit, see result',
      (tester) async {
    await tester.pumpWidget(const CostMasterApp());

    expect(find.text('Mock Tests'), findsOneWidget);
    await tester.tap(find.text('Cost Accounting'));
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
  });
}
