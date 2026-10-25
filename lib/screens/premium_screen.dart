import 'package:flutter/material.dart';

import '../services/auth_service.dart';
import '../services/premium_service.dart';
import '../state/app_state.dart';
import '../theme.dart';
import '../utils/time_format.dart';
import '../widgets/policy_links.dart';
import '../widgets/ui.dart';

/// Opens the page from [builder] if the student has Premium. Otherwise shows
/// the Premium screen first, and opens the page once they have paid.
Future<void> openWithPremium(
  BuildContext context,
  WidgetBuilder builder,
) async {
  final navigator = Navigator.of(context);
  if (!PremiumScope.read(context).isActive) {
    final unlocked = await navigator.push<bool>(
      MaterialPageRoute(builder: (_) => const PremiumScreen()),
    );
    if (unlocked != true) return;
  }
  await navigator.push(MaterialPageRoute(builder: builder));
}

/// Explains Premium, offers its plans and takes the payment.
class PremiumScreen extends StatefulWidget {
  const PremiumScreen({super.key});

  @override
  State<PremiumScreen> createState() => _PremiumScreenState();
}

class _PremiumScreenState extends State<PremiumScreen> {
  PremiumPlan _plan = PremiumPlan.lifetime;
  bool _busy = false;
  bool _closing = false;
  String? _error;

  /// The status before the latest payment, so the screen closes once the
  /// server's grant changes it. Null until the student pays.
  PremiumStatus? _paidFrom;

