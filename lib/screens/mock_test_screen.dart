import 'dart:async';

import 'package:flutter/material.dart';

import '../models/question.dart';
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
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(const Duration(seconds: 1), (_) {
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
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (_) => ResultScreen(
          title: widget.title,
          questions: widget.questions,
          answers: _answers,
          timeTaken: widget.duration - _remaining,
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
        content: Text(unanswered == 0
            ? 'You have answered all questions.'
            : 'You have $unanswered unanswered question(s).'),
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
            child: const Text('Quit'),
          ),
        ],
      ),
    );
    if (quit == true && mounted) Navigator.of(context).pop();
  }

  void _showPalette() {
    showModalBottomSheet(
      context: context,
      builder: (ctx) => SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Questions', style: Theme.of(ctx).textTheme.titleMedium),
              const SizedBox(height: 12),
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: [
                  for (var i = 0; i < widget.questions.length; i++)
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
              const SizedBox(height: 12),
              const _PaletteLegend(),
            ],
          ),
        ),
      ),
    );
  }

  String get _timeText {
    final m = _remaining.inMinutes.toString().padLeft(2, '0');
    final s = (_remaining.inSeconds % 60).toString().padLeft(2, '0');
    return '$m:$s';
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final scheme = theme.colorScheme;
    final q = widget.questions[_current];
    final total = widget.questions.length;
    final lowTime = _remaining.inSeconds <= 60;

    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, _) {
        if (!didPop) _confirmQuit();
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: Chip(
                avatar: Icon(Icons.timer_outlined,
                    size: 18, color: lowTime ? scheme.error : null),
                label: Text(
                  _timeText,
                  style: TextStyle(
                    color: lowTime ? scheme.error : null,
                    fontFeatures: const [FontFeature.tabularFigures()],
                  ),
                ),
              ),
            ),
            IconButton(
              tooltip: 'All questions',
              icon: const Icon(Icons.grid_view),
              onPressed: _showPalette,
            ),
          ],
        ),
        body: Column(
          children: [
            LinearProgressIndicator(value: (_current + 1) / total),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.all(16),
                children: [
                  Row(
                    children: [
                      Text('Question ${_current + 1} of $total',
                          style: theme.textTheme.labelLarge),
                      const Spacer(),
                      TextButton.icon(
                        onPressed: () => setState(() => _marked.contains(_current)
                            ? _marked.remove(_current)
                            : _marked.add(_current)),
                        icon: Icon(_marked.contains(_current)
                            ? Icons.bookmark
                            : Icons.bookmark_border),
                        label: const Text('Review later'),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Text(q.text, style: theme.textTheme.titleMedium),
                  const SizedBox(height: 16),
                  for (var i = 0; i < q.options.length; i++)
                    _OptionTile(
                      label: String.fromCharCode(65 + i),
                      text: q.options[i],
                      selected: _answers[_current] == i,
                      onTap: () => setState(() => _answers[_current] == i
                          ? _answers.remove(_current)
                          : _answers[_current] = i),
                    ),
                ],
              ),
            ),
            SafeArea(
              top: false,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  children: [
                    OutlinedButton(
                      onPressed: _current == 0
                          ? null
                          : () => setState(() => _current--),
                      child: const Text('Previous'),
                    ),
                    const Spacer(),
                    if (_current < total - 1)
                      FilledButton(
                        onPressed: () => setState(() => _current++),
                        child: const Text('Next'),
                      )
                    else
                      FilledButton(
                        onPressed: _confirmSubmit,
                        child: const Text('Submit'),
                      ),
                  ],
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
    final scheme = Theme.of(context).colorScheme;
    return Card(
      margin: const EdgeInsets.only(bottom: 10),
      color: selected ? scheme.primaryContainer : null,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(
          color: selected ? scheme.primary : scheme.outlineVariant,
          width: selected ? 2 : 1,
        ),
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(14),
          child: Row(
            children: [
              CircleAvatar(
                radius: 14,
                backgroundColor:
                    selected ? scheme.primary : scheme.surfaceContainerHighest,
                child: Text(
                  label,
                  style: TextStyle(
                    fontSize: 13,
                    color: selected ? scheme.onPrimary : scheme.onSurface,
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(child: Text(text)),
            ],
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
    final scheme = Theme.of(context).colorScheme;
    final bg = marked
        ? scheme.tertiaryContainer
        : answered
            ? scheme.primary
            : scheme.surfaceContainerHighest;
    final fg = marked
        ? scheme.onTertiaryContainer
        : answered
            ? scheme.onPrimary
            : scheme.onSurface;
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(8),
      child: Container(
        width: 44,
        height: 44,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: bg,
          borderRadius: BorderRadius.circular(8),
          border: current ? Border.all(color: scheme.onSurface, width: 2) : null,
        ),
        child: Text('$number', style: TextStyle(color: fg)),
      ),
    );
  }
}

class _PaletteLegend extends StatelessWidget {
  const _PaletteLegend();

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    Widget item(Color c, String t) => Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 14,
              height: 14,
              decoration: BoxDecoration(
                color: c,
                borderRadius: BorderRadius.circular(3),
              ),
            ),
            const SizedBox(width: 6),
            Text(t, style: Theme.of(context).textTheme.bodySmall),
          ],
        );
    return Wrap(
      spacing: 16,
      runSpacing: 4,
      children: [
        item(scheme.primary, 'Answered'),
        item(scheme.surfaceContainerHighest, 'Not answered'),
        item(scheme.tertiaryContainer, 'Marked for review'),
      ],
    );
  }
}
