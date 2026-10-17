import 'package:flutter/material.dart';

import '../models/profile.dart';
import '../theme.dart';
import '../utils/time_format.dart';

/// One row of test history: score, title, date and time.
class AttemptTile extends StatelessWidget {
  final TestAttempt attempt;

  const AttemptTile({super.key, required this.attempt});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      child: Row(
        children: [
          Container(
            width: 48,
            height: 48,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: AppColors.softForScore(attempt.percent),
              borderRadius: BorderRadius.circular(14),
            ),
            child: Text(
              '${attempt.percent}%',
              style: TextStyle(
                color: AppColors.forScore(attempt.percent),
                fontWeight: FontWeight.w800,
                fontSize: 13,
              ),
            ),
          ),
          const SizedBox(width: 14),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  attempt.title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.bodyMedium
                      ?.copyWith(fontWeight: FontWeight.w700),
                ),
                const SizedBox(height: 3),
                Text(
                  '${formatDate(attempt.date)}  ·  '
                  '${formatSeconds(attempt.seconds)}  ·  '
                  '${attempt.correct}/${attempt.total}',
                  style: theme.textTheme.bodySmall
                      ?.copyWith(color: AppColors.muted),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
