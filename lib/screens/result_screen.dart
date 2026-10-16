import 'package:flutter/material.dart';

import '../models/question.dart';
import '../utils/time_format.dart';

class ResultScreen extends StatelessWidget {
  final String title;
  final List<Question> questions;
  final Map<int, int> answers;
  final Duration timeTaken;
  final List<int> secondsSpent;

  const ResultScreen({
    super.key,
    required this.title,
    required this.questions,
    required this.answers,
    required this.timeTaken,
    required this.secondsSpent,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final scheme = theme.colorScheme;
    final total = questions.length;
    var correct = 0;
    for (var i = 0; i < total; i++) {
      if (answers[i] == questions[i].answerIndex) correct++;
    }
    final wrong = answers.length - correct;
    final skipped = total - answers.length;
    final percent = total == 0 ? 0 : (correct * 100 / total).round();
    final passed = percent >= 50;
    final avgSeconds = total == 0 ? 0 : (timeTaken.inSeconds / total).round();

    return Scaffold(
      appBar: AppBar(title: const Text('Result')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Card(
            color: passed ? scheme.primaryContainer : scheme.errorContainer,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  Text(title, style: theme.textTheme.titleMedium),
                  const SizedBox(height: 8),
                  Text('$correct / $total',
                      style: theme.textTheme.displaySmall
                          ?.copyWith(fontWeight: FontWeight.bold)),
                  Text('$percent%  •  ${passed ? 'Well done!' : 'Keep practising'}'),
                  const SizedBox(height: 4),
                  Text(
                    'Time taken: ${timeTaken.inMinutes}m ${timeTaken.inSeconds % 60}s'
                    '  •  Avg ${formatSeconds(avgSeconds)} per question',
                    style: theme.textTheme.bodySmall,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              _Stat(label: 'Correct', value: correct, color: Colors.green),
              _Stat(label: 'Wrong', value: wrong, color: scheme.error),
              _Stat(label: 'Skipped', value: skipped, color: scheme.outline),
            ],
          ),
          const SizedBox(height: 20),
          Text('Answer Review', style: theme.textTheme.titleMedium),
          const SizedBox(height: 8),
          for (var i = 0; i < total; i++)
            _ReviewCard(
              index: i,
              question: questions[i],
              chosen: answers[i],
              seconds: secondsSpent[i],
            ),
          const SizedBox(height: 8),
          FilledButton.icon(
            onPressed: () => Navigator.of(context).pop(),
            icon: const Icon(Icons.home_outlined),
            label: const Text('Back to Home'),
          ),
        ],
      ),
    );
  }
}

class _Stat extends StatelessWidget {
  final String label;
  final int value;
  final Color color;

  const _Stat({required this.label, required this.value, required this.color});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12),
          child: Column(
            children: [
              Text('$value',
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall
                      ?.copyWith(color: color, fontWeight: FontWeight.bold)),
              Text(label),
            ],
          ),
        ),
      ),
    );
  }
}

class _ReviewCard extends StatelessWidget {
  final int index;
  final Question question;
  final int? chosen;
  final int seconds;

  const _ReviewCard({
    required this.index,
    required this.question,
    required this.chosen,
    required this.seconds,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final scheme = theme.colorScheme;
    final isCorrect = chosen == question.answerIndex;
    final (IconData icon, Color color) = chosen == null
        ? (Icons.remove_circle_outline, scheme.outline)
        : isCorrect
            ? (Icons.check_circle, Colors.green)
            : (Icons.cancel, scheme.error);

    return Card(
      margin: const EdgeInsets.only(bottom: 10),
      child: ExpansionTile(
        leading: Icon(icon, color: color),
        title: Text('Q${index + 1}. ${question.text}',
            maxLines: 2, overflow: TextOverflow.ellipsis),
        subtitle: Text('Time spent: ${formatSeconds(seconds)}',
            style: theme.textTheme.bodySmall),
        childrenPadding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
        expandedCrossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(question.text),
          const SizedBox(height: 8),
          for (var i = 0; i < question.options.length; i++)
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 2),
              child: Text(
                '${String.fromCharCode(65 + i)}. ${question.options[i]}'
                '${i == question.answerIndex ? '  ✓' : ''}'
                '${i == chosen && !isCorrect ? '  (your answer)' : ''}',
                style: TextStyle(
                  color: i == question.answerIndex
                      ? Colors.green
                      : i == chosen
                          ? scheme.error
                          : null,
                  fontWeight:
                      i == question.answerIndex ? FontWeight.w600 : null,
                ),
              ),
            ),
          const SizedBox(height: 8),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: scheme.surfaceContainerHighest,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(question.explanation, style: theme.textTheme.bodySmall),
          ),
        ],
      ),
    );
  }
}
