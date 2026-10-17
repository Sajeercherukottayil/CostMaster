import 'dart:async';

import 'package:flutter/material.dart';

import '../models/profile.dart';
import '../models/question.dart';
import '../state/app_state.dart';
import '../theme.dart';
import '../utils/time_format.dart';
import '../widgets/ui.dart';
import 'result_screen.dart';

class MockTestScreen extends StatefulWidget {
  final String title;
  final List<Question> questions;
  final Duration duration;

  const MockTestScreen({
    super.key,
    required this.title,
    required this.questions,
    required this.duration,
  });

  @override
  State<MockTestScreen> createState() => _MockTestScreenState();
}

class _MockTestScreenState extends State<MockTestScreen> {
  final Map<int, int> _answers = {};
  final Set<int> _marked = {};
  int _current = 0;
  late Duration _remaining = widget.duration;
  late final List<int> _secondsSpent = List.filled(widget.questions.length, 0);
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(const Duration(seconds: 1), (_) {
      _secondsSpent[_current]++;
      if (_remaining.inSeconds <= 1) {
        _submit();
      } else {
        setState(() => _remaining -= const Duration(seconds: 1));
      }
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  void _submit() {
    _timer?.cancel();
    final timeTaken = widget.duration - _remaining;
    var correct = 0;
    for (var i = 0; i < widget.questions.length; i++) {
      if (_answers[i] == widget.questions[i].answerIndex) correct++;
    }
    AppScope.read(context).addAttempt(
      TestAttempt(
        title: widget.title,
        correct: correct,
        total: widget.questions.length,
        seconds: timeTaken.inSeconds,
        date: DateTime.now(),
      ),
    );
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (_) => ResultScreen(
          title: widget.title,
          questions: widget.questions,
          answers: _answers,
          timeTaken: timeTaken,
          secondsSpent: _secondsSpent,
        ),
      ),
    );
  }

