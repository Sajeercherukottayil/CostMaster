import 'package:flutter/material.dart';

import '../data/question_bank.dart';
import '../models/profile.dart';
import '../models/question.dart';
import '../services/premium_service.dart';
import '../state/app_state.dart';
import '../theme.dart';
import '../widgets/attempt_tile.dart';
import '../widgets/ui.dart';
import 'mock_test_setup_screen.dart';
import 'premium_screen.dart';
import 'root_screen.dart';
import 'subject_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final state = AppScope.of(context);
    final profile = state.profile!;
    final theme = Theme.of(context);
    final mySubjects = subjectsFor(profile);
    final mixed = questionsForSubjects(mySubjects);
    final recent = state.attempts.take(3).toList();
    final showsGroupHeaders = profile.group == null;
    final includesGroupI = profile.course == intermediate && profile.group != 2;

    return Scaffold(
      appBar: AppBar(
        title: const Row(
          children: [
            Icon(Icons.school_rounded, size: 26),
            SizedBox(width: 10),
            Text('CostMaster'),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: InkWell(
              customBorder: const CircleBorder(),
              onTap: () => RootTabs.maybeOf(context)?.select(RootTabs.profile),
              child: CircleAvatar(
                radius: 18,
                backgroundColor: Colors.white,
                foregroundColor: AppColors.brand,
                child: Text(
                  profile.initials,
                  style: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.only(bottom: 32),
        children: [
          _Header(profile: profile, state: state),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 20, 16, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                BigActionButton(
                  icon: Icons.play_arrow_rounded,
                  label: 'Start Mock Test',
                  caption: 'Mixed questions from all papers',
                  locked: !PremiumScope.of(context).isActive,
                  onPressed: () => openWithPremium(
                    context,
                    (_) => MockTestSetupScreen(
                      title: '${profile.courseLabel} – Mock Test',
                      questions: mixed,
                    ),
                  ),
                ),
                SectionHeader(
                  'Your Papers',
                  trailing: Text(
                    'Tap a paper to practise',
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: AppColors.muted,
                    ),
                  ),
                ),
                for (final (i, s) in mySubjects.indexed) ...[
                  if (showsGroupHeaders &&
                      (i == 0 || mySubjects[i - 1].group != s.group))
                    Padding(
                      padding: EdgeInsets.fromLTRB(4, i == 0 ? 0 : 8, 0, 10),
                      child: Text(
                        s.group == 1 ? 'GROUP I' : 'GROUP II',
                        style: theme.textTheme.labelMedium?.copyWith(
                          color: AppColors.brand,
                          fontWeight: FontWeight.w800,
                          letterSpacing: 1.2,
                        ),
                      ),
                    ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: _PaperRow(
                      subject: s,
                      average: state.averagePercentFor(s.name),
                    ),
                  ),
                ],
                if (includesGroupI)
                  Padding(
                    padding: const EdgeInsets.only(top: 6),
                    child: Panel(
                      color: AppColors.warningSoft,
                      padding: const EdgeInsets.all(14),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Icon(
                            Icons.info_rounded,
                            size: 20,
                            color: AppColors.warning,
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            child: Text(
                              'Paper 7 (Direct & Indirect Taxation) follows '
                              'the Income-tax Act, 1961 as amended by the '
                              'Finance Act, 2025 (AY 2026-27), for the '
                              'December 2026 term. Check ICMAI\'s '
                              'supplementary for later amendments.',
                              style: theme.textTheme.bodySmall,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                if (recent.isNotEmpty) ...[
                  SectionHeader(
                    'Recent Results',
                    trailing: TextButton(
                      onPressed: () =>
                          RootTabs.maybeOf(context)?.select(RootTabs.results),
                      child: const Text('View all'),
                    ),
                  ),
                  Card(
                    child: Column(
                      children: [
                        for (final (i, a) in recent.indexed) ...[
                          if (i > 0) const Divider(indent: 78),
                          AttemptTile(attempt: a),
                        ],
                      ],
                    ),
                  ),
                ],
                const SizedBox(height: 28),
                Text(
                  'CostMaster is an independent practice app and is not '
                  'affiliated with or endorsed by The Institute of Cost '
                  'Accountants of India (ICMAI). All questions are original. '
                  'Refer to ICMAI\'s official study material and '
                  'announcements for the current syllabus.',
                  textAlign: TextAlign.center,
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: AppColors.muted,
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

class _Header extends StatelessWidget {
  final Profile profile;
  final AppState state;

  const _Header({required this.profile, required this.state});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final target = profile.targetDate;
    final days = target?.difference(DateUtils.dateOnly(DateTime.now())).inDays;
    String percent(int? p) => p == null ? '–' : '$p%';

    return HeaderPanel(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Hello, ${profile.firstName}',
            style: theme.textTheme.headlineSmall?.copyWith(color: Colors.white),
          ),
          const SizedBox(height: 2),
          Text(
            '${profile.courseLabel} · ${profile.groupLabel}',
            style: theme.textTheme.bodyMedium?.copyWith(
              color: Colors.white.withValues(alpha: 0.85),
            ),
          ),
          if (days != null && days >= 0) ...[
            const SizedBox(height: 12),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 7),
              decoration: BoxDecoration(
                color: AppColors.cta,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(
                    Icons.event_rounded,
                    size: 16,
                    color: Colors.white,
                  ),
                  const SizedBox(width: 6),
                  Text(
                    '$days days to ${profile.targetTerm} exam',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ],
              ),
            ),
          ],
          const SizedBox(height: 18),
          Row(
            children: [
              HeaderStat(
                value: '${state.attempts.length}',
                label: 'Tests taken',
              ),
              const SizedBox(width: 10),
              HeaderStat(
                value: percent(state.averagePercent),
                label: 'Average',
              ),
              const SizedBox(width: 10),
              HeaderStat(value: percent(state.bestPercent), label: 'Best'),
            ],
          ),
        ],
      ),
    );
  }
}

class _PaperRow extends StatelessWidget {
  final Subject subject;
  final int? average;

  const _PaperRow({required this.subject, required this.average});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final tint = subjectTint(subject);
    return Panel(
      padding: const EdgeInsets.all(14),
      onTap: () => Navigator.of(context).push(
        MaterialPageRoute(builder: (_) => SubjectScreen(subject: subject)),
      ),
      child: Row(
        children: [
          IconBadge(tint: tint, icon: subjectIcon(subject), size: 54),
          const SizedBox(width: 14),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Paper ${subject.paper}',
                  style: theme.textTheme.labelMedium?.copyWith(
                    color: tint.strong,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Text(
                  subject.name,
                  style: theme.textTheme.bodyLarge?.copyWith(
                    fontWeight: FontWeight.w800,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  '${subject.chapters.length} chapters · '
                  '${questionsFor(subjectId: subject.id).length} questions',
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: AppColors.muted,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 8),
          if (average != null)
            Tag(
              text: '$average%',
              background: AppColors.softForScore(average!),
              foreground: AppColors.forScore(average!),
            )
          else
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
