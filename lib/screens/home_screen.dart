import 'package:flutter/material.dart';

import '../data/question_bank.dart';
import '../models/profile.dart';
import '../models/question.dart';
import '../state/app_state.dart';
import '../widgets/attempt_tile.dart';
import 'mock_test_setup_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final state = AppScope.of(context);
    final profile = state.profile!;
    final theme = Theme.of(context);
    final mySubjects = subjectsFor(profile);
    final showsGroupHeaders =
        profile.course == intermediate && profile.group == null;
    final includesGroupI = profile.course == intermediate && profile.group != 2;
    final recent = state.attempts.take(3).toList();

    return Scaffold(
      appBar: AppBar(title: const Text('CostMaster')),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(16, 4, 16, 24),
        children: [
          _WelcomeCard(profile: profile),
          const SizedBox(height: 12),
          Row(
            children: [
              _StatTile(label: 'Tests taken', value: '${state.attempts.length}'),
              const SizedBox(width: 8),
              _StatTile(
                  label: 'Average score',
                  value: _percentText(state.averagePercent)),
              const SizedBox(width: 8),
              _StatTile(
                  label: 'Best score', value: _percentText(state.bestPercent)),
            ],
          ),
          const SizedBox(height: 24),
          const _SectionTitle('Quick practice'),
          _SubjectCard(
            leading: const Icon(Icons.shuffle),
            title: 'Mixed test',
            subtitle: '${questionsForSubjects(mySubjects).length} questions '
                'from all your papers',
            onTap: () => _openSetup(
              context,
              title: '${profile.courseLabel} – Mixed',
              questions: questionsForSubjects(mySubjects),
            ),
          ),
          const SizedBox(height: 16),
          const _SectionTitle('Your papers'),
          for (final s in mySubjects) ...[
            if (showsGroupHeaders && (s.paper == 5 || s.paper == 9))
              Padding(
                padding: const EdgeInsets.fromLTRB(4, 8, 0, 8),
                child: Text(s.group == 1 ? 'GROUP I' : 'GROUP II',
                    style: theme.textTheme.labelMedium?.copyWith(
                        letterSpacing: 1.2,
                        color: theme.colorScheme.onSurfaceVariant)),
              ),
            _SubjectCard(
              leading: Text('P${s.paper}',
                  style: const TextStyle(fontWeight: FontWeight.w700)),
              title: s.name,
              subtitle: '${questionsFor(subjectId: s.id).length} questions',
              onTap: () => _openSetup(
                context,
                title: s.name,
                questions: questionsFor(subjectId: s.id),
              ),
            ),
          ],
          if (includesGroupI)
            Padding(
              padding: const EdgeInsets.fromLTRB(4, 4, 4, 0),
              child: Text(
                'Paper 7 (Direct & Indirect Taxation) is not included yet, '
                'because tax rates and rules change every year.',
                style: theme.textTheme.bodySmall,
              ),
            ),
          if (recent.isNotEmpty) ...[
            const SizedBox(height: 24),
            const _SectionTitle('Recent tests'),
            Card(
              margin: EdgeInsets.zero,
              child: Column(
                children: [
                  for (final a in recent) AttemptTile(attempt: a),
                ],
              ),
            ),
          ],
          const SizedBox(height: 24),
          Text(
            'CostMaster is an independent practice app and is not affiliated '
            'with or endorsed by The Institute of Cost Accountants of India '
            '(ICMAI). All questions are original. Refer to ICMAI\'s official '
            'study material and announcements for the current syllabus.',
            style: theme.textTheme.bodySmall
                ?.copyWith(color: theme.colorScheme.onSurfaceVariant),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  static String _percentText(int? percent) =>
      percent == null ? '–' : '$percent%';

  void _openSetup(
    BuildContext context, {
    required String title,
    required List<Question> questions,
  }) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) => MockTestSetupScreen(title: title, questions: questions),
      ),
    );
  }
}

class _WelcomeCard extends StatelessWidget {
  final Profile profile;

  const _WelcomeCard({required this.profile});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final scheme = theme.colorScheme;
    final tags = [
      profile.courseLabel,
      if (profile.groupLabel != null) profile.groupLabel!,
      if (profile.targetTerm != null) 'Target: ${profile.targetTerm}',
    ];
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(
          colors: [scheme.primary, Color.lerp(scheme.primary, Colors.black, 0.3)!],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Welcome back, ${profile.firstName}',
              style: theme.textTheme.titleLarge?.copyWith(
                  color: scheme.onPrimary, fontWeight: FontWeight.w700)),
          const SizedBox(height: 4),
          Text('Keep practising, one test at a time.',
              style: theme.textTheme.bodyMedium
                  ?.copyWith(color: scheme.onPrimary.withValues(alpha: 0.85))),
          const SizedBox(height: 14),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: [
              for (final t in tags)
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: BoxDecoration(
                    color: scheme.onPrimary.withValues(alpha: 0.15),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(t,
                      style: theme.textTheme.labelMedium
                          ?.copyWith(color: scheme.onPrimary)),
                ),
            ],
          ),
        ],
      ),
    );
  }
}

class _StatTile extends StatelessWidget {
  final String label;
  final String value;

  const _StatTile({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Expanded(
      child: Card(
        margin: EdgeInsets.zero,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 8),
          child: Column(
            children: [
              Text(value,
                  style: theme.textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.w700,
                      color: theme.colorScheme.primary)),
              const SizedBox(height: 2),
              Text(label,
                  style: theme.textTheme.bodySmall,
                  textAlign: TextAlign.center),
            ],
          ),
        ),
      ),
    );
  }
}

class _SectionTitle extends StatelessWidget {
  final String text;

  const _SectionTitle(this.text);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Text(text,
          style: Theme.of(context)
              .textTheme
              .titleMedium
              ?.copyWith(fontWeight: FontWeight.w700)),
    );
  }
}

class _SubjectCard extends StatelessWidget {
  final Widget leading;
  final String title;
  final String subtitle;
  final VoidCallback onTap;

  const _SubjectCard({
    required this.leading,
    required this.title,
    required this.subtitle,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return Card(
      margin: const EdgeInsets.only(bottom: 10),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        leading: CircleAvatar(
          backgroundColor: scheme.primaryContainer,
          foregroundColor: scheme.onPrimaryContainer,
          child: leading,
        ),
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.w600)),
        subtitle: Text(subtitle),
        trailing: const Icon(Icons.chevron_right),
        onTap: onTap,
      ),
    );
  }
}
