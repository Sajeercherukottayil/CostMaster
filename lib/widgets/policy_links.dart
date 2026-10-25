import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../theme.dart';

/// Where the policy pages in web/ are published.
const policySiteBase = 'https://costmaster-ck.web.app';

/// The policy pages, as (path, label).
const policyPages = [
  ('pricing', 'Pricing'),
  ('terms', 'Terms'),
  ('privacy', 'Privacy'),
  ('refund', 'Refunds'),
  ('contact', 'Contact us'),
];

/// Opens a policy page from web/ in the browser.
Future<void> openPolicyPage(BuildContext context, String path) async {
  final messenger = ScaffoldMessenger.of(context);
  final opened = await launchUrl(
    Uri.parse('$policySiteBase/$path'),
    mode: LaunchMode.externalApplication,
  );
  if (!opened) {
    messenger.showSnackBar(
      SnackBar(content: Text('Could not open $policySiteBase/$path')),
    );
  }
}

/// A small row of links to the policy pages.
class PolicyLinks extends StatelessWidget {
  const PolicyLinks({super.key});

  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme.bodySmall?.copyWith(
      color: AppColors.muted,
      decoration: TextDecoration.underline,
      decorationColor: AppColors.muted,
    );
    return Wrap(
      alignment: WrapAlignment.center,
      children: [
        for (final (path, label) in policyPages)
          TextButton(
            style: TextButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              minimumSize: const Size(0, 36),
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            ),
            onPressed: () => openPolicyPage(context, path),
            child: Text(label, style: style),
          ),
      ],
    );
  }
}
