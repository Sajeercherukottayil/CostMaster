import 'package:flutter/material.dart';

import '../data/question_bank.dart';
import '../models/question.dart';
import '../state/app_state.dart';
import '../theme.dart';
import '../widgets/ui.dart';
import 'chapter_screen.dart';
import 'mock_test_setup_screen.dart';

/// A paper's chapters, plus a full-paper test.
class SubjectScreen extends StatelessWidget {
  final Subject subject;

  const SubjectScreen({super.key, required this.subject});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final state = AppScope.of(context);
    final tint = subjectTint(subject);
    final all = questionsFor(subjectId: subject.id);
    final average = state.averagePercentFor(subject.name);
    final byTitle = state.statsByTitle;

    return Scaffold(
      appBar: AppBar(title: Text('Paper ${subject.paper}')),
      body: ListView(
        padding: const EdgeInsets.only(bottom: 32),
        children: [
          HeaderPanel(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      width: 56,
                      height: 56,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        subjectIcon(subject),
                        color: tint.strong,
                        size: 30,
                      ),
                    ),
                    const SizedBox(width: 14),
                    Expanded(
                      child: Text(
                        subject.name,
                        style: theme.textTheme.titleLarge?.copyWith(
                          color: Colors.white,
                          height: 1.2,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 18),
                Row(
                  children: [
                    HeaderStat(
                      value: '${subject.chapters.length}',
                      label: 'Chapters',
                    ),
                    const SizedBox(width: 10),
                    HeaderStat(value: '${all.length}', label: 'Questions'),
                    const SizedBox(width: 10),
                    HeaderStat(
                      value: average == null ? '–' : '$average%',
                      label: 'Your average',
                    ),
                  ],
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
                  icon: Icons.assignment_rounded,
                  label: 'Full Paper Test',
                  caption: 'Questions from every chapter',
                  onPressed: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => MockTestSetupScreen(
                        title: subject.name,
                        questions: all,
                      ),
                    ),
                  ),
                ),
                SectionHeader(
                  'Chapter-wise Practice',
                  trailing: Text(
                    'Tap to study',
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: AppColors.muted,
                    ),
                  ),
                ),
                for (final (i, chapter) in subject.chapters.indexed)
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: _ChapterRow(
                      number: i + 1,
                      chapter: chapter,
                      tint: tint,
                      questions: questionsForChapter(
                        subject.id,
                        chapter,
                      ).length,
                      average: byTitle['${subject.name} – $chapter']?.average,
                      onTap: () => Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (_) =>
                              ChapterScreen(subject: subject, chapter: chapter),
                        ),
                      ),
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

class _ChapterRow extends StatelessWidget {
  final int number;
  final String chapter;
  final Tint tint;
  final int questions;
  final int? average;
  final VoidCallback onTap;

  const _ChapterRow({
    required this.number,
    required this.chapter,
    required this.tint,
    required this.questions,
    required this.average,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Panel(
      onTap: onTap,
      padding: const EdgeInsets.all(14),
      child: Row(
        children: [
          IconBadge(tint: tint, label: '$number', size: 44),
          const SizedBox(width: 14),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  chapter,
                  style: theme.textTheme.bodyLarge?.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  '$questions questions',
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: AppColors.muted,
                  ),
                ),
              ],
            ),
          ),
          if (average != null) ...[
            Tag(
              text: '$average%',
              background: AppColors.softForScore(average!),
              foreground: AppColors.forScore(average!),
            ),
            const SizedBox(width: 4),
          ],
          const Icon(
            Icons.chevron_right_rounded,
            color: AppColors.muted,
            size: 28,
          ),
        ],
      ),
    );
  }
}
