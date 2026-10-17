import 'package:flutter/material.dart';

import '../services/auth_service.dart';
import '../services/premium_service.dart';
import '../state/app_state.dart';
import '../theme.dart';
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

/// Explains Premium and takes the one-time payment.
class PremiumScreen extends StatefulWidget {
  const PremiumScreen({super.key});

  @override
  State<PremiumScreen> createState() => _PremiumScreenState();
}

class _PremiumScreenState extends State<PremiumScreen> {
  bool _busy = false;
  bool _closing = false;
  String? _error;

  Future<void> _buy() async {
    final premium = PremiumScope.read(context);
    final email = AuthScope.of(context).currentUser?.email ?? '';
    final name = AppScope.read(context).profile?.name ?? '';
    setState(() {
      _busy = true;
      _error = null;
    });
    try {
      await premium.service.buy(email: email, name: name);
      // The screen closes once the server's grant arrives (see build).
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

    if (premium.isActive && !_closing) {
      _closing = true;
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (!mounted) return;
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Premium unlocked. Enjoy your tests!')),
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
                  child: const Icon(Icons.workspace_premium_rounded,
                      color: Colors.white, size: 44),
                ),
                const SizedBox(height: 14),
                Text(
                  'Unlock all mock tests',
                  textAlign: TextAlign.center,
                  style: theme.textTheme.headlineSmall
                      ?.copyWith(color: Colors.white),
                ),
                const SizedBox(height: 6),
                Text(
                  'Pay once. Yours for life.',
                  style: theme.textTheme.bodyLarge?.copyWith(
                    color: Colors.white.withValues(alpha: 0.85),
                  ),
                ),
                const SizedBox(height: 18),
                Text.rich(
                  TextSpan(
                    children: [
                      const TextSpan(
                        text: '₹$premiumPriceRupees',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      TextSpan(
                        text: '  one-time',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white.withValues(alpha: 0.8),
                        ),
                      ),
                    ],
                  ),
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 4, 16, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
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
                        icon: Icons.all_inclusive_rounded,
                        title: 'Lifetime access',
                        text: 'Linked to your account, so it stays after a '
                            'reinstall or on a new phone.',
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  'Chapter study and chapter tests stay free.',
                  textAlign: TextAlign.center,
                  style:
                      theme.textTheme.bodySmall?.copyWith(color: AppColors.muted),
                ),
                const SizedBox(height: 20),
                if (_error != null) ...[
                  Panel(
                    color: AppColors.dangerSoft,
                    padding: const EdgeInsets.all(12),
                    child: Row(
                      children: [
                        const Icon(Icons.error_outline_rounded,
                            color: AppColors.danger),
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
                else if (_busy)
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
                    label: 'Pay ₹$premiumPriceRupees',
                    caption: 'UPI, cards and net banking',
                    onPressed: _buy,
                  ),
                const SizedBox(height: 14),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.lock_rounded,
                        size: 14, color: AppColors.muted),
                    const SizedBox(width: 6),
                    Text(
                      'Secure payment by Razorpay',
                      style: theme.textTheme.bodySmall
                          ?.copyWith(color: AppColors.muted),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
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
                Text(title,
                    style: theme.textTheme.bodyLarge
                        ?.copyWith(fontWeight: FontWeight.w700)),
                Text(
                  text,
                  style:
                      theme.textTheme.bodySmall?.copyWith(color: AppColors.muted),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
