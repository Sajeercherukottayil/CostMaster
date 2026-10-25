import 'dart:async';

import 'package:cost_master/services/premium_service.dart';

/// Premium without Firebase or Razorpay. [buy] succeeds by granting the plan,
/// as the server would, unless [failWith] is set.
class FakePremiumService implements PremiumService {
  final _controller = StreamController<PremiumStatus>.broadcast();
  PremiumStatus status;
  String? failWith;
  final List<PremiumPlan> purchases = [];

  /// [active] gives lifetime Premium; [status] sets anything else.
  FakePremiumService({
    bool active = false,
    PremiumStatus? status,
    this.failWith,
  }) : status =
           status ??
           (active ? const PremiumStatus(premium: true) : PremiumStatus.none);

  @override
  bool get canBuyHere => true;

  @override
  Stream<PremiumStatus> watch(String uid) async* {
    yield status;
    yield* _controller.stream;
  }

  @override
  Future<void> buy({
    required PremiumPlan plan,
    required String email,
    required String name,
  }) async {
    purchases.add(plan);
    if (failWith != null) throw PremiumException(failWith!);
    final running = status.expiresAt;
    if (plan.days != null &&
        status.premium &&
        running != null &&
        running.isAfter(DateTime.now())) {
      throw const PremiumException('Your 15-day pass is still active.');
    }
    final days = plan.days;
    if (days == null || status.isLifetime) {
      status = const PremiumStatus(premium: true);
    } else {
      final now = DateTime.now();
      final ends = status.expiresAt;
      final from = status.premium && ends != null && ends.isAfter(now)
          ? ends
          : now;
      status = PremiumStatus(
        premium: true,
        expiresAt: from.add(Duration(days: days)),
      );
    }
    _controller.add(status);
  }
}
