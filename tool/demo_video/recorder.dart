// Shared by the demo video and the reel: drives the app in a widget test,
// saving a frame only while something moves, and holds each scene until
// its narration has finished.
// ignore_for_file: invalid_use_of_visible_for_testing_member
import 'dart:convert';
import 'dart:io';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:cost_master/data/question_bank.dart';

const fps = 30;

/// The option for the question on screen: the right one, or a wrong one.
Finder option({required bool correctly}) {
  final question = questionBank.firstWhere(
    (q) => find.text(q.text).evaluate().isNotEmpty,
  );
  final right = question.options[question.answerIndex];
  final pick = correctly
      ? right
      : question.options.firstWhere((o) => o != right);
  return find.text(pick).last;
}

class Recorder {
  static final captureKey = GlobalKey();

  final WidgetTester tester;
  final Map durations;

  /// Where frames.txt, scenes.json and frames/ are written.
  final Directory out;
  final touch = ValueNotifier<Offset?>(null);

  /// Each saved frame and how long it stays on screen.
  final _frames = <(String, double)>[];
  final _scenes = <Map<String, Object>>[];
  double _time = 0;

  Recorder(this.tester, this.durations, this.out) {
    Directory('${out.path}/frames').createSync(recursive: true);
  }

  Future<void> frame() async {
    final name = 'f${_frames.length.toString().padLeft(5, '0')}.png';
    await savePng(tester, find.byKey(captureKey), '${out.path}/frames/$name');
    _frames.add((name, 1 / fps));
    _time += 1 / fps;
  }

  /// Keeps the last frame on screen; nothing is moving.
  Future<void> hold(double seconds) async {
    final (name, length) = _frames.removeLast();
    _frames.add((name, length + seconds));
    _time += seconds;
  }

  /// Lets animations run for [seconds], saving every frame.
  Future<void> play(double seconds) async {
    for (var i = 0; i < seconds * fps; i++) {
      await tester.pump(const Duration(microseconds: 1000000 ~/ fps));
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
      await play(1 / fps);
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
    File('${out.path}/frames.txt').writeAsStringSync('${lines.join('\n')}\n');
    File('${out.path}/scenes.json').writeAsStringSync(jsonEncode(_scenes));
  }
}

/// A fingertip dot where the demo taps.
class TouchIndicator extends StatelessWidget {
  final ValueNotifier<Offset?> touch;

  const TouchIndicator(this.touch, {super.key});

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

/// Draws a phone body around [screen], transparent where the screen shows
/// through. Drawn over the screen so it also rounds the screen's corners.
class BezelPainter extends CustomPainter {
  final Rect screen;
  final double bezel;

  const BezelPainter(this.screen, {this.bezel = 18});

  @override
  void paint(Canvas canvas, Size size) {
    final outer = RRect.fromRectAndRadius(
      screen.inflate(bezel),
      const Radius.circular(58),
    );
    final inner = RRect.fromRectAndRadius(screen, const Radius.circular(44));
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
      Offset(screen.center.dx, screen.top + 22),
      8,
      Paint()..color = const Color(0xFF0B0F1A),
    );
  }

  @override
  bool shouldRepaint(BezelPainter oldDelegate) => oldDelegate.screen != screen;
}

/// Saves what [boundary] (a RepaintBoundary) shows as a PNG at [path].
Future<void> savePng(WidgetTester tester, Finder boundary, String path) async {
  final element = tester.element(boundary);
  await tester.runAsync(() async {
    final image = await captureImage(element);
    final bytes = await image.toByteData(format: ui.ImageByteFormat.png);
    File(path).writeAsBytesSync(bytes!.buffer.asUint8List());
    image.dispose();
  });
}

/// Tests draw text in a placeholder font unless the real ones are loaded.
/// [extra] adds more families, as family name to font file paths.
Future<void> loadFonts({Map<String, List<String>> extra = const {}}) async {
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
  for (final MapEntry(:key, :value) in extra.entries) {
    await load(key, value);
  }
}
