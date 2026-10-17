import 'dart:async';

import 'package:cost_master/services/premium_service.dart';

/// Premium without Firebase or Razorpay. [buy] succeeds by granting premium,
/// as the server would, unless [failWith] is set.
class FakePremiumService implements PremiumService {
  final _controller = StreamController<bool>.broadcast();
  bool active;
  String? failWith;
  int purchases = 0;

  FakePremiumService({this.active = false, this.failWith});

  @override
  bool get canBuyHere => true;

  @override
  Stream<bool> watch(String uid) async* {
    yield active;
    yield* _controller.stream;
  }

  @override
  Future<void> buy({required String email, required String name}) async {
    purchases++;
    if (failWith != null) throw PremiumException(failWith!);
    active = true;
    _controller.add(true);
  }
}
