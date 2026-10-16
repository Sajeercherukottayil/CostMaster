import 'package:flutter/material.dart';

import '../data/question_bank.dart';
import 'mock_test_setup_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(title: const Text('CostMaster')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Text('Mock Tests', style: theme.textTheme.headlineSmall),
          const SizedBox(height: 4),
          Text(
            'Practise MCQs subject-wise or across all subjects.',
            style: theme.textTheme.bodyMedium,
          ),
          const SizedBox(height: 16),
          _SubjectCard(
            title: 'All Subjects (Mixed)',
            subtitle: '${questionBank.length} questions',
            icon: Icons.shuffle,
            onTap: () => _openSetup(context, null, 'All Subjects'),
          ),
          for (final s in subjects)
            _SubjectCard(
              title: s.name,
              subtitle: '${s.level} • ${questionsFor(s.id).length} questions',
              icon: Icons.menu_book_outlined,
              onTap: () => _openSetup(context, s.id, s.name),
            ),
          const SizedBox(height: 16),
          Text(
            'CostMaster is an independent practice app and is not affiliated '
            'with or endorsed by The Institute of Cost Accountants of India '
            '(ICMAI). All questions are original. Refer to ICMAI\'s official '
            'study material and announcements for the current syllabus.',
            style: theme.textTheme.bodySmall,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  void _openSetup(BuildContext context, String? subjectId, String title) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) =>
            MockTestSetupScreen(subjectId: subjectId, title: title),
      ),
    );
  }
}

class _SubjectCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;
  final VoidCallback onTap;

  const _SubjectCard({
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        leading: CircleAvatar(
          backgroundColor: scheme.primaryContainer,
          child: Icon(icon, color: scheme.onPrimaryContainer),
        ),
        title: Text(title),
        subtitle: Text(subtitle),
        trailing: const Icon(Icons.chevron_right),
        onTap: onTap,
      ),
    );
  }
}
