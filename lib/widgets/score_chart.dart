import 'package:flutter/material.dart';

import '../models/profile.dart';
import '../theme.dart';

/// Bars for recent test scores, oldest on the left, with a 50% pass line.
class ScoreChart extends StatelessWidget {
  /// Newest first, as stored.
  final List<TestAttempt> attempts;
  final double height;

  const ScoreChart({super.key, required this.attempts, this.height = 150});

  @override
  Widget build(BuildContext context) {
    final shown = attempts.take(10).toList().reversed.toList();
    final label = Theme.of(context).textTheme.labelSmall
        ?.copyWith(color: AppColors.faint, fontWeight: FontWeight.w700);
    return SizedBox(
      height: height,
      child: Stack(
        children: [
          // Pass mark.
          Positioned(
            left: 0,
            right: 0,
            bottom: (height - 36) * 0.5 + 4,
            child: Row(
              children: [
                Expanded(child: Container(height: 1, color: AppColors.border)),
                const SizedBox(width: 6),
                Text('50%', style: label),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 34),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                for (final a in shown)
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text('${a.percent}', style: label),
                          const SizedBox(height: 4),
                          TweenAnimationBuilder<double>(
                            tween: Tween(begin: 0, end: a.percent / 100),
                            duration: const Duration(milliseconds: 700),
                            curve: Curves.easeOutCubic,
                            builder: (context, v, _) => Container(
                              height: (height - 36) * v + 4,
                              decoration: BoxDecoration(
                                color: AppColors.forScore(a.percent),
                                borderRadius: BorderRadius.circular(6),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                for (var i = shown.length; i < 10; i++)
                  const Expanded(child: SizedBox()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
