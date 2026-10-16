import 'package:flutter/material.dart';

import '../models/profile.dart';
import '../utils/time_format.dart';

/// One row of test history: title, date, score and time.
class AttemptTile extends StatelessWidget {
  final TestAttempt attempt;

  const AttemptTile({super.key, required this.attempt});

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final passed = attempt.percent >= 50;
    return ListTile(
      title: Text(attempt.title, maxLines: 1, overflow: TextOverflow.ellipsis),
      subtitle: Text('${formatDate(attempt.date)} • '
          '${formatSeconds(attempt.seconds)}'),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text('${attempt.percent}%',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                color: passed ? Colors.green.shade700 : scheme.error,
              )),
          Text('${attempt.correct}/${attempt.total}',
              style: Theme.of(context).textTheme.bodySmall),
        ],
      ),
    );
  }
}
