import 'package:flutter/material.dart';

import '../data/question_bank.dart';
import '../services/auth_service.dart';
import '../services/premium_service.dart';
import '../state/app_state.dart';
import '../theme.dart';
import '../utils/time_format.dart';
import '../widgets/policy_links.dart';
import '../widgets/ui.dart';
import 'premium_screen.dart';
import 'profile_form_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final state = AppScope.of(context);
    final auth = AuthScope.of(context);
    final profile = state.profile!;
    final theme = Theme.of(context);
    final premium = PremiumScope.of(context);
    final premiumValue = !premium.isActive
        ? 'Unlock all mock tests'
        : premium.status.expiresAt == null
        ? 'Active · lifetime access to all mock tests'
        : 'Active until ${formatDate(premium.status.expiresAt!)} · tap to '
              'upgrade to lifetime';
    final papers = subjectsFor(profile).map((s) => s.paper).toSet().toList()
      ..sort();
    void edit() => Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => ProfileFormScreen(initial: profile)),
    );

    return Scaffold(
      appBar: AppBar(title: const Text('Profile')),
      body: ListView(
        padding: const EdgeInsets.only(bottom: 32),
        children: [
          HeaderPanel(
            child: Column(
              children: [
                CircleAvatar(
                  radius: 38,
                  backgroundColor: Colors.white,
                  foregroundColor: AppColors.brand,
                  child: Text(
                    profile.initials,
                    style: const TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
                const SizedBox(height: 12),
                Text(
                  profile.name,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.titleLarge?.copyWith(
                    color: Colors.white,
                  ),
                ),
                if (auth.currentUser != null)
                  Text(
                    auth.currentUser!.email,
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: Colors.white.withValues(alpha: 0.8),
                    ),
                  ),
                const SizedBox(height: 16),
                OutlinedButton.icon(
                  style: OutlinedButton.styleFrom(
                    foregroundColor: Colors.white,
                    side: const BorderSide(color: Colors.white, width: 1.5),
                    minimumSize: const Size(0, 44),
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                  ),
                  onPressed: edit,
                  icon: const Icon(Icons.edit_rounded, size: 18),
                  label: const Text('Edit Profile'),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SectionHeader('Study details'),
                Card(
                  child: Column(
                    children: [
                      _Row(
                        icon: Icons.school_rounded,
                        label: 'Course',
                        value: profile.courseLabel,
                      ),
                      const Divider(indent: 68),
                      _Row(
                        icon: Icons.layers_rounded,
                        label: 'Group',
                        value: profile.groupLabel,
                      ),
                      const Divider(indent: 68),
                      _Row(
                        icon: Icons.menu_book_rounded,
                        label: 'Papers',
                        value: papers.map((p) => 'P$p').join(', '),
                      ),
                      const Divider(indent: 68),
                      _Row(
                        icon: Icons.flag_rounded,
                        label: 'Target term',
                        value: profile.targetTerm ?? 'Not decided',
                      ),
                    ],
                  ),
                ),
                const SectionHeader('Account'),
                Card(
                  child: Column(
                    children: [
                      _Row(
                        icon: Icons.workspace_premium_rounded,
                        label: 'Premium',
                        value: premiumValue,
                        stacked: true,
                        onTap: premium.isActive && premium.status.isLifetime
                            ? null
                            : () => Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (_) => const PremiumScreen(),
                                ),
                              ),
                      ),
                      const Divider(indent: 68),
                      _Row(
                        icon: Icons.logout_rounded,
                        label: 'Log out',
                        value: 'Your scores stay on this device',
                        stacked: true,
                        onTap: () => _confirm(
                          context,
                          title: 'Log out?',
                          message:
                              'You can log in again with your email and '
                              'password.',
                          action: 'Log out',
                          onConfirm: auth.signOut,
                        ),
                      ),
                      const Divider(indent: 68),
                      _Row(
                        icon: Icons.restart_alt_rounded,
                        label: 'Reset app',
                        value: 'Delete profile and test history',
                        stacked: true,
                        danger: true,
                        onTap: () => _confirm(
                          context,
                          title: 'Reset CostMaster?',
                          message:
                              'Your profile and all test history will be '
                              'deleted from this device.',
                          action: 'Reset',
                          onConfirm: state.reset,
                        ),
                      ),
                      const Divider(indent: 68),
                      _Row(
                        icon: Icons.person_remove_rounded,
                        label: 'Delete account',
                        value: 'Permanently delete your account and Premium',
                        stacked: true,
                        danger: true,
                        onTap: () => showDialog<void>(
                          context: context,
                          builder: (_) => _DeleteAccountDialog(
                            auth: auth,
                            premium: premium.service,
                            state: state,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SectionHeader('About'),
                Panel(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text('CostMaster', style: theme.textTheme.titleSmall),
                          const SizedBox(width: 8),
                          const Tag(text: 'v1.0.0'),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Independent practice app. Not affiliated with or '
                        'endorsed by The Institute of Cost Accountants of India '
                        '(ICMAI). All questions are original.',
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: AppColors.muted,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 8),
                const PolicyLinks(),
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
              backgroundColor: AppColors.danger,
              minimumSize: const Size(64, 44),
            ),
            onPressed: () => Navigator.pop(ctx, true),
            child: Text(action),
          ),
        ],
      ),
    );
    if (ok == true) await onConfirm();
  }
}

/// Asks for the password, then deletes the account, its Premium and the
/// data saved on this device. Signing out returns the app to login.
class _DeleteAccountDialog extends StatefulWidget {
  final AuthService auth;
  final PremiumService premium;
  final AppState state;

  const _DeleteAccountDialog({
    required this.auth,
    required this.premium,
    required this.state,
  });

  @override
  State<_DeleteAccountDialog> createState() => _DeleteAccountDialogState();
}

class _DeleteAccountDialogState extends State<_DeleteAccountDialog> {
  final _password = TextEditingController();
  bool _busy = false;
  String? _error;

  @override
  void dispose() {
    _password.dispose();
    super.dispose();
  }

  Future<void> _delete() async {
    if (_password.text.isEmpty) {
      setState(() => _error = 'Please enter your password.');
      return;
    }
    setState(() {
      _busy = true;
      _error = null;
    });
    final navigator = Navigator.of(context);
    try {
      await widget.auth.deleteAccount(
        password: _password.text,
        deleteData: widget.premium.deleteAccountData,
      );
    } on Exception catch (e) {
      // AuthException and PremiumException carry a message for the student.
      if (mounted) {
        setState(() {
          _busy = false;
          _error = e is AuthException || e is PremiumException
              ? e.toString()
              : 'Something went wrong. Please try again.';
        });
      }
      return;
    }
    navigator.pop();
    await widget.state.reset();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Delete your account?'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'This permanently deletes your login, your Premium and your test '
            'history. Premium is not refunded. This cannot be undone.',
          ),
          const SizedBox(height: 16),
          TextField(
            controller: _password,
            obscureText: true,
            enabled: !_busy,
            autofocus: true,
            decoration: InputDecoration(
              labelText: 'Password',
              errorText: _error,
              errorMaxLines: 3,
            ),
            onSubmitted: (_) => _delete(),
          ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: _busy ? null : () => Navigator.pop(context),
          child: const Text('Cancel'),
        ),
        FilledButton(
          style: FilledButton.styleFrom(
            backgroundColor: AppColors.danger,
            minimumSize: const Size(64, 44),
          ),
          onPressed: _busy ? null : _delete,
          child: _busy
              ? const SizedBox.square(
                  dimension: 18,
                  child: CircularProgressIndicator(
                    strokeWidth: 2,
                    color: Colors.white,
                  ),
                )
              : const Text('Delete'),
        ),
      ],
    );
  }
}

class _Row extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;

  /// Shows [value] under [label] rather than on the right.
  final bool stacked;
  final bool danger;
  final VoidCallback? onTap;

  const _Row({
    required this.icon,
    required this.label,
    required this.value,
    this.stacked = false,
    this.danger = false,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final color = danger ? AppColors.danger : AppColors.ink;
    final labelStyle = theme.textTheme.bodyMedium?.copyWith(
      fontWeight: FontWeight.w700,
      color: color,
    );
    final valueStyle = theme.textTheme.bodySmall?.copyWith(
      color: AppColors.muted,
    );
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        child: Row(
          children: [
            IconBadge(
              tint: (
                soft: AppColors.accentSoft,
                strong: danger ? AppColors.danger : AppColors.brand,
              ),
              icon: icon,
              size: 38,
            ),
            const SizedBox(width: 14),
            if (stacked)
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(label, style: labelStyle),
                    Text(value, style: valueStyle),
                  ],
                ),
              )
            else ...[
              Text(label, style: valueStyle?.copyWith(fontSize: 14)),
              const SizedBox(width: 12),
              Expanded(
                child: Text(
                  value,
                  textAlign: TextAlign.right,
                  style: labelStyle,
                ),
              ),
            ],
            if (onTap != null) ...[
              const SizedBox(width: 8),
              const Icon(Icons.chevron_right_rounded, color: AppColors.faint),
            ],
          ],
        ),
      ),
    );
  }
}
