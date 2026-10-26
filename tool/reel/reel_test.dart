// Records the frames for the Malayalam Instagram reel. Run it through
// make_reel.py, which also makes the voiceover and joins everything up.
//
// It drives the real app with a demo student who already has a profile:
// chapter practice, a mock test and its result, then a call to download. It lives outside test/ so CI doesn't run it.
// ignore_for_file: invalid_use_of_visible_for_testing_member
import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:cost_master/main.dart';
import 'package:cost_master/models/profile.dart';
import 'package:cost_master/models/question.dart';
import 'package:cost_master/services/auth_service.dart';
import 'package:cost_master/state/app_state.dart';
import 'package:cost_master/theme.dart';

import '../../test/fake_auth.dart';
import '../../test/fake_premium.dart';
import '../demo_video/recorder.dart';

/// Where make_reel.py wants the frames, next to its narration timings.
final _out = Directory(Platform.environment['REEL_DIR'] ?? 'build/reel');

/// Big heading above the phone for each narrated scene, in order.
const _headings = {
  'hook': 'CMA വിദ്യാർത്ഥികൾക്ക്',
  'chapter': 'ചാപ്റ്റർ തിരിച്ച് പഠിക്കാം',
  'test': 'ടൈമറുള്ള മോക്ക് ടെസ്റ്റ്',
  'result': 'ഉടൻ റിസൾട്ട്',
  'cta': 'ഇപ്പോൾ ഡൗൺലോഡ് ചെയ്യൂ',
};

const _downloadLink = 'costmaster-ck.web.app/download';

/// The phone's screen inside the 1080x1920 reel; matches make_reel.py.
const _screen = Rect.fromLTWH(270, 600, 540, 1170);
const _bezel = 16.0;

/// Malayalam text falls back from Manrope to this.
const _malayalam = 'NotoSansMalayalam';

final _layerKey = GlobalKey();

void main() {
  late Map<String, dynamic> narration;
  late Map<String, dynamic> durations;

  setUpAll(() async {
    await loadFonts(
      extra: {
        _malayalam: [
          'tool/reel/fonts/NotoSansMalayalam-Regular.ttf',
          'tool/reel/fonts/NotoSansMalayalam-Bold.ttf',
        ],
      },
    );
    narration = jsonDecode(
      File('${_out.path}/narration.json').readAsStringSync(),
    );
    durations = jsonDecode(
      File('${_out.path}/durations.json').readAsStringSync(),
    );
  });

  testWidgets('app walkthrough', (tester) async {
    debugDisableShadows = false;
    try {
      await _walkthrough(tester, durations);
    } finally {
      debugDisableShadows = true;
    }
  });

  testWidgets('backgrounds and phone frame', (tester) async {
    tester.view.physicalSize = const Size(1080, 1920);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    for (final name in _headings.keys) {
      await tester.pumpWidget(
        _Background(
          heading: _headings[name]!,
          caption: narration[name] as String,
          showLink: name == 'cta',
        ),
      );
      await savePng(tester, find.byKey(_layerKey), '${_out.path}/bg_$name.png');
    }
    await tester.pumpWidget(
      RepaintBoundary(
        key: _layerKey,
        child: const CustomPaint(painter: BezelPainter(_screen, bezel: _bezel)),
      ),
    );
    await savePng(tester, find.byKey(_layerKey), '${_out.path}/bezel.png');
  });
}

