import 'package:flutter/material.dart';

import '../models/profile.dart';
import '../models/question.dart';
import '../state/app_state.dart';

/// Creates the profile on first launch, or edits it when [initial] is given.
class ProfileFormScreen extends StatefulWidget {
  final Profile? initial;

  const ProfileFormScreen({super.key, this.initial});

  @override
  State<ProfileFormScreen> createState() => _ProfileFormScreenState();
}

class _ProfileFormScreenState extends State<ProfileFormScreen> {
  late final _name = TextEditingController(text: widget.initial?.name);
  late String? _course = widget.initial?.course;
  late int? _group = widget.initial?.group;
  late String? _targetTerm = widget.initial?.targetTerm;
  late final List<String> _terms = {
    ...upcomingTerms(DateTime.now()),
    if (widget.initial?.targetTerm != null) widget.initial!.targetTerm!,
  }.toList();

  bool get _editing => widget.initial != null;
  bool get _canSave => _name.text.trim().isNotEmpty && _course != null;

  @override
  void dispose() {
    _name.dispose();
    super.dispose();
  }

  Future<void> _save() async {
    final profile = Profile(
      name: _name.text.trim(),
      course: _course!,
      group: _course == intermediate ? _group : null,
      targetTerm: _targetTerm,
    );
    await AppScope.read(context).saveProfile(profile);
    if (_editing && mounted) Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final scheme = theme.colorScheme;

    return Scaffold(
      appBar: _editing ? AppBar(title: const Text('Edit profile')) : null,
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.fromLTRB(20, 24, 20, 32),
          children: [
            if (!_editing) ...[
              CircleAvatar(
                radius: 28,
                backgroundColor: scheme.primary,
                child: Icon(Icons.school, color: scheme.onPrimary, size: 30),
              ),
              const SizedBox(height: 16),
              Text('Welcome to CostMaster',
                  style: theme.textTheme.headlineSmall
                      ?.copyWith(fontWeight: FontWeight.w700)),
              const SizedBox(height: 6),
              Text(
                'Set up your profile to get practice tests for your CMA '
                'course.',
                style: theme.textTheme.bodyMedium
                    ?.copyWith(color: scheme.onSurfaceVariant),
              ),
              const SizedBox(height: 28),
            ],
            const _SectionLabel('Your name'),
            TextField(
              controller: _name,
              textCapitalization: TextCapitalization.words,
              decoration: const InputDecoration(
                hintText: 'Enter your full name',
                prefixIcon: Icon(Icons.person_outline),
              ),
              onChanged: (_) => setState(() {}),
            ),
            const SizedBox(height: 24),
            const _SectionLabel('Select course'),
            _ChoiceCard(
              title: 'CMA Foundation',
              subtitle: '4 papers',
              icon: Icons.foundation,
              selected: _course == foundation,
              onTap: () => setState(() => _course = foundation),
            ),
            _ChoiceCard(
              title: 'CMA Intermediate',
              subtitle: '8 papers in 2 groups',
              icon: Icons.stairs_outlined,
              selected: _course == intermediate,
              onTap: () => setState(() => _course = intermediate),
            ),
            const _ChoiceCard(
              title: 'CMA Final',
              subtitle: 'Coming soon',
              icon: Icons.workspace_premium_outlined,
              selected: false,
            ),
            if (_course == intermediate) ...[
              const SizedBox(height: 24),
              const _SectionLabel('Select group'),
              _ChoiceCard(
                title: 'Group I',
                subtitle: 'Papers 5 – 8',
                icon: Icons.looks_one_outlined,
                selected: _group == 1,
                onTap: () => setState(() => _group = 1),
              ),
              _ChoiceCard(
                title: 'Group II',
                subtitle: 'Papers 9 – 12',
                icon: Icons.looks_two_outlined,
                selected: _group == 2,
                onTap: () => setState(() => _group = 2),
              ),
              _ChoiceCard(
                title: 'Both groups',
                subtitle: 'Papers 5 – 12',
                icon: Icons.layers_outlined,
                selected: _group == null,
                onTap: () => setState(() => _group = null),
              ),
            ],
            const SizedBox(height: 24),
            const _SectionLabel('Target exam term (optional)'),
            DropdownButtonFormField<String?>(
              initialValue: _targetTerm,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.event_outlined),
              ),
              items: [
                const DropdownMenuItem(value: null, child: Text('Not decided')),
                for (final t in _terms)
                  DropdownMenuItem(value: t, child: Text(t)),
              ],
              onChanged: (v) => setState(() => _targetTerm = v),
            ),
            const SizedBox(height: 32),
            FilledButton(
              onPressed: _canSave ? _save : null,
              child: Text(_editing ? 'Save changes' : 'Get started'),
            ),
          ],
        ),
      ),
    );
  }
}

class _SectionLabel extends StatelessWidget {
  final String text;

  const _SectionLabel(this.text);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Text(text,
          style: Theme.of(context)
              .textTheme
              .titleSmall
              ?.copyWith(fontWeight: FontWeight.w600)),
    );
  }
}

/// A selectable option card. Disabled when [onTap] is null.
class _ChoiceCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;
  final bool selected;
  final VoidCallback? onTap;

  const _ChoiceCard({
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.selected,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final enabled = onTap != null;
    return Card(
      margin: const EdgeInsets.only(bottom: 10),
      color: selected ? scheme.primaryContainer : null,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14),
        side: BorderSide(
          color: selected ? scheme.primary : scheme.outlineVariant,
          width: selected ? 2 : 1,
        ),
      ),
      child: ListTile(
        enabled: enabled,
        onTap: onTap,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
        leading: Icon(icon, color: selected ? scheme.primary : null),
        title: Text(title,
            style: const TextStyle(fontWeight: FontWeight.w600)),
        subtitle: Text(subtitle),
        trailing: selected
            ? Icon(Icons.check_circle, color: scheme.primary)
            : const Icon(Icons.radio_button_unchecked),
      ),
    );
  }
}
