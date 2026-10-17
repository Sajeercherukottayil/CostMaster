import 'package:flutter/material.dart';

import '../models/question.dart';
import '../theme.dart';
import '../widgets/ui.dart';
import 'mock_test_screen.dart';

class MockTestSetupScreen extends StatefulWidget {
  final String title;
  final List<Question> questions;

  const MockTestSetupScreen({
    super.key,
    required this.title,
    required this.questions,
  });

  @override
  State<MockTestSetupScreen> createState() => _MockTestSetupScreenState();
}

class _MockTestSetupScreenState extends State<MockTestSetupScreen> {
  late final int _available = widget.questions.length;

  /// Steps of 25 up to the questions available, plus "All". Small sets such
  /// as a single chapter offer 5 and 10 instead.
  late final List<int> _countOptions = {
    if (_available < 25) ...[5, 10],
    for (var n = 25; n <= _available; n += 25) n,
    _available,
  }.where((n) => n <= _available).toList()..sort();
  late int _count = _available < 25 ? _available : 25;
  int _minutesPerQuestion = 1;

  static const _paces = [(1, 'Quick'), (2, 'Steady'), (3, 'Relaxed')];

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final minutes = _count * _minutesPerQuestion;

    return Scaffold(
      appBar: AppBar(title: const Text('Test Settings')),
      body: ListView(
        padding: const EdgeInsets.only(bottom: 24),
        children: [
          HeaderPanel(
            child: Row(
              children: [
                Container(
                  width: 52,
                  height: 52,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.assignment_rounded,
                    color: AppColors.brand,
                    size: 28,
                  ),
                ),
                const SizedBox(width: 14),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.title,
                        style: theme.textTheme.titleMedium?.copyWith(
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        '$_available questions available',
                        style: theme.textTheme.bodyMedium?.copyWith(
                          color: Colors.white.withValues(alpha: 0.8),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SectionHeader('Number of questions'),
                Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: [
                    for (final n in _countOptions)
                      ChoiceChip(
                        label: Text(n == _available ? 'All ($n)' : '$n'),
                        selected: _count == n,
                        onSelected: (_) => setState(() => _count = n),
                      ),
                  ],
                ),
                const SectionHeader('Time per question'),
                Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: [
                    for (final (m, label) in _paces)
                      ChoiceChip(
                        label: Text('$m min · $label'),
                        selected: _minutesPerQuestion == m,
                        onSelected: (_) =>
                            setState(() => _minutesPerQuestion = m),
                      ),
                  ],
                ),
                const SectionHeader('Test summary'),
                Panel(
                  padding: EdgeInsets.zero,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 18),
                        child: Row(
                          children: [
                            Expanded(
                              child: StatBlock(
                                alignment: CrossAxisAlignment.center,
                                value: '$_count Qs',
                                label: 'Questions',
                              ),
                            ),
                            Expanded(
                              child: StatBlock(
                                alignment: CrossAxisAlignment.center,
                                value: '$minutes min',
                                label: 'Time limit',
                              ),
                            ),
                            Expanded(
                              child: StatBlock(
                                alignment: CrossAxisAlignment.center,
                                value: '$_count marks',
                                label: 'Maximum',
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Divider(),
                      const Padding(
                        padding: EdgeInsets.fromLTRB(16, 12, 16, 12),
                        child: Column(
                          children: [
                            _Rule(
                              '1 mark per correct answer, no negative marking.',
                            ),
                            _Rule('Move between questions and change answers.'),
                            _Rule('Bookmark tricky questions to come back to.'),
                            _Rule(
                              'The test submits itself when time runs out.',
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
          child: FilledButton.icon(
            style: FilledButton.styleFrom(
              backgroundColor: AppColors.cta,
              minimumSize: const Size(64, 58),
              textStyle: const TextStyle(
                fontFamily: fontFamily,
                fontSize: 17,
                fontWeight: FontWeight.w800,
              ),
            ),
            onPressed: _start,
            icon: const Icon(Icons.play_arrow_rounded),
            label: const Text('Start Test'),
          ),
        ),
      ),
    );
  }

  void _start() {
    final questions = [...widget.questions]..shuffle();
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (_) => MockTestScreen(
          title: widget.title,
          questions: questions.take(_count).toList(),
          duration: Duration(minutes: _count * _minutesPerQuestion),
        ),
      ),
    );
  }
}

class _Rule extends StatelessWidget {
  final String text;

  const _Rule(this.text);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 2),
            child: Icon(
              Icons.check_rounded,
              size: 16,
              color: AppColors.success,
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Text(text, style: Theme.of(context).textTheme.bodyMedium),
          ),
        ],
      ),
    );
  }
}
