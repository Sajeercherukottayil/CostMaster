import 'package:flutter/material.dart';

import '../models/profile.dart';
import '../models/question.dart';
import '../state/app_state.dart';
import '../theme.dart';
import '../widgets/ui.dart';

/// Edits an existing profile. First-run setup is [OnboardingScreen].
class ProfileFormScreen extends StatefulWidget {
  final Profile initial;

  const ProfileFormScreen({super.key, required this.initial});

  @override
  State<ProfileFormScreen> createState() => _ProfileFormScreenState();
}

class _ProfileFormScreenState extends State<ProfileFormScreen> {
  late final _name = TextEditingController(text: widget.initial.name);
  late String _course = widget.initial.course;
  late int? _group = widget.initial.group;
  late String? _targetTerm = widget.initial.targetTerm;
  late final List<String> _terms = {
    ...upcomingTerms(DateTime.now()),
    if (widget.initial.targetTerm != null) widget.initial.targetTerm!,
  }.toList();

  bool get _canSave => _name.text.trim().isNotEmpty;

  @override
  void dispose() {
    _name.dispose();
    super.dispose();
  }

  Future<void> _save() async {
    await AppScope.read(context).saveProfile(Profile(
      name: _name.text.trim(),
      course: _course,
      group: _group,
      targetTerm: _targetTerm,
    ));
    if (mounted) Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Edit profile')),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(16, 0, 16, 24),
        children: [
          const _Label('Name'),
          TextField(
            controller: _name,
            textCapitalization: TextCapitalization.words,
            decoration: const InputDecoration(
              hintText: 'Your full name',
              prefixIcon: Icon(Icons.person_outline_rounded),
            ),
            onChanged: (_) => setState(() {}),
          ),
          const _Label('Course'),
          _Segments<String>(
            value: _course,
            options: const [
              (foundation, 'Foundation'),
              (intermediate, 'Intermediate'),
            ],
            onChanged: (v) => setState(() => _course = v),
          ),
          const _Label('Group'),
          _Segments<int?>(
            value: _group,
            options: const [(1, 'Group I'), (2, 'Group II'), (null, 'Both')],
            onChanged: (v) => setState(() => _group = v),
          ),
          const _Label('Target exam term'),
          for (final t in [..._terms, null])
            ChoiceTile(
              title: t ?? 'Not decided',
              selected: _targetTerm == t,
              onTap: () => setState(() => _targetTerm = t),
            ),
        ],
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
          child: FilledButton(
            onPressed: _canSave ? _save : null,
            child: const Text('Save changes'),
          ),
        ),
      ),
    );
  }
}

class _Label extends StatelessWidget {
  final String text;

  const _Label(this.text);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(4, 22, 0, 10),
      child: Text(
        text.toUpperCase(),
        style: Theme.of(context).textTheme.labelSmall?.copyWith(
              color: AppColors.muted,
              fontWeight: FontWeight.w800,
              letterSpacing: 1,
            ),
      ),
    );
  }
}

/// A row of equal-width options, one selected.
class _Segments<T> extends StatelessWidget {
  final T value;
  final List<(T, String)> options;
  final ValueChanged<T> onChanged;

  const _Segments({
    required this.value,
    required this.options,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: AppColors.field,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Row(
        children: [
          for (final (v, label) in options)
            Expanded(
              child: GestureDetector(
                onTap: () => onChanged(v),
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 180),
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: v == value ? AppColors.surface : Colors.transparent,
                    borderRadius: BorderRadius.circular(11),
                    boxShadow: v == value
                        ? [
                            BoxShadow(
                              color: Colors.black.withValues(alpha: 0.06),
                              blurRadius: 6,
                              offset: const Offset(0, 2),
                            ),
                          ]
                        : null,
                  ),
                  child: Text(
                    label,
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: v == value ? AppColors.ink : AppColors.muted,
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
