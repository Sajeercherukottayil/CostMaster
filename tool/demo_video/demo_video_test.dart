// Records the frames for the narrated demo video. Run it through
// make_video.py, which also makes the voiceover and joins everything up.
//
// It drives the real app with a demo student, saving a frame only while
// something moves, and holds each scene until its narration has finished.
// It lives outside test/ so CI doesn't run it.
// ignore_for_file: invalid_use_of_visible_for_testing_member
import 'dart:convert';
import 'dart:io';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:cost_master/data/question_bank.dart';
import 'package:cost_master/main.dart';
import 'package:cost_master/models/profile.dart';
import 'package:cost_master/models/question.dart';
import 'package:cost_master/state/app_state.dart';
import 'package:cost_master/theme.dart';

import '../../test/fake_auth.dart';

/// Where make_video.py wants the frames, next to its narration timings.
final _out = Directory(Platform.environment['DEMO_DIR'] ?? 'build/demo_video');

const _fps = 30;

/// Heading shown beside the phone for each narrated scene, in order.
const _headings = {
  'login': 'Email login',
  'home': 'Home dashboard',
  'paper': 'Paper-wise practice',
  'chapter': 'Answers with explanations',
  'setup': 'Timed mock tests',
  'test': 'Exam-style test screen',
  'result': 'Instant results',
  'results': 'Progress tracking',
  'profile': 'Student profile',
};

/// The phone's screen inside the 1920x1080 video, and its frame.
const _screen = Rect.fromLTWH(1180, 64, 440, 953);
const _bezel = 18.0;

final _layerKey = GlobalKey();

