import 'dart:async';

import 'package:cost_master/services/auth_service.dart';

/// In-memory accounts for tests, so they don't need Firebase.
class FakeAuthService implements AuthService {
  final _controller = StreamController<AuthUser?>.broadcast();
  final _accounts = <String, ({String password, AuthUser user})>{};
  final resetEmails = <String>[];
  AuthUser? _current;

  /// Starts signed in as [user] when given.
  FakeAuthService({AuthUser? signedInAs}) : _current = signedInAs;

  @override
  AuthUser? get currentUser => _current;

  @override
  Stream<AuthUser?> get userChanges => _controller.stream;

  void _set(AuthUser? user) {
    _current = user;
    _controller.add(user);
  }

  @override
  Future<void> signIn({required String email, required String password}) async {
    final account = _accounts[email.trim()];
    if (account == null || account.password != password) {
      throw const AuthException('Incorrect email or password.');
    }
    _set(account.user);
  }

  @override
  Future<void> signUp({
    required String name,
    required String email,
    required String password,
  }) async {
    final key = email.trim();
    if (_accounts.containsKey(key)) {
      throw const AuthException(
        'An account already exists for this email. Please log in.',
      );
    }
    final user = AuthUser(
      uid: 'uid-${_accounts.length}',
      email: key,
      displayName: name,
    );
    // Like the real service: the account is created but stays signed out.
    _accounts[key] = (password: password, user: user);
  }

  @override
  Future<void> sendPasswordReset(String email) async => resetEmails.add(email);

  @override
  Future<void> signOut() async => _set(null);
}
