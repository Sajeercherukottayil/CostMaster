import 'package:flutter/material.dart';

import '../services/auth_service.dart';
import '../theme.dart';

/// Log in or create an account with email and password.
class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  final _form = GlobalKey<FormState>();
  final _name = TextEditingController();
  final _email = TextEditingController();
  final _password = TextEditingController();
  final _confirm = TextEditingController();

  bool _signUp = false;
  bool _busy = false;
  bool _showPassword = false;
  String? _error;
  String? _notice;

  @override
  void dispose() {
    _name.dispose();
    _email.dispose();
    _password.dispose();
    _confirm.dispose();
    super.dispose();
  }

  static final _emailPattern = RegExp(r'^[^@\s]+@[^@\s]+\.[^@\s]+$');

  Future<void> _submit() async {
    if (_busy || !_form.currentState!.validate()) return;
    setState(() {
      _busy = true;
      _error = null;
      _notice = null;
    });
    final auth = AuthScope.of(context);
    try {
      if (_signUp) {
        await auth.signUp(
          name: _name.text,
          email: _email.text,
          password: _password.text,
        );
        if (!mounted) return;
        // Back to the login form with the email kept, so they log in next.
        setState(() {
          _signUp = false;
          _password.clear();
          _confirm.clear();
          _notice =
              'Account created. Please log in with your email and '
              'password.';
        });
      } else {
        await auth.signIn(email: _email.text, password: _password.text);
      }
      // The app moves on by itself when the signed-in user changes.
    } on AuthException catch (e) {
      if (mounted) setState(() => _error = e.message);
    } finally {
      if (mounted) setState(() => _busy = false);
    }
  }

  Future<void> _forgotPassword() async {
    final email = TextEditingController(text: _email.text);
    final auth = AuthScope.of(context);
    final messenger = ScaffoldMessenger.of(context);
    final send = await showDialog<bool>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text('Reset password'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('We\'ll email you a link to set a new password.'),
            const SizedBox(height: 16),
            TextField(
              controller: email,
              autofocus: true,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                hintText: 'Email address',
                prefixIcon: Icon(Icons.email_outlined),
              ),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx, false),
            child: const Text('Cancel'),
          ),
          FilledButton(
            onPressed: () => Navigator.pop(ctx, true),
            child: const Text('Send link'),
          ),
        ],
      ),
    );
    final address = email.text.trim();
    email.dispose();
    if (send != true) return;
    if (!_emailPattern.hasMatch(address)) {
      messenger.showSnackBar(
        const SnackBar(content: Text('Please enter a valid email address.')),
      );
      return;
    }
    try {
      await auth.sendPasswordReset(address);
      messenger.showSnackBar(
        SnackBar(
          content: Text(
            'If an account exists for $address, a reset link '
            'has been sent.',
          ),
        ),
      );
    } on AuthException catch (e) {
      messenger.showSnackBar(SnackBar(content: Text(e.message)));
    }
  }

  void _toggleMode() => setState(() {
    _signUp = !_signUp;
    _error = null;
    _notice = null;
    _form.currentState?.reset();
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      backgroundColor: AppColors.surface,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const _AuthHeader(),
            Center(
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 460),
                child: AutofillGroup(
                  child: Form(
                    key: _form,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(24, 28, 24, 24),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            _signUp ? 'Create your account' : 'Welcome back',
                            style: theme.textTheme.headlineSmall,
                          ),
                          const SizedBox(height: 8),
                          Text(
                            _signUp
                                ? 'Sign up with your email to save your progress.'
                                : 'Log in to continue practising CMA papers.',
                            style: theme.textTheme.bodyLarge?.copyWith(
                              color: AppColors.muted,
                            ),
                          ),
                          const SizedBox(height: 32),
                          if (_signUp) ...[
                            const _FieldLabel('Full name'),
                            TextFormField(
                              controller: _name,
                              textCapitalization: TextCapitalization.words,
                              autofillHints: const [AutofillHints.name],
                              textInputAction: TextInputAction.next,
                              decoration: const InputDecoration(
                                hintText: 'Your name',
                              ),
                              validator: (v) => (v ?? '').trim().isEmpty
                                  ? 'Please enter your name'
                                  : null,
                            ),
                            const SizedBox(height: 16),
                          ],
                          const _FieldLabel('Email'),
                          TextFormField(
                            controller: _email,
                            keyboardType: TextInputType.emailAddress,
                            autofillHints: const [AutofillHints.email],
                            textInputAction: TextInputAction.next,
                            decoration: const InputDecoration(
                              hintText: 'you@example.com',
                            ),
                            validator: (v) =>
                                _emailPattern.hasMatch((v ?? '').trim())
                                ? null
                                : 'Please enter a valid email address',
                          ),
                          const SizedBox(height: 16),
                          Row(
                            children: [
                              const Expanded(child: _FieldLabel('Password')),
                              if (!_signUp)
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 8),
                                  child: GestureDetector(
                                    onTap: _busy ? null : _forgotPassword,
                                    child: Text(
                                      'Forgot password?',
                                      style: theme.textTheme.bodySmall
                                          ?.copyWith(
                                            color: AppColors.accent,
                                            fontWeight: FontWeight.w700,
                                          ),
                                    ),
                                  ),
                                ),
                            ],
                          ),
                          TextFormField(
                            controller: _password,
                            obscureText: !_showPassword,
                            autofillHints: [
                              _signUp
                                  ? AutofillHints.newPassword
                                  : AutofillHints.password,
                            ],
                            textInputAction: _signUp
                                ? TextInputAction.next
                                : TextInputAction.done,
                            decoration: InputDecoration(
                              hintText: _signUp
                                  ? 'At least 6 characters'
                                  : '••••••',
                              suffixIcon: IconButton(
                                tooltip: _showPassword
                                    ? 'Hide password'
                                    : 'Show password',
                                icon: Icon(
                                  _showPassword
                                      ? Icons.visibility_off_outlined
                                      : Icons.visibility_outlined,
                                ),
                                onPressed: () => setState(
                                  () => _showPassword = !_showPassword,
                                ),
                              ),
                            ),
                            validator: (v) {
                              if ((v ?? '').isEmpty) {
                                return 'Please enter your password';
                              }
                              if (_signUp && v!.length < 6) {
                                return 'Use at least 6 characters';
                              }
                              return null;
                            },
                            onFieldSubmitted: (_) {
                              if (!_signUp) _submit();
                            },
                          ),
                          if (_signUp) ...[
                            const SizedBox(height: 16),
                            const _FieldLabel('Confirm password'),
                            TextFormField(
                              controller: _confirm,
                              obscureText: !_showPassword,
                              textInputAction: TextInputAction.done,
                              decoration: const InputDecoration(
                                hintText: 'Type it again',
                              ),
                              validator: (v) => v == _password.text
                                  ? null
                                  : 'Passwords do not match',
                              onFieldSubmitted: (_) => _submit(),
                            ),
                          ],
                          const SizedBox(height: 24),
                          if (_notice != null) ...[
                            _Banner(
                              text: _notice!,
                              icon: Icons.check_circle_outline_rounded,
                              color: AppColors.success,
                              background: AppColors.successSoft,
                            ),
                            const SizedBox(height: 12),
                          ],
                          if (_error != null) ...[
                            _Banner(
                              text: _error!,
                              icon: Icons.error_outline_rounded,
                              color: AppColors.danger,
                              background: AppColors.dangerSoft,
                            ),
                            const SizedBox(height: 12),
                          ],
                          FilledButton(
                            onPressed: _busy ? null : _submit,
                            child: _busy
                                ? const SizedBox.square(
                                    dimension: 22,
                                    child: CircularProgressIndicator(
                                      strokeWidth: 2.5,
                                      color: Colors.white,
                                    ),
                                  )
                                : Text(_signUp ? 'Create account' : 'Log in'),
                          ),
                          const SizedBox(height: 16),
                          Wrap(
                            alignment: WrapAlignment.center,
                            crossAxisAlignment: WrapCrossAlignment.center,
                            children: [
                              Text(
                                _signUp
                                    ? 'Already have an account?'
                                    : 'New to CostMaster?',
                                style: theme.textTheme.bodyMedium?.copyWith(
                                  color: AppColors.muted,
                                ),
                              ),
                              TextButton(
                                onPressed: _busy ? null : _toggleMode,
                                child: Text(
                                  _signUp ? 'Log in' : 'Create account',
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _AuthHeader extends StatelessWidget {
  const _AuthHeader();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.fromLTRB(
        24,
        MediaQuery.paddingOf(context).top + 36,
        24,
        36,
      ),
      decoration: const BoxDecoration(
        color: AppColors.brand,
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(32)),
      ),
      child: Column(
        children: [
          Container(
            width: 76,
            height: 76,
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Icons.school_rounded,
              color: AppColors.brand,
              size: 42,
            ),
          ),
          const SizedBox(height: 14),
          const Text(
            'CostMaster',
            style: TextStyle(
              color: Colors.white,
              fontSize: 28,
              fontWeight: FontWeight.w800,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            'CMA exam practice: mock tests and chapter-wise questions',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white.withValues(alpha: 0.85),
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}

/// The app logo and name, used on the login and loading screens.
class BrandMark extends StatelessWidget {
  final bool large;

  const BrandMark({super.key, this.large = false});

  @override
  Widget build(BuildContext context) {
    final size = large ? 64.0 : 40.0;
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: size,
          height: size,
          decoration: const BoxDecoration(
            color: AppColors.brand,
            shape: BoxShape.circle,
          ),
          child: Icon(
            Icons.school_rounded,
            color: Colors.white,
            size: size * 0.55,
          ),
        ),
        SizedBox(width: large ? 14 : 10),
        Text(
          'CostMaster',
          style: TextStyle(
            fontFamily: fontFamily,
            fontSize: large ? 28 : 19,
            fontWeight: FontWeight.w800,
            letterSpacing: -0.5,
            color: AppColors.ink,
          ),
        ),
      ],
    );
  }
}

class _FieldLabel extends StatelessWidget {
  final String text;

  const _FieldLabel(this.text);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 2, bottom: 8),
      child: Text(
        text,
        style: Theme.of(context).textTheme.bodySmall
            ?.copyWith(fontWeight: FontWeight.w700, color: AppColors.ink),
      ),
    );
  }
}

class _Banner extends StatelessWidget {
  final String text;
  final IconData icon;
  final Color color;
  final Color background;

  const _Banner({
    required this.text,
    required this.icon,
    required this.color,
    required this.background,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: background,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Icon(icon, color: color, size: 20),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              text,
              style: TextStyle(color: color, fontWeight: FontWeight.w600),
            ),
          ),
        ],
      ),
    );
  }
}