  Future<void> _confirmSubmit() async {
    final unanswered = widget.questions.length - _answers.length;
    final ok = await showDialog<bool>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text('Submit test?'),
        content: Text(
          unanswered == 0
              ? 'You have answered all questions.'
              : 'You have $unanswered unanswered question(s).',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx, false),
            child: const Text('Cancel'),
          ),
          FilledButton(
            onPressed: () => Navigator.pop(ctx, true),
            child: const Text('Submit'),
          ),
        ],
      ),
    );
    if (ok == true && mounted) _submit();
  }

  Future<void> _confirmQuit() async {
    final quit = await showDialog<bool>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text('Quit test?'),
        content: const Text('Your progress will be lost.'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx, false),
            child: const Text('Continue test'),
          ),
          TextButton(
            onPressed: () => Navigator.pop(ctx, true),
            style: TextButton.styleFrom(foregroundColor: AppColors.danger),
            child: const Text('Quit'),
          ),
        ],
      ),
    );
    if (quit == true && mounted) Navigator.of(context).pop();
  }

  void _showPalette() {
    final total = widget.questions.length;
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (ctx) => SafeArea(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxHeight: MediaQuery.sizeOf(ctx).height * 0.75,
          ),
          child: SingleChildScrollView(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Jump to question',
                  style: Theme.of(ctx).textTheme.titleLarge,
                ),
                const SizedBox(height: 4),
                Text(
                  '${_answers.length} answered · ${_marked.length} bookmarked'
                  ' · ${total - _answers.length} left',
                  style: Theme.of(ctx).textTheme.bodySmall
                      ?.copyWith(color: AppColors.muted),
                ),
                const SizedBox(height: 16),
                Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: [
                    for (var i = 0; i < total; i++)
                      _PaletteButton(
                        number: i + 1,
                        answered: _answers.containsKey(i),
                        marked: _marked.contains(i),
                        current: i == _current,
                        onTap: () {
                          Navigator.pop(ctx);
                          setState(() => _current = i);
                        },
                      ),
                  ],
                ),
                const SizedBox(height: 16),
                const _PaletteLegend(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  String get _timeText => formatSeconds(_remaining.inSeconds);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final q = widget.questions[_current];
    final total = widget.questions.length;
    final lowTime = _remaining.inSeconds <= 60;
    final marked = _marked.contains(_current);

    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, _) {
        if (!didPop) _confirmQuit();
      },
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            tooltip: 'Quit test',
            icon: const Icon(Icons.close_rounded),
            onPressed: _confirmQuit,
          ),
          titleSpacing: 0,
          title: Row(
            children: [
              Expanded(
                child: ProgressBar(
                  value: (_current + 1) / total,
                  height: 6,
                  color: Colors.white,
                  trackColor: Colors.white.withValues(alpha: 0.25),
                ),
              ),
              const SizedBox(width: 14),
              AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 6,
                ),
                decoration: BoxDecoration(
                  color: lowTime ? AppColors.danger : Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.timer_rounded,
                      size: 16,
                      color: lowTime ? Colors.white : AppColors.brand,
                    ),
                    const SizedBox(width: 5),
                    Text(
                      _timeText,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w800,
                        color: lowTime ? Colors.white : AppColors.brand,
                        fontFeatures: const [FontFeature.tabularFigures()],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          actions: [
            IconButton(
              tooltip: 'All questions',
              icon: const Icon(Icons.apps_rounded),
              onPressed: _showPalette,
            ),
            const SizedBox(width: 4),
          ],
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView(
                padding: const EdgeInsets.fromLTRB(20, 16, 20, 20),
                children: [
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 6,
                        ),
                        decoration: BoxDecoration(
                          color: AppColors.brand,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Text(
                          'Question ${_current + 1} of $total',
                          style: theme.textTheme.labelLarge?.copyWith(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Text(
                        '· ${formatSeconds(_secondsSpent[_current])}',
                        style: theme.textTheme.labelMedium?.copyWith(
                          color: AppColors.faint,
                          fontFeatures: const [FontFeature.tabularFigures()],
                        ),
                      ),
                      const Spacer(),
                      TextButton.icon(
                        style: TextButton.styleFrom(
                          foregroundColor: marked
                              ? AppColors.cta
                              : AppColors.muted,
                          visualDensity: VisualDensity.compact,
                        ),
                        onPressed: () => setState(
                          () => marked
                              ? _marked.remove(_current)
                              : _marked.add(_current),
                        ),
                        icon: Icon(
                          marked
                              ? Icons.bookmark_rounded
                              : Icons.bookmark_border_rounded,
                        ),
                        label: Text(marked ? 'Marked' : 'Mark'),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Text(
                    q.text,
                    style: theme.textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                      height: 1.4,
                      letterSpacing: -0.2,
                    ),
                  ),
                  const SizedBox(height: 24),
                  for (var i = 0; i < q.options.length; i++)
                    _OptionTile(
                      label: String.fromCharCode(65 + i),
                      text: q.options[i],
                      selected: _answers[_current] == i,
                      onTap: () => setState(
                        () => _answers[_current] == i
                            ? _answers.remove(_current)
                            : _answers[_current] = i,
                      ),
                    ),
                ],
              ),
            ),
            DecoratedBox(
              decoration: const BoxDecoration(
                border: Border(top: BorderSide(color: AppColors.border)),
              ),
              child: SafeArea(
                top: false,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(16, 12, 16, 12),
                  child: Row(
                    children: [
                      OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          minimumSize: const Size(52, 52),
                          padding: EdgeInsets.zero,
                        ),
                        onPressed: _current == 0
                            ? null
                            : () => setState(() => _current--),
                        child: const Icon(Icons.arrow_back_rounded),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: _current < total - 1
                            ? FilledButton(
                                onPressed: () => setState(() => _current++),
                                child: const Text('Next'),
                              )
                            : FilledButton(
                                style: FilledButton.styleFrom(
                                  backgroundColor: AppColors.success,
                                ),
                                onPressed: _confirmSubmit,
                                child: const Text('Submit'),
                              ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _OptionTile extends StatelessWidget {
  final String label;
  final String text;
  final bool selected;
  final VoidCallback onTap;

  const _OptionTile({
    required this.label,
    required this.text,
    required this.selected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final shape = BorderRadius.circular(16);
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: shape,
          onTap: onTap,
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 160),
            padding: const EdgeInsets.all(14),
            decoration: BoxDecoration(
              color: selected ? AppColors.accentSoft : AppColors.surface,
              borderRadius: shape,
              border: Border.all(
                color: selected ? AppColors.accent : AppColors.border,
                width: selected ? 2 : 1.5,
              ),
            ),
            child: Row(
              children: [
                AnimatedContainer(
                  duration: const Duration(milliseconds: 160),
                  width: 32,
                  height: 32,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: selected ? AppColors.accent : AppColors.field,
                    shape: BoxShape.circle,
                  ),
                  child: Text(
                    label,
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                      color: selected ? Colors.white : AppColors.ink,
                    ),
                  ),
                ),
                const SizedBox(width: 14),
                Expanded(
                  child: Text(
                    text,
                    style: TextStyle(
                      fontSize: 15,
                      color: AppColors.ink,
                      fontWeight: selected ? FontWeight.w700 : FontWeight.w500,
                    ),
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

class _PaletteButton extends StatelessWidget {
  final int number;
  final bool answered;
  final bool marked;
  final bool current;
  final VoidCallback onTap;

  const _PaletteButton({
    required this.number,
    required this.answered,
    required this.marked,
    required this.current,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final bg = marked
        ? AppColors.warningSoft
        : answered
        ? AppColors.brand
        : AppColors.field;
    final fg = marked
        ? AppColors.warning
        : answered
        ? Colors.white
        : AppColors.ink;
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12),
      child: Container(
        width: 46,
        height: 46,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: bg,
          borderRadius: BorderRadius.circular(12),
          border: current ? Border.all(color: AppColors.cta, width: 3) : null,
        ),
        child: Text(
          '$number',
          style: TextStyle(color: fg, fontWeight: FontWeight.w800),
        ),
      ),
    );
  }
}

class _PaletteLegend extends StatelessWidget {
  const _PaletteLegend();

  @override
  Widget build(BuildContext context) {
    Widget item(Color c, String t) => Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 14,
          height: 14,
          decoration: BoxDecoration(
            color: c,
            borderRadius: BorderRadius.circular(4),
          ),
        ),
        const SizedBox(width: 6),
        Text(t, style: Theme.of(context).textTheme.bodySmall),
      ],
    );
    return Wrap(
      spacing: 16,
      runSpacing: 6,
      children: [
        item(AppColors.brand, 'Answered'),
        item(AppColors.field, 'Not answered'),
        item(AppColors.warningSoft, 'Bookmarked'),
      ],
    );
  }
}
