import 'package:flutter/material.dart';

import '../data/question_bank.dart';
import '../models/question.dart';
import '../theme.dart';
import '../widgets/ui.dart';
import 'mock_test_setup_screen.dart';

/// A chapter's questions with answers to study, and a chapter test.
class ChapterScreen extends StatefulWidget {
  final Subject subject;
  final String chapter;

  const ChapterScreen({
    super.key,
    required this.subject,
    required this.chapter,
  });

  @override
  State<ChapterScreen> createState() => _ChapterScreenState();
}

class _ChapterScreenState extends State<ChapterScreen> {
  late final _questions = questionsForChapter(
    widget.subject.id,
    widget.chapter,
  );
  late final _descriptive = descriptiveForChapter(
    widget.subject.id,
    widget.chapter,
  );
  final _revealed = <int>{};
  final _revealedDescriptive = <int>{};
  var _showDescriptive = false;

  Set<int> get _open => _showDescriptive ? _revealedDescriptive : _revealed;
  int get _count => _showDescriptive ? _descriptive.length : _questions.length;
  bool get _allRevealed => _count > 0 && _open.length == _count;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final tint = subjectTint(widget.subject);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Chapter'),
        actions: [
          TextButton(
            style: TextButton.styleFrom(foregroundColor: Colors.white),
            onPressed: _count == 0
                ? null
                : () => setState(
                    () => _allRevealed
                        ? _open.clear()
                        : _open.addAll(Iterable.generate(_count)),
                  ),
            child: Text(_allRevealed ? 'Hide answers' : 'Show all'),
          ),
          const SizedBox(width: 8),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.only(bottom: 32),
        children: [
          HeaderPanel(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Paper ${widget.subject.paper} · ${widget.subject.name}',
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: Colors.white.withValues(alpha: 0.8),
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  widget.chapter,
                  style: theme.textTheme.headlineSmall?.copyWith(
                    color: Colors.white,
                    fontSize: 22,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  '${_questions.length} MCQs · '
                  '${_descriptive.length} descriptive questions',
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: Colors.white.withValues(alpha: 0.8),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 20, 16, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                BigActionButton(
                  icon: Icons.timer_rounded,
                  label: 'Start Chapter Test',
                  caption: 'Timed test on this chapter',
                  onPressed: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => MockTestSetupScreen(
                        title: '${widget.subject.name} – ${widget.chapter}',
                        questions: _questions,
                      ),
                    ),
                  ),
                ),
                const SectionHeader('Questions & Answers'),
                Wrap(
                  spacing: 8,
                  children: [
                    for (final (descriptive, label) in [
                      (false, 'MCQs (${_questions.length})'),
                      (true, 'Descriptive (${_descriptive.length})'),
                    ])
                      ChoiceChip(
                        label: Text(label),
                        selected: _showDescriptive == descriptive,
                        onSelected: (_) =>
                            setState(() => _showDescriptive = descriptive),
                      ),
                  ],
                ),
                const SizedBox(height: 16),
                if (!_showDescriptive)
                  for (final (i, q) in _questions.indexed)
                    _QaCard(
                      index: i,
                      question: q,
                      tint: tint,
                      revealed: _revealed.contains(i),
                      onToggle: () => setState(
                        () => _revealed.contains(i)
                            ? _revealed.remove(i)
                            : _revealed.add(i),
                      ),
                    )
                else if (_descriptive.isEmpty)
                  Panel(
                    child: Text(
                      'Descriptive questions for this chapter are coming '
                      'soon.',
                      style: theme.textTheme.bodyMedium?.copyWith(
                        color: AppColors.muted,
                      ),
                    ),
                  )
                else
                  for (final (i, q) in _descriptive.indexed)
                    _DescriptiveCard(
                      index: i,
                      question: q,
                      tint: tint,
                      revealed: _revealedDescriptive.contains(i),
                      onToggle: () => setState(
                        () => _revealedDescriptive.contains(i)
                            ? _revealedDescriptive.remove(i)
                            : _revealedDescriptive.add(i),
                      ),
                    ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _QaCard extends StatelessWidget {
  final int index;
  final Question question;
  final Tint tint;
  final bool revealed;
  final VoidCallback onToggle;

  const _QaCard({
    required this.index,
    required this.question,
    required this.tint,
    required this.revealed,
    required this.onToggle,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Panel(
        padding: const EdgeInsets.fromLTRB(16, 16, 16, 6),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'QUESTION ${index + 1}',
              style: theme.textTheme.labelSmall?.copyWith(
                color: tint.strong,
                fontWeight: FontWeight.w800,
                letterSpacing: 1,
              ),
            ),
            const SizedBox(height: 6),
            Text(
              question.text,
              style: theme.textTheme.bodyLarge?.copyWith(
                fontWeight: FontWeight.w700,
                height: 1.4,
              ),
            ),
            const SizedBox(height: 12),
            for (final (o, option) in question.options.indexed)
              _StudyOption(
                letter: String.fromCharCode(65 + o),
                text: option,
                correct: revealed && o == question.answerIndex,
              ),
            _Answer(
              text: question.explanation,
              revealed: revealed,
              onToggle: onToggle,
            ),
          ],
        ),
      ),
    );
  }
}

class _DescriptiveCard extends StatelessWidget {
  final int index;
  final DescriptiveQuestion question;
  final Tint tint;
  final bool revealed;
  final VoidCallback onToggle;

