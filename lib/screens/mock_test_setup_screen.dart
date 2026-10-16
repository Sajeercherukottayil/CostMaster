import 'package:flutter/material.dart';

import '../data/question_bank.dart';
import 'mock_test_screen.dart';

class MockTestSetupScreen extends StatefulWidget {
  final String? subjectId;
  final String title;

  const MockTestSetupScreen({super.key, this.subjectId, required this.title});

  @override
  State<MockTestSetupScreen> createState() => _MockTestSetupScreenState();
}

class _MockTestSetupScreenState extends State<MockTestSetupScreen> {
  late final int _available = questionsFor(widget.subjectId).length;
  late int _count = _available < 10 ? _available : 10;
  int _minutesPerQuestion = 1;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final countOptions = {5, 10, 20, _available}
        .where((n) => n <= _available)
        .toList()
      ..sort();

    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Text('Number of questions', style: theme.textTheme.titleMedium),
          const SizedBox(height: 8),
          Wrap(
            spacing: 8,
            children: [
              for (final n in countOptions)
                ChoiceChip(
                  label: Text('$n'),
                  selected: _count == n,
                  onSelected: (_) => setState(() => _count = n),
                ),
            ],
          ),
          const SizedBox(height: 24),
          Text('Time per question', style: theme.textTheme.titleMedium),
          const SizedBox(height: 8),
          Wrap(
            spacing: 8,
            children: [
              for (final m in [1, 2, 3])
                ChoiceChip(
                  label: Text('$m min'),
                  selected: _minutesPerQuestion == m,
                  onSelected: (_) => setState(() => _minutesPerQuestion = m),
                ),
            ],
          ),
          const SizedBox(height: 24),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Instructions', style: theme.textTheme.titleMedium),
                  const SizedBox(height: 8),
                  Text('• $_count questions, '
                      '${_count * _minutesPerQuestion} minutes total.'),
                  const Text('• 1 mark per correct answer, no negative marking.'),
                  const Text('• You can move between questions and change answers.'),
                  const Text('• The test submits automatically when time runs out.'),
                ],
              ),
            ),
          ),
          const SizedBox(height: 24),
          FilledButton.icon(
            onPressed: _start,
            icon: const Icon(Icons.play_arrow),
            label: const Text('Start Test'),
          ),
        ],
      ),
    );
  }

  void _start() {
    final questions = [...questionsFor(widget.subjectId)]..shuffle();
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