void main() {
  late Map<String, dynamic> narration;
  late Map<String, dynamic> durations;

  setUpAll(() async {
    await _loadFonts();
    narration = jsonDecode(File('${_out.path}/narration.json').readAsStringSync());
    durations = jsonDecode(File('${_out.path}/durations.json').readAsStringSync());
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
    tester.view.physicalSize = const Size(1920, 1080);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    final names = _headings.keys.toList();
    for (final (i, name) in names.indexed) {
      await tester.pumpWidget(_Background(
        step: i + 1,
        steps: names.length,
        heading: _headings[name]!,
        caption: narration[name] as String,
      ));
      await _save(tester, find.byKey(_layerKey), 'bg_$name.png');
    }
    await tester.pumpWidget(RepaintBoundary(
      key: _layerKey,
      child: const CustomPaint(painter: _BezelPainter()),
    ));
    await _save(tester, find.byKey(_layerKey), 'bezel.png');
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
    attempt('Management Accounting', 21, 25, 0),
    attempt('CMA Intermediate – Mock Test', 41, 50, 1),
    attempt('Corporate Accounting & Auditing', 18, 25, 2),
    attempt('Operations & Strategic Management', 22, 25, 4),
    attempt('Financial Management & Business Data Analytics', 16, 25, 5),
    attempt('CMA Intermediate – Mock Test', 36, 50, 7),
    attempt('Management Accounting', 17, 25, 9),
    attempt('Corporate Accounting & Auditing', 14, 25, 12),
  ];
  // The fake service gives the first account it creates the uid "uid-0".
  SharedPreferences.setMockInitialValues({
    'ownerUid': 'uid-0',
    'profile': jsonEncode(const Profile(
      name: 'Asha Menon',
      course: intermediate,
      group: 2,
      targetTerm: 'December 2026',
    ).toJson()),
    'attempts': [for (final a in attempts) jsonEncode(a.toJson())],
  });

  tester.view.physicalSize = const Size(720, 1560);
  tester.view.devicePixelRatio = 2;
  addTearDown(tester.view.reset);

  final auth = FakeAuthService();
  await auth.signUp(
    name: 'Asha Menon',
    email: 'asha@example.com',
    password: 'cma2026!',
  );
  final state = await AppState.load();
  final r = _Recorder(tester, durations);
  await tester.pumpWidget(RepaintBoundary(
    key: _Recorder.captureKey,
    child: Stack(
      textDirection: TextDirection.ltr,
      children: [
        CostMasterApp(state: state, auth: auth),
        _TouchIndicator(r.touch),
      ],
    ),
  ));
  await tester.pumpAndSettle();
  await r.frame();

  await r.scene('login', () async {
    await r.hold(1.2);
    final fields = find.byType(TextFormField);
    await r.tap(fields.at(0));
    await r.type(fields.at(0), 'asha@example.com');
    await r.tap(fields.at(1));
    await r.type(fields.at(1), 'cma2026!');
  });

  await r.scene('home', () async {
    await r.tap(find.widgetWithText(FilledButton, 'Log in'));
    await r.play(1.2);
    await r.hold(2.5);
    await r.scrollTo(find.text('Your Papers'), alignment: 0.1);
  });

  await r.scene('paper', () async {
    await r.scrollTo(find.text('Management Accounting'), alignment: 0.6);
    await r.hold(0.4);
    await r.tap(find.text('Management Accounting'));
    await r.play(0.8);
  });

  await r.scene('chapter', () async {
    await r.tap(find.text('Decision Making'));
    await r.play(0.8);
    await r.scrollTo(find.text('Show answer').first, alignment: 0.85);
    await r.tap(find.text('Show answer').first);
    await r.play(0.5);
    await r.scrollTo(find.text('Hide answer'), alignment: 0.8);
  });

  await r.scene('setup', () async {
    await r.tap(find.byTooltip('Back'));
    await r.play(0.6);
    await r.tap(find.byTooltip('Back'));
    await r.play(0.6);
    await r.scrollTo(find.text('Start Mock Test'), alignment: 0.3);
    await r.tap(find.text('Start Mock Test'));
    await r.play(0.8);
    await r.tap(find.text('50'));
    await r.play(0.5);
    await r.tap(find.text('2 min · Steady'));
    await r.play(0.6);
    await r.tap(find.text('25'));
    await r.play(0.4);
    await r.tap(find.text('1 min · Quick'));
    await r.play(0.4);
  });

  await r.scene('test', () async {
    await r.tap(find.text('Start Test'));
    await r.play(1.0);
    await r.tap(_option(correctly: true));
    await r.play(0.6);
    await r.tap(find.text('Next'));
    await r.play(0.8);
    await r.tap(_option(correctly: true));
    await r.play(0.4);
    await r.tap(find.text('Mark'));
    await r.play(0.6);
    await r.tap(find.text('Next'));
    await r.play(0.8);
    await r.tap(_option(correctly: true));
    await r.play(0.6);
    await r.tap(find.byTooltip('All questions'));
    await r.play(1.6);
    await r.tap(find.descendant(
      of: find.byType(BottomSheet),
      matching: find.text('2'),
    ));
    await r.play(0.8);
  });

  await r.scene('result', () async {
    // Answer the rest off camera, mostly correctly, then submit on camera.
    for (var i = 1; i < 24; i++) {
      await tester.tap(find.text('Next'));
      await tester.pump(const Duration(seconds: 20));
      if (i >= 2) {
        await tester.tap(_option(correctly: i % 7 != 3));
        await tester.pump();
      }
    }
    await tester.pumpAndSettle(const Duration(milliseconds: 100));
    await r.frame();
    await r.hold(0.4);
    await r.tap(find.text('Submit'));
    await r.play(0.6);
    await r.tap(find.descendant(
      of: find.byType(AlertDialog),
      matching: find.text('Submit'),
    ));
    await r.play(1.4);
    await r.hold(1.2);
    await r.scrollTo(find.text('Answer Review'), alignment: 0.05);
    await r.tap(find.byType(ExpansionTile).first);
    await r.play(0.6);
  });

  await r.scene('results', () async {
    await r.scrollTo(find.text('Back to Home'), alignment: 0.3);
    await r.tap(find.text('Back to Home'));
    await r.play(0.8);
    await r.tap(find.text('Results').last);
    await r.play(0.6);
    await r.hold(2.0);
    await r.scrollTo(find.text('By paper'), alignment: 0.15);
  });

  await r.scene('profile', () async {
    await r.tap(find.text('Profile').last);
    await r.play(0.6);
  }, tail: 1.5);

  r.writeManifest();
  // The mock test was submitted, so no timers are left running.
}

/// The option for the question on screen: the right one, or a wrong one.
Finder _option({required bool correctly}) {
  final question = questionBank.firstWhere(
    (q) => find.text(q.text).evaluate().isNotEmpty,
  );
  final right = question.options[question.answerIndex];
  final pick =
      correctly ? right : question.options.firstWhere((o) => o != right);
  return find.text(pick).last;
}

class _Recorder {
  static final captureKey = GlobalKey();

  final WidgetTester tester;
  final Map durations;
  final touch = ValueNotifier<Offset?>(null);

  /// Each saved frame and how long it stays on screen.
  final _frames = <(String, double)>[];
  final _scenes = <Map<String, Object>>[];
  double _time = 0;

  _Recorder(this.tester, this.durations) {
    Directory('${_out.path}/frames').createSync(recursive: true);
  }

  Future<void> frame() async {
    final name = 'f${_frames.length.toString().padLeft(5, '0')}.png';
    await _save(tester, find.byKey(captureKey), 'frames/$name');
    _frames.add((name, 1 / _fps));
    _time += 1 / _fps;
  }

  /// Keeps the last frame on screen; nothing is moving.
  Future<void> hold(double seconds) async {
    final (name, length) = _frames.removeLast();
    _frames.add((name, length + seconds));
    _time += seconds;
  }

  /// Lets animations run for [seconds], saving every frame.
  Future<void> play(double seconds) async {
    for (var i = 0; i < seconds * _fps; i++) {
      await tester.pump(const Duration(microseconds: 1000000 ~/ _fps));
      await frame();
    }
  }

  Future<void> tap(Finder finder) async {
    final target = finder.first;
    touch.value = tester.getCenter(target);
    await play(0.2);
    await tester.tap(target);
    await play(0.15);
    touch.value = null;
  }

  Future<void> type(Finder field, String text) async {
    for (var i = 1; i <= text.length; i++) {
      await tester.enterText(field, text.substring(0, i));
      await tester.pump();
      await frame();
      await play(1 / _fps);
    }
    await play(0.3);
  }

  /// Smoothly scrolls until [finder] sits at [alignment] of the viewport.
  Future<void> scrollTo(Finder finder, {double alignment = 0.5}) async {
    const duration = Duration(milliseconds: 900);
    Scrollable.ensureVisible(
      tester.element(finder.first),
      alignment: alignment,
      duration: duration,
      curve: Curves.easeInOutCubic,
    );
    await play(duration.inMilliseconds / 1000 + 0.15);
  }

  /// Runs [body], then holds until the scene's narration has finished.
  Future<void> scene(
    String name,
    Future<void> Function() body, {
    double tail = 0.6,
  }) async {
    final start = _time;
    await body();
    final end = start + (durations[name] as num) + tail;
    if (_time < end) await hold(end - _time);
    _scenes.add({'name': name, 'start': start, 'end': _time});
  }

  /// Lists the frames for ffmpeg's concat demuxer and the scene timings.
  void writeManifest() {
    final lines = <String>[];
    for (final (name, length) in _frames) {
      lines
        ..add("file 'frames/$name'")
        ..add('duration ${length.toStringAsFixed(4)}');
    }
    // The demuxer ignores the last entry's duration unless it is repeated.
    lines.add("file 'frames/${_frames.last.$1}'");
    File('${_out.path}/frames.txt').writeAsStringSync('${lines.join('\n')}\n');
    File('${_out.path}/scenes.json').writeAsStringSync(jsonEncode(_scenes));
  }
}

/// A fingertip dot where the demo taps.
class _TouchIndicator extends StatelessWidget {
  final ValueNotifier<Offset?> touch;

  const _TouchIndicator(this.touch);

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      child: ValueListenableBuilder<Offset?>(
        valueListenable: touch,
        builder: (context, at, _) {
          return Stack(
            textDirection: TextDirection.ltr,
            children: [
              if (at != null)
                Positioned(
                  left: at.dx - 22,
                  top: at.dy - 22,
                  child: Container(
                    width: 44,
                    height: 44,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black.withValues(alpha: 0.18),
                      border: Border.all(
                        color: Colors.white.withValues(alpha: 0.9),
                        width: 2.5,
                      ),
                    ),
                  ),
                ),
            ],
          );
        },
      ),
    );
  }
}