  const _DescriptiveCard({
    required this.index,
    required this.question,
    required this.tint,
    required this.revealed,
    required this.onToggle,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Panel(
        padding: const EdgeInsets.fromLTRB(16, 16, 16, 6),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    'QUESTION ${index + 1}',
                    style: theme.textTheme.labelSmall?.copyWith(
                      color: tint.strong,
                      fontWeight: FontWeight.w800,
                      letterSpacing: 1,
                    ),
                  ),
                ),
                Tag(
                  text: question.problem ? 'Problem' : 'Theory',
                  background: question.problem
                      ? AppColors.warningSoft
                      : AppColors.accentSoft,
                  foreground: question.problem
                      ? AppColors.warning
                      : AppColors.accent,
                ),
                const SizedBox(width: 6),
                Tag(text: '${question.marks} marks'),
              ],
            ),
            const SizedBox(height: 6),
            Text(
              question.text,
              style: theme.textTheme.bodyLarge?.copyWith(
                fontWeight: FontWeight.w700,
                height: 1.4,
              ),
            ),
            const SizedBox(height: 10),
            _Answer(
              text: question.answer,
              revealed: revealed,
              onToggle: onToggle,
            ),
          ],
        ),
      ),
    );
  }
}

/// A worked answer that slides open, with its Show/Hide button.
class _Answer extends StatelessWidget {
  final String text;
  final bool revealed;
  final VoidCallback onToggle;

  const _Answer({
    required this.text,
    required this.revealed,
    required this.onToggle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AnimatedSize(
          duration: const Duration(milliseconds: 200),
          curve: Curves.easeOut,
          child: revealed
              ? Container(
                  width: double.infinity,
                  margin: const EdgeInsets.only(top: 2),
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: AppColors.background,
                    borderRadius: BorderRadius.circular(12),
                    border: const Border(
                      left: BorderSide(color: AppColors.warning, width: 3),
                    ),
                  ),
                  child: Text(
                    text,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      height: 1.45,
                      color: AppColors.ink.withValues(alpha: 0.8),
                    ),
                  ),
                )
              : const SizedBox(width: double.infinity),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: TextButton(
            onPressed: onToggle,
            style: TextButton.styleFrom(
              foregroundColor: revealed ? AppColors.muted : AppColors.brand,
            ),
            child: Text(revealed ? 'Hide answer' : 'Show answer'),
          ),
        ),
      ],
    );
  }
}

class _StudyOption extends StatelessWidget {
  final String letter;
  final String text;
  final bool correct;

  const _StudyOption({
    required this.letter,
    required this.text,
    required this.correct,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      margin: const EdgeInsets.only(bottom: 8),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      decoration: BoxDecoration(
        color: correct ? AppColors.successSoft : AppColors.surface,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: correct ? AppColors.success : AppColors.border,
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 20,
            child: correct
                ? const Icon(
                    Icons.check_rounded,
                    size: 18,
                    color: AppColors.success,
                  )
                : Text(
                    letter,
                    style: const TextStyle(
                      fontWeight: FontWeight.w800,
                      color: AppColors.faint,
                    ),
                  ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              text,
              style: TextStyle(
                color: correct ? AppColors.success : AppColors.ink,
                fontWeight: correct ? FontWeight.w700 : FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
