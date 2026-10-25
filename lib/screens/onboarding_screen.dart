import 'package:flutter/material.dart';

import '../models/profile.dart';
import '../models/question.dart';
import '../state/app_state.dart';
import '../theme.dart';
import '../widgets/ui.dart';

/// First-run setup, one question per step: name, course, group, exam term.
class OnboardingScreen extends StatefulWidget {
  /// Pre-fills the name, e.g. from the account.
  final String? suggestedName;

  const OnboardingScreen({super.key, this.suggestedName});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  static const _steps = 4;

  late final _name = TextEditingController(text: widget.suggestedName);
  final _terms = upcomingTerms(DateTime.now());
  int _step = 0;
  String? _course;
  int? _group;
  String? _targetTerm;

  @override
  void dispose() {
    _name.dispose();
    super.dispose();
  }

  bool get _canContinue => switch (_step) {
    0 => _name.text.trim().isNotEmpty,
    1 => _course != null,
    _ => true,
  };

  Future<void> _next() async {
    FocusScope.of(context).unfocus();
    if (_step < _steps - 1) {
      setState(() => _step++);
      return;
    }
    await AppScope.read(context).saveProfile(
      Profile(
        name: _name.text.trim(),
        course: _course!,
        group: _group,
        targetTerm: _targetTerm,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final (title, subtitle) = switch (_step) {
      0 => ('What should we call you?', 'Your name appears on your profile.'),
      1 => (
        'Which course are you preparing for?',
        'We\'ll show the papers in your syllabus.',
      ),
      2 => (
        'Which group are you writing?',
        'You can change this any time from your profile.',
      ),
      _ => (
        'When is your exam?',
        'We\'ll count down the days for you. This is optional.',
      ),
    };

    return PopScope(
      canPop: _step == 0,
      onPopInvokedWithResult: (didPop, _) {
        if (!didPop) setState(() => _step--);
      },
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 8, 20, 0),
                child: Row(
                  children: [
                    SizedBox(
                      width: 48,
                      child: _step == 0
                          ? null
                          : IconButton(
                              tooltip: 'Back',
                              icon: const Icon(Icons.arrow_back_rounded),
                              onPressed: () => setState(() => _step--),
                            ),
                    ),
                    const SizedBox(width: 8),
                    for (var i = 0; i < _steps; i++) ...[
                      if (i > 0) const SizedBox(width: 6),
                      Expanded(
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 250),
                          height: 5,
                          decoration: BoxDecoration(
                            color: i <= _step
                                ? AppColors.brand
                                : AppColors.border,
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                    ],
                  ],
                ),
              ),
              Expanded(
                child: AnimatedSwitcher(
                  duration: const Duration(milliseconds: 250),
                  transitionBuilder: (child, animation) => FadeTransition(
                    opacity: animation,
                    child: SlideTransition(
                      position: Tween(
                        begin: const Offset(0.06, 0),
                        end: Offset.zero,
                      ).animate(animation),
                      child: child,
                    ),
                  ),
                  child: ListView(
                    key: ValueKey(_step),
                    padding: const EdgeInsets.fromLTRB(20, 28, 20, 20),
                    children: [
                      if (_step == 0) ...[
                        const IconBadge(
                          tint: (
                            soft: AppColors.accentSoft,
                            strong: AppColors.accent,
                          ),
                          icon: Icons.waving_hand_outlined,
                          size: 52,
                        ),
                        const SizedBox(height: 20),
                        Text(
                          'Welcome to CostMaster',
                          style: theme.textTheme.labelLarge?.copyWith(
                            color: AppColors.accent,
                          ),
                        ),
                        const SizedBox(height: 4),
                      ],
                      Text(title, style: theme.textTheme.headlineSmall),
                      const SizedBox(height: 6),
                      Text(
                        subtitle,
                        style: theme.textTheme.bodyMedium?.copyWith(
                          color: AppColors.muted,
                        ),
                      ),
                      const SizedBox(height: 28),
                      ..._stepContent(),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 8, 20, 16),
                child: SizedBox(
                  width: double.infinity,
                  child: FilledButton(
                    onPressed: _canContinue ? _next : null,
                    child: Text(
                      _step == _steps - 1 ? 'Get started' : 'Continue',
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> _stepContent() => switch (_step) {
    0 => [
      TextField(
        controller: _name,
        autofocus: widget.suggestedName == null,
        textCapitalization: TextCapitalization.words,
        textInputAction: TextInputAction.next,
        decoration: const InputDecoration(
          hintText: 'Your full name',
          prefixIcon: Icon(Icons.person_outline_rounded),
        ),
        onChanged: (_) => setState(() {}),
        onSubmitted: (_) {
          if (_canContinue) _next();
        },
      ),
    ],
    1 => [
      ChoiceTile(
        title: 'CMA Foundation',
        subtitle: '4 papers in 2 groups',
        icon: Icons.foundation_rounded,
        tint: (soft: const Color(0xFFD5F5F0), strong: const Color(0xFF0F766E)),
        selected: _course == foundation,
        onTap: () => setState(() => _course = foundation),
      ),
      ChoiceTile(
        title: 'CMA Intermediate',
        subtitle: '8 papers in 2 groups',
        icon: Icons.stairs_outlined,
        tint: (soft: AppColors.accentSoft, strong: AppColors.accent),
        selected: _course == intermediate,
        onTap: () => setState(() => _course = intermediate),
      ),
      const ChoiceTile(
        title: 'CMA Final',
        subtitle: 'Coming soon',
        icon: Icons.workspace_premium_outlined,
        selected: false,
      ),
    ],
    2 => [
      for (final (g, title, papers) in [
        (1, 'Group I', _course == foundation ? '1 – 2' : '5 – 8'),
        (2, 'Group II', _course == foundation ? '3 – 4' : '9 – 12'),
        (null, 'Both groups', _course == foundation ? '1 – 4' : '5 – 12'),
      ])
        ChoiceTile(
          title: title,
          subtitle: 'Papers $papers',
          selected: _group == g,
          onTap: () => setState(() => _group = g),
        ),
    ],
    _ => [
      for (final t in [..._terms, null])
        ChoiceTile(
          title: t ?? 'Not decided yet',
          icon: t == null ? Icons.help_outline_rounded : Icons.event_outlined,
          selected: _targetTerm == t,
          onTap: () => setState(() => _targetTerm = t),
        ),
    ],
  };
}