  Future<void> _buy() async {
    final premium = PremiumScope.read(context);
    final email = AuthScope.of(context).currentUser?.email ?? '';
    final name = AppScope.read(context).profile?.name ?? '';
    final before = premium.status;
    setState(() {
      _busy = true;
      _error = null;
    });
    try {
      await premium.service.buy(plan: _plan, email: email, name: name);
      // The screen closes once the server's grant arrives (see build).
      if (mounted) setState(() => _paidFrom = before);
    } on PremiumException catch (e) {
      if (mounted) setState(() => _error = e.message);
    } finally {
      if (mounted) setState(() => _busy = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final premium = PremiumScope.of(context);
    final status = premium.status;
    final passEnds = premium.isActive ? status.expiresAt : null;

    final granted =
        _paidFrom != null && premium.isActive && status != _paidFrom;
    if (granted && !_closing) {
      _closing = true;
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (!mounted) return;
        final ends = PremiumScope.read(context).status.expiresAt;
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              ends == null
                  ? 'Lifetime Premium unlocked. Enjoy your tests!'
                  : 'Premium unlocked until ${formatDate(ends)}. '
                        'Enjoy your tests!',
            ),
          ),
        );
        Navigator.of(context).pop(true);
      });
    }

    return Scaffold(
      appBar: AppBar(title: const Text('CostMaster Premium')),
      body: ListView(
        padding: const EdgeInsets.only(bottom: 32),
        children: [
          HeaderPanel(
            padding: const EdgeInsets.fromLTRB(20, 8, 20, 28),
            child: Column(
              children: [
                Container(
                  width: 76,
                  height: 76,
                  decoration: const BoxDecoration(
                    color: AppColors.cta,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.workspace_premium_rounded,
                    color: Colors.white,
                    size: 44,
                  ),
                ),
                const SizedBox(height: 14),
                Text(
                  'Unlock all mock tests',
                  textAlign: TextAlign.center,
                  style: theme.textTheme.headlineSmall?.copyWith(
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  'A 15-day pass or lifetime access. No auto-renewal.',
                  textAlign: TextAlign.center,
                  style: theme.textTheme.bodyLarge?.copyWith(
                    color: Colors.white.withValues(alpha: 0.85),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 4, 16, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                if (passEnds != null) ...[
                  const SizedBox(height: 16),
                  Panel(
                    color: AppColors.successSoft,
                    padding: const EdgeInsets.all(12),
                    child: Text(
                      'Your pass is active until ${formatDate(passEnds)}. '
                      'Another 15-day pass adds 15 days after that; '
                      'Lifetime replaces it.',
                      style: theme.textTheme.bodyMedium,
                    ),
                  ),
                ],
                const SectionHeader('Choose a plan'),
                for (final plan in PremiumPlan.values) ...[
                  _PlanCard(
                    plan: plan,
                    selected: plan == _plan,
                    onTap: _busy ? null : () => setState(() => _plan = plan),
                  ),
                  const SizedBox(height: 10),
                ],
                const SectionHeader('What you get'),
                const Card(
                  child: Column(
                    children: [
                      _Benefit(
                        icon: Icons.assignment_rounded,
                        title: 'Full Paper Tests',
                        text: 'Timed tests on every paper in your course.',
                      ),
                      Divider(indent: 68),
                      _Benefit(
                        icon: Icons.shuffle_rounded,
                        title: 'Mock Tests',
                        text: 'Mixed questions from all your papers.',
                      ),
                      Divider(indent: 68),
                      _Benefit(
                        icon: Icons.phone_android_rounded,
                        title: 'On your account',
                        text:
                            'Stays after a reinstall or on a new phone when '
                            'you log in.',
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  'Chapter study and chapter tests stay free.',
                  textAlign: TextAlign.center,
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: AppColors.muted,
                  ),
                ),
                const SizedBox(height: 20),
                if (_error != null) ...[
                  Panel(
                    color: AppColors.dangerSoft,
                    padding: const EdgeInsets.all(12),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.error_outline_rounded,
                          color: AppColors.danger,
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: Text(
                            _error!,
                            style: const TextStyle(
                              color: AppColors.danger,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 12),
                ],
                if (!premium.service.canBuyHere)
                  Panel(
                    color: AppColors.warningSoft,
                    child: Text(
                      'Payments are available in the CostMaster Android app '
                      'for now. Premium bought there works here too.',
                      style: theme.textTheme.bodyMedium,
                    ),
                  )
                else if (_busy || _paidFrom != null)
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 12),
                    child: Column(
                      children: [
                        CircularProgressIndicator(),
                        SizedBox(height: 12),
                        Text('Processing payment…'),
                      ],
                    ),
                  )
                else
                  BigActionButton(
                    icon: Icons.lock_open_rounded,
                    label: 'Pay ₹${_plan.rupees}',
                    caption: 'UPI, cards and net banking',
                    onPressed: _buy,
                  ),
                const SizedBox(height: 14),
                Text(
                  'One-time payment. Payments are non-refundable.',
                  textAlign: TextAlign.center,
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: AppColors.muted,
                  ),
                ),
                const SizedBox(height: 6),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.lock_rounded,
                      size: 14,
                      color: AppColors.muted,
                    ),
                    const SizedBox(width: 6),
                    Text(
                      'Secure payment by Razorpay',
                      style: theme.textTheme.bodySmall?.copyWith(
                        color: AppColors.muted,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                const PolicyLinks(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

/// One plan to choose, with its price.
class _PlanCard extends StatelessWidget {
  final PremiumPlan plan;
  final bool selected;
  final VoidCallback? onTap;

  const _PlanCard({required this.plan, required this.selected, this.onTap});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final lifetime = plan.days == null;
    return Semantics(
      selected: selected,
      button: true,
      child: Panel(
        onTap: onTap,
        borderColor: selected ? AppColors.brand : null,
        color: selected ? AppColors.accentSoft : null,
        padding: const EdgeInsets.fromLTRB(12, 14, 16, 14),
        child: Row(
          children: [
            Icon(
              selected
                  ? Icons.radio_button_checked_rounded
                  : Icons.radio_button_off_rounded,
              color: selected ? AppColors.brand : AppColors.faint,
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        plan.title,
                        style: theme.textTheme.bodyLarge?.copyWith(
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      if (lifetime) ...[
                        const SizedBox(width: 8),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 2,
                          ),
                          decoration: BoxDecoration(
                            color: AppColors.cta,
                            borderRadius: BorderRadius.circular(99),
                          ),
                          child: const Text(
                            'BEST VALUE',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ),
                      ],
                    ],
                  ),
                  const SizedBox(height: 2),
                  Text(
                    lifetime
                        ? 'Pay once, yours for good'
                        : 'All mock tests for ${plan.days} days',
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: AppColors.muted,
                    ),
                  ),
                ],
              ),
            ),
            Text(
              '₹${plan.rupees}',
              style: theme.textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.w800,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _Benefit extends StatelessWidget {
  final IconData icon;
  final String title;
  final String text;

  const _Benefit({required this.icon, required this.title, required this.text});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
      child: Row(
        children: [
          IconBadge(
            tint: (soft: AppColors.successSoft, strong: AppColors.success),
            icon: icon,
            size: 40,
          ),
          const SizedBox(width: 14),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: theme.textTheme.bodyLarge?.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  text,
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
