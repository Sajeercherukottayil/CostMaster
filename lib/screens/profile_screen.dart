import 'package:flutter/material.dart';

import '../data/question_bank.dart';
import '../state/app_state.dart';
import '../widgets/attempt_tile.dart';
import 'profile_form_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final state = AppScope.of(context);
    final profile = state.profile!;
    final theme = Theme.of(context);
    final scheme = theme.colorScheme;
    final papers = subjectsFor(profile).map((s) => s.paper).toSet().toList()
      ..sort();

    return Scaffold(
      appBar: AppBar(title: const Text('Profile')),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(16, 4, 16, 24),
        children: [
          Card(
            margin: EdgeInsets.zero,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 36,
                    backgroundColor: scheme.primary,
                    foregroundColor: scheme.onPrimary,
                    child: Text(profile.initials,
                        style: const TextStyle(
                            fontSize: 26, fontWeight: FontWeight.w700)),
                  ),
                  const SizedBox(height: 12),
                  Text(profile.name,
                      style: theme.textTheme.titleLarge
                          ?.copyWith(fontWeight: FontWeight.w700),
                      textAlign: TextAlign.center),
                  const SizedBox(height: 2),
                  Text(
                    [profile.courseLabel, ?profile.groupLabel].join(' • '),
                    style: theme.textTheme.bodyMedium
                        ?.copyWith(color: scheme.onSurfaceVariant),
                  ),
                  const SizedBox(height: 16),
                  OutlinedButton.icon(
                    onPressed: () => Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => ProfileFormScreen(initial: profile),
                      ),
                    ),
                    icon: const Icon(Icons.edit_outlined),
                    label: const Text('Edit profile'),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
          const _SectionTitle('Study details'),
          Card(
            margin: EdgeInsets.zero,
            child: Column(
              children: [
                _InfoTile(
                  icon: Icons.school_outlined,
                  label: 'Course',
                  value: profile.courseLabel,
                ),
                if (profile.groupLabel != null)
                  _InfoTile(
                    icon: Icons.layers_outlined,
                    label: 'Group',
                    value: profile.groupLabel!,
                  ),
                _InfoTile(
                  icon: Icons.menu_book_outlined,
                  label: 'Papers',
                  value: papers.map((p) => 'P$p').join(', '),
                ),
                _InfoTile(
                  icon: Icons.event_outlined,
                  label: 'Target exam term',
                  value: profile.targetTerm ?? 'Not decided',
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              const Expanded(child: _SectionTitle('Test history')),
              if (state.attempts.isNotEmpty)
                TextButton(
                  onPressed: () => _confirm(
                    context,
                    title: 'Clear test history?',
                    message: 'All saved scores will be deleted.',
                    action: 'Clear',
                    onConfirm: state.clearHistory,
                  ),
                  child: const Text('Clear'),
                ),
            ],
          ),
          Card(
            margin: EdgeInsets.zero,
            child: state.attempts.isEmpty
                ? const ListTile(
                    leading: Icon(Icons.history),
                    title: Text('No tests yet'),
                    subtitle: Text('Your scores will appear here.'),
                  )
                : Column(
                    children: [
                      for (final a in state.attempts) AttemptTile(attempt: a),
                    ],
                  ),
          ),
          const SizedBox(height: 20),
          const _SectionTitle('About'),
          Card(
            margin: EdgeInsets.zero,
            child: Column(
              children: [
                const ListTile(
                  leading: Icon(Icons.info_outline),
                  title: Text('CostMaster'),
                  subtitle: Text('Version 1.0.0'),
                ),
                const ListTile(
                  leading: Icon(Icons.gavel_outlined),
                  title: Text('Disclaimer'),
                  subtitle: Text(
                    'Independent practice app. Not affiliated with or '
                    'endorsed by The Institute of Cost Accountants of India '
                    '(ICMAI). All questions are original.',
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.restart_alt, color: scheme.error),
                  title: Text('Reset app',
                      style: TextStyle(color: scheme.error)),
                  subtitle: const Text('Delete profile and test history'),
                  onTap: () => _confirm(
                    context,
                    title: 'Reset CostMaster?',
                    message: 'Your profile and all test history will be '
                        'deleted from this device.',
                    action: 'Reset',
                    onConfirm: state.reset,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _confirm(
    BuildContext context, {
    required String title,
    required String message,
    required String action,
    required Future<void> Function() onConfirm,
  }) async {
    final ok = await showDialog<bool>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text(title),
        content: Text(message),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx, false),
            child: const Text('Cancel'),
          ),
          FilledButton(
            style: FilledButton.styleFrom(
                backgroundColor: Theme.of(ctx).colorScheme.error),
            onPressed: () => Navigator.pop(ctx, true),
            child: Text(action),
          ),
        ],
      ),
    );
    if (ok == true) await onConfirm();
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

class _InfoTile extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;

  const _InfoTile({
    required this.icon,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      title: Text(label, style: Theme.of(context).textTheme.bodySmall),
      subtitle: Text(value,
          style: Theme.of(context)
              .textTheme
              .bodyLarge
              ?.copyWith(fontWeight: FontWeight.w600)),
    );
  }
}
