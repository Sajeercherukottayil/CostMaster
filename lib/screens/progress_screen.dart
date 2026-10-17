import 'package:flutter/material.dart';

import '../data/question_bank.dart';
import '../models/question.dart';
import '../state/app_state.dart';
import '../theme.dart';
import '../widgets/attempt_tile.dart';
import '../widgets/score_chart.dart';
import '../widgets/ui.dart';
import 'chapter_screen.dart';
import 'subject_screen.dart';

/// Scores over time, by paper, weak areas and the full test history.
class ProgressScreen extends StatelessWidget {
  const ProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final state = AppScope.of(context);
    final theme = Theme.of(context);
    final mySubjects = subjectsFor(state.profile!);
    final attempts = state.attempts;
    final average = state.averagePercent;
    final papers = [
      for (final s in mySubjects)
        if (state.averagePercentFor(s.name) case final avg?) (s, avg),
    ];
    final focus = focusAreas(state, mySubjects).take(3).toList();

    return Scaffold(
      appBar: AppBar(title: const Text('My Results')),
      body: ListView(
        padding: const EdgeInsets.only(bottom: 32),
        children: [
          HeaderPanel(
            child: attempts.isEmpty
                ? Text(
                    'Your scores will appear here after your first test.',
                    style: theme.textTheme.bodyLarge?.copyWith(
                      color: Colors.white,
                    ),
                  )
                : Row(
                    children: [
                      ScoreRing(
                        value: (average ?? 0) / 100,
                        color: Colors.white,
                        trackColor: Colors.white.withValues(alpha: 0.2),
                        size: 104,
                        stroke: 10,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              '$average%',
                              style: theme.textTheme.titleLarge?.copyWith(
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              'average',
                              style: theme.textTheme.labelSmall?.copyWith(
                                color: Colors.white.withValues(alpha: 0.8),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: Column(
                          children: [
                            Row(
                              children: [
                                HeaderStat(
                                  value: '${attempts.length}',
                                  label: 'Tests',
                                ),
                                const SizedBox(width: 8),
                                HeaderStat(
                                  value: '${state.bestPercent}%',
                                  label: 'Best',
                                ),
                              ],
                            ),
                            const SizedBox(height: 8),
                            Row(
                              children: [
                                HeaderStat(
                                  value: '${state.questionsAttempted}',
                                  label: 'Questions answered',
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                if (attempts.isEmpty) ...[
                  const SizedBox(height: 20),
                  const EmptyState(
                    icon: Icons.insights_rounded,
                    title: 'No results yet',
                    message: 'Tap Start Mock Test on the Home tab to begin.',
                  ),
                ] else ...[
                  const SectionHeader('Last 10 tests'),
                  Panel(
                    padding: const EdgeInsets.fromLTRB(12, 20, 12, 16),
                    child: ScoreChart(attempts: attempts),
                  ),
                  if (papers.isNotEmpty) ...[
                    const SectionHeader('By paper'),
                    Card(
                      child: Column(
                        children: [
                          for (final (i, (s, avg)) in papers.indexed) ...[
                            if (i > 0) const Divider(indent: 16, endIndent: 16),
                            InkWell(
                              onTap: () => Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (_) => SubjectScreen(subject: s),
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(16),
                                child: Row(
                                  children: [
                                    IconBadge(
                                      tint: subjectTint(s),
                                      icon: subjectIcon(s),
                                      size: 42,
                                    ),
                                    const SizedBox(width: 14),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            s.name,
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                            style: theme.textTheme.bodyMedium
                                                ?.copyWith(
                                                  fontWeight: FontWeight.w700,
                                                ),
                                          ),
                                          const SizedBox(height: 8),
                                          ProgressBar(
                                            value: avg / 100,
                                            color: AppColors.forScore(avg),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(width: 14),
                                    Text(
                                      '$avg%',
                                      style: theme.textTheme.titleSmall
                                          ?.copyWith(
                                            color: AppColors.forScore(avg),
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ],
                      ),
                    ),
                  ],
                  if (focus.isNotEmpty) ...[
                    const SectionHeader('Needs more practice'),
                    for (final area in focus)
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Panel(
                          onTap: () => Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (_) => area.chapter == null
                                  ? SubjectScreen(subject: area.subject)
                                  : ChapterScreen(
                                      subject: area.subject,
                                      chapter: area.chapter!,
                                    ),
                            ),
                          ),
                          child: Row(
                            children: [
                              const Icon(
                                Icons.trending_down_rounded,
                                color: AppColors.danger,
                              ),
                              const SizedBox(width: 12),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      area.chapter ?? area.subject.name,
                                      style: theme.textTheme.bodyMedium
                                          ?.copyWith(
                                            fontWeight: FontWeight.w700,
                                          ),
                                    ),
                                    Text(
                                      'P${area.subject.paper} · ${area.average}% '
                                      'average',
                                      style: theme.textTheme.bodySmall
                                          ?.copyWith(color: AppColors.muted),
                                    ),
                                  ],
                                ),
                              ),
                              const Icon(
                                Icons.chevron_right_rounded,
                                color: AppColors.faint,
                              ),
                            ],
                          ),
                        ),
                      ),
                  ],
                  SectionHeader(
                    'All Tests',
                    trailing: TextButton(
                      onPressed: () => _confirmClear(context, state),
                      child: const Text('Clear'),
                    ),
                  ),
                  Card(
                    child: Column(
                      children: [
                        for (final (i, a) in attempts.indexed) ...[
                          if (i > 0) const Divider(indent: 78),
                          AttemptTile(attempt: a),
                        ],
                      ],
                    ),
                  ),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _confirmClear(BuildContext context, AppState state) async {
    final ok = await showDialog<bool>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text('Clear test history?'),
        content: const Text('All saved scores will be deleted.'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx, false),
            child: const Text('Cancel'),
          ),
          FilledButton(
            style: FilledButton.styleFrom(
              backgroundColor: AppColors.danger,
              minimumSize: const Size(64, 44),
            ),
            onPressed: () => Navigator.pop(ctx, true),
            child: const Text('Clear'),
          ),
        ],
      ),
    );
    if (ok == true) await state.clearHistory();
  }
}

/// A paper or chapter whose tests average below 60%, weakest first.
typedef FocusArea = ({
  Subject subject,
  String? chapter,
  int average,
  int count,
});

List<FocusArea> focusAreas(AppState state, List<Subject> mySubjects) {
  final areas = <FocusArea>[];
  for (final MapEntry(key: title, value: stats) in state.statsByTitle.entries) {
    if (stats.average >= 60) continue;
    for (final s in mySubjects) {
      if (title == s.name) {
        areas.add((
          subject: s,
          chapter: null,
          average: stats.average,
          count: stats.count,
        ));
      } else if (title.startsWith('${s.name} – ')) {
        final chapter = title.substring(s.name.length + 3);
        if (s.chapters.contains(chapter)) {
          areas.add((
            subject: s,
            chapter: chapter,
            average: stats.average,
            count: stats.count,
          ));
        }
      }
    }
  }
  return areas..sort((a, b) => a.average.compareTo(b.average));
}
