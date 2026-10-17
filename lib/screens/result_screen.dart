import 'package:flutter/material.dart';

import '../models/question.dart';
import '../theme.dart';
import '../utils/time_format.dart';
import '../widgets/ui.dart';
import 'mock_test_screen.dart';

enum _Filter { all, correct, wrong, skipped }

class ResultScreen extends StatefulWidget {
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
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  _Filter _filter = _Filter.all;

  bool _matches(int i) {
    final chosen = widget.answers[i];
    return switch (_filter) {
      _Filter.all => true,
      _Filter.correct => chosen == widget.questions[i].answerIndex,
      _Filter.wrong =>
        chosen != null && chosen != widget.questions[i].answerIndex,
      _Filter.skipped => chosen == null,
    };
  }

  void _retake() {
    final questions = [...widget.questions]..shuffle();
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (_) => MockTestScreen(
          title: widget.title,
          questions: questions,
          duration: Duration(minutes: questions.length),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final questions = widget.questions;
    final total = questions.length;
    var correct = 0;
    for (var i = 0; i < total; i++) {
      if (widget.answers[i] == questions[i].answerIndex) correct++;
    }
    final wrong = widget.answers.length - correct;
    final skipped = total - widget.answers.length;
    final percent = total == 0 ? 0 : (correct * 100 / total).round();
    final passed = percent >= 50;
    final avgSeconds = total == 0
        ? 0
        : (widget.timeTaken.inSeconds / total).round();
    final shown = [
      for (var i = 0; i < total; i++)
        if (_matches(i)) i,
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Result')),
      body: ListView(
        padding: const EdgeInsets.only(bottom: 24),
        children: [
          HeaderPanel(
            padding: const EdgeInsets.fromLTRB(20, 8, 20, 24),
            child: Column(
              children: [
                ScoreRing(
                  value: percent / 100,
                  color: passed ? AppColors.successBright : AppColors.cta,
                  trackColor: Colors.white.withValues(alpha: 0.2),
                  size: 136,
                  stroke: 12,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        '$percent%',
                        style: theme.textTheme.headlineMedium?.copyWith(
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        '$correct / $total',
                        style: theme.textTheme.bodyMedium?.copyWith(
                          color: Colors.white.withValues(alpha: 0.85),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 14),
                Text(
                  passed ? 'Well done!' : 'Keep practising',
                  style: theme.textTheme.headlineSmall?.copyWith(
                    color: Colors.white,
                  ),
                ),
                Text(
                  widget.title,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: Colors.white.withValues(alpha: 0.8),
                  ),
                ),
                const SizedBox(height: 18),
                Row(
                  children: [
                    HeaderStat(value: '$correct', label: 'Correct'),
                    const SizedBox(width: 8),
                    HeaderStat(value: '$wrong', label: 'Wrong'),
                    const SizedBox(width: 8),
                    HeaderStat(value: '$skipped', label: 'Skipped'),
                    const SizedBox(width: 8),
                    HeaderStat(
                      value: formatSeconds(avgSeconds),
                      label: 'Per Q',
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: OutlinedButton.icon(
                        onPressed: _retake,
                        icon: const Icon(Icons.replay_rounded, size: 20),
                        label: const Text('Retake Test'),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: FilledButton.icon(
                        onPressed: () => Navigator.of(context).pop(),
                        icon: const Icon(Icons.home_rounded, size: 20),
                        label: const Text('Back to Home'),
                      ),
                    ),
                  ],
                ),
                const SectionHeader('Answer Review'),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      for (final (f, label) in [
                        (_Filter.all, 'All $total'),
                        (_Filter.correct, 'Correct $correct'),
                        (_Filter.wrong, 'Wrong $wrong'),
                        (_Filter.skipped, 'Skipped $skipped'),
                      ])
                        Padding(
                          padding: const EdgeInsets.only(right: 8),
                          child: ChoiceChip(
                            label: Text(label),
                            selected: _filter == f,
                            onSelected: (_) => setState(() => _filter = f),
                          ),
                        ),
                    ],
                  ),
                ),
                const SizedBox(height: 12),
                if (shown.isEmpty)
                  const EmptyState(
                    icon: Icons.filter_alt_off_outlined,
                    title: 'No questions here',
                    message: 'Try another filter.',
                  ),
                for (final i in shown)
                  _ReviewCard(
                    index: i,
                    question: questions[i],
                    chosen: widget.answers[i],
                    seconds: widget.secondsSpent[i],
                  ),
              ],
            ),
          ),
        ],
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
    final isCorrect = chosen == question.answerIndex;
    final (IconData icon, Tint tint) = chosen == null
        ? (
            Icons.remove_rounded,
            (soft: AppColors.field, strong: AppColors.muted),
          )
        : isCorrect
        ? (
            Icons.check_rounded,
            (soft: AppColors.successSoft, strong: AppColors.success),
          )
        : (
            Icons.close_rounded,
            (soft: AppColors.dangerSoft, strong: AppColors.danger),
          );

    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Card(
        child: Theme(
          data: theme.copyWith(dividerColor: Colors.transparent),
          child: ExpansionTile(
            tilePadding: const EdgeInsets.symmetric(horizontal: 14),
            leading: IconBadge(tint: tint, icon: icon, size: 36),
            title: Text(
              'Q${index + 1}. ${question.text}',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.w700,
              ),
            ),
            subtitle: Text(
              'Time spent: ${formatSeconds(seconds)}',
              style: theme.textTheme.bodySmall?.copyWith(
                color: AppColors.muted,
              ),
            ),
            childrenPadding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
            expandedCrossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(question.text, style: theme.textTheme.bodyMedium),
              const SizedBox(height: 10),
              for (var i = 0; i < question.options.length; i++)
                _ReviewOption(
                  letter: String.fromCharCode(65 + i),
                  text: question.options[i],
                  isAnswer: i == question.answerIndex,
                  isWrongPick: i == chosen && !isCorrect,
                ),
              const SizedBox(height: 4),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: AppColors.background,
                  borderRadius: BorderRadius.circular(12),
                  border: const Border(
                    left: BorderSide(color: AppColors.warning, width: 3),
                  ),
                ),
                child: Text(
                  question.explanation,
                  style: theme.textTheme.bodySmall?.copyWith(height: 1.45),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _ReviewOption extends StatelessWidget {
  final String letter;
  final String text;
  final bool isAnswer;
  final bool isWrongPick;

  const _ReviewOption({
    required this.letter,
    required this.text,
    required this.isAnswer,
    required this.isWrongPick,
  });

  @override
  Widget build(BuildContext context) {
    final color = isAnswer
        ? AppColors.success
        : isWrongPick
        ? AppColors.danger
        : null;
    return Container(
      margin: const EdgeInsets.only(bottom: 6),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      decoration: BoxDecoration(
        color: isAnswer
            ? AppColors.successSoft
            : isWrongPick
            ? AppColors.dangerSoft
            : AppColors.background,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Text(
            '$letter.',
            style: TextStyle(
              fontWeight: FontWeight.w800,
              color: color ?? AppColors.faint,
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              text,
              style: TextStyle(
                color: color ?? AppColors.ink,
                fontWeight: color != null ? FontWeight.w700 : null,
              ),
            ),
          ),
          if (isAnswer)
            const Icon(Icons.check_rounded, size: 18, color: AppColors.success),
          if (isWrongPick)
            Text(
              'Your answer',
              style: Theme.of(context).textTheme.labelSmall
                  ?.copyWith(color: AppColors.danger),
            ),
        ],
      ),
    );
  }
}