Future<void> _walkthrough(WidgetTester tester, Map durations) async {
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
    attempt('Management Accounting', 21, 25, 1),
    attempt('Corporate Accounting & Auditing', 18, 25, 2),
    attempt('Operations & Strategic Management', 22, 25, 4),
    attempt('Financial Management & Business Data Analytics', 16, 25, 5),
    attempt('Management Accounting', 17, 25, 9),
    attempt('Corporate Accounting & Auditing', 14, 25, 12),
  ];
  const student = AuthUser(uid: 'u1', email: 'asha@example.com');
  SharedPreferences.setMockInitialValues({
    'ownerUid': student.uid,
    'attempts': [for (final a in attempts) jsonEncode(a.toJson())],
  });

  tester.view.physicalSize = const Size(720, 1560);
  tester.view.devicePixelRatio = 2;
  addTearDown(tester.view.reset);

  final state = await AppState.load();
  await state.saveProfile(
    const Profile(
      name: 'Asha Menon',
      course: intermediate,
      group: 2,
      targetTerm: 'December 2026',
    ),
  );
  final r = Recorder(tester, durations, _out);
  await tester.pumpWidget(
    RepaintBoundary(
      key: Recorder.captureKey,
      child: Stack(
        textDirection: TextDirection.ltr,
        children: [
          CostMasterApp(
            state: state,
            auth: FakeAuthService(signedInAs: student),
            premium: FakePremiumService(active: true),
          ),
          TouchIndicator(r.touch),
        ],
      ),
    ),
  );
  await tester.pumpAndSettle();
  await r.frame();

  await r.scene('hook', () async {
    await r.hold(1.0);
    await r.scrollTo(find.text('Your Papers'), alignment: 0.1);
  });

  await r.scene('chapter', () async {
    await r.tap(find.text('Management Accounting'));
    await r.play(0.8);
    await r.tap(find.text('Decision Making'));
    await r.play(0.8);
    await r.scrollTo(find.text('Show answer').first, alignment: 0.85);
    await r.tap(find.text('Show answer').first);
    await r.play(0.5);
    await r.scrollTo(find.text('Hide answer'), alignment: 0.8);
  }, tail: 0.3);

  await r.scene('test', () async {
    await r.tap(find.byTooltip('Back'));
    await r.play(0.6);
    await r.tap(find.byTooltip('Back'));
    await r.play(0.6);
    await r.scrollTo(find.text('Start Mock Test'), alignment: 0.3);
    await r.tap(find.text('Start Mock Test'));
    await r.play(0.8);
    await r.tap(find.text('25'));
    await r.play(0.3);
    await r.tap(find.text('Start Test'));
    await r.play(1.0);
    await r.tap(option(correctly: true));
    await r.play(0.6);
  }, tail: 0.3);

  await r.scene('result', () async {
    // Answer the rest off camera, mostly correctly, then submit on camera.
    for (var i = 1; find.text('Submit').evaluate().isEmpty; i++) {
      await tester.tap(find.text('Next'));
      await tester.pump(const Duration(seconds: 20));
      await tester.tap(option(correctly: i % 7 != 3));
      await tester.pump();
    }
    await tester.pumpAndSettle(const Duration(milliseconds: 100));
    await r.frame();
    await r.tap(find.text('Submit'));
    await r.play(0.6);
    await r.tap(
      find.descendant(
        of: find.byType(AlertDialog),
        matching: find.text('Submit'),
      ),
    );
    await r.play(1.4);
    await r.hold(0.4);
    await r.scrollTo(find.text('Answer Review'), alignment: 0.05);
  }, tail: 0.3);

  await r.scene('cta', () async {
    await r.scrollTo(find.text('Back to Home'), alignment: 0.3);
    await r.tap(find.text('Back to Home'));
    await r.play(0.8);
  }, tail: 1.5);

  r.writeManifest();
}

/// The 1080x1920 backdrop for one scene: brand, heading and subtitle above
/// the phone, whose shadow sits where make_reel.py places the screen.
class _Background extends StatelessWidget {
  final String heading;
  final String caption;

  /// Shows the download link instead of the subtitle.
  final bool showLink;

  const _Background({
    required this.heading,
    required this.caption,
    this.showLink = false,
  });

  @override
  Widget build(BuildContext context) {
    final phone = _screen.inflate(_bezel);
    return RepaintBoundary(
      key: _layerKey,
      child: Directionality(
        textDirection: TextDirection.ltr,
        child: DefaultTextStyle(
          style: const TextStyle(
            fontFamily: fontFamily,
            fontFamilyFallback: [_malayalam],
            color: Colors.white,
          ),
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xFF1E40AF), Color(0xFF0F1D5C)],
              ),
            ),
            child: Stack(
              children: [
                Positioned(
                  right: -260,
                  bottom: -200,
                  child: Container(
                    width: 900,
                    height: 900,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white.withValues(alpha: 0.05),
                    ),
                  ),
                ),
                Positioned.fromRect(
                  rect: phone,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(58),
                      color: const Color(0xFF0B0F1A),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0x66000000),
                          blurRadius: 60,
                          offset: Offset(0, 30),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 60,
                  right: 60,
                  top: 110,
                  height: phone.top - 140,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 56,
                            height: 56,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(
                              Icons.school_rounded,
                              color: AppColors.brand,
                              size: 32,
                            ),
                          ),
                          const SizedBox(width: 16),
                          const Text(
                            'CostMaster',
                            style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Text(
                        heading,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 64,
                          fontWeight: FontWeight.w800,
                          height: 1.2,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 20),
                      if (showLink)
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 28,
                            vertical: 14,
                          ),
                          decoration: BoxDecoration(
                            color: AppColors.cta,
                            borderRadius: BorderRadius.circular(40),
                          ),
                          child: const Text(
                            _downloadLink,
                            style: TextStyle(
                              fontSize: 36,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        )
                      else
                        Text(
                          caption,
                          textAlign: TextAlign.center,
                          maxLines: 3,
                          style: TextStyle(
                            fontSize: 34,
                            height: 1.45,
                            color: Colors.white.withValues(alpha: 0.9),
                          ),
                        ),
                      const Spacer(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