/// The 1920x1080 backdrop for one scene: title, heading and subtitle on the
/// left, and the phone's shadow where make_video.py places the screen.
class _Background extends StatelessWidget {
  final int step;
  final int steps;
  final String heading;
  final String caption;

  const _Background({
    required this.step,
    required this.steps,
    required this.heading,
    required this.caption,
  });

  @override
  Widget build(BuildContext context) {
    final phone = _screen.inflate(_bezel);
    return RepaintBoundary(
      key: _layerKey,
      child: Directionality(
        textDirection: TextDirection.ltr,
        child: DefaultTextStyle(
          style: const TextStyle(fontFamily: fontFamily, color: Colors.white),
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Color(0xFF1E40AF), Color(0xFF0F1D5C)],
              ),
            ),
            child: Stack(
              children: [
                Positioned(
                  right: -180,
                  top: -220,
                  child: Container(
                    width: 760,
                    height: 760,
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
                  left: 150,
                  top: 110,
                  width: 860,
                  bottom: 110,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 64,
                            height: 64,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(
                              Icons.school_rounded,
                              color: AppColors.brand,
                              size: 36,
                            ),
                          ),
                          const SizedBox(width: 20),
                          const Text(
                            'CostMaster',
                            style: TextStyle(
                              fontSize: 44,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 14),
                      Text(
                        'CMA exam practice app for students in India',
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.white.withValues(alpha: 0.75),
                        ),
                      ),
                      const Spacer(),
                      Text(
                        '${step.toString().padLeft(2, '0')} / '
                        '${steps.toString().padLeft(2, '0')}',
                        style: const TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                          color: AppColors.cta,
                          letterSpacing: 2,
                        ),
                      ),
                      const SizedBox(height: 14),
                      Text(
                        heading,
                        style: const TextStyle(
                          fontSize: 68,
                          fontWeight: FontWeight.w800,
                          height: 1.1,
                        ),
                      ),
                      const SizedBox(height: 28),
                      Text(
                        caption,
                        style: TextStyle(
                          fontSize: 30,
                          height: 1.45,
                          color: Colors.white.withValues(alpha: 0.88),
                        ),
                      ),
                      const Spacer(),
                      Row(
                        children: [
                          for (final tech in ['Flutter', 'Dart', 'Firebase'])
                            Container(
                              margin: const EdgeInsets.only(right: 12),
                              padding: const EdgeInsets.symmetric(
                                horizontal: 18,
                                vertical: 9,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                border: Border.all(
                                  color: Colors.white.withValues(alpha: 0.35),
                                ),
                              ),
                              child: Text(
                                tech,
                                style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                        ],
                      ),
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

/// The phone body, transparent where the screen shows through. Drawn over
/// the screen so it also rounds the screen's corners.
class _BezelPainter extends CustomPainter {
  const _BezelPainter();

  @override
  void paint(Canvas canvas, Size size) {
    final outer = RRect.fromRectAndRadius(
      _screen.inflate(_bezel),
      const Radius.circular(58),
    );
    final inner = RRect.fromRectAndRadius(_screen, const Radius.circular(44));
    canvas.drawDRRect(outer, inner, Paint()..color = const Color(0xFF0B0F1A));
    canvas.drawRRect(
      outer.deflate(1.5),
      Paint()
        ..style = PaintingStyle.stroke
        ..strokeWidth = 3
        ..color = const Color(0xFF3A4256),
    );
    // Camera hole.
    canvas.drawCircle(
      Offset(_screen.center.dx, _screen.top + 22),
      8,
      Paint()..color = const Color(0xFF0B0F1A),
    );
  }

  @override
  bool shouldRepaint(_BezelPainter oldDelegate) => false;
}

Future<void> _save(WidgetTester tester, Finder boundary, String name) async {
  final element = tester.element(boundary);
  await tester.runAsync(() async {
    final image = await captureImage(element);
    final bytes = await image.toByteData(format: ui.ImageByteFormat.png);
    File('${_out.path}/$name').writeAsBytesSync(bytes!.buffer.asUint8List());
    image.dispose();
  });
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
