import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/widgets.dart';

/// The signed-in account.
class AuthUser {
  final String uid;
  final String email;
  final String? displayName;

  const AuthUser({required this.uid, required this.email, this.displayName});
}

/// A failure with a message that can be shown to the student as is.
class AuthException implements Exception {
  final String message;

  const AuthException(this.message);

  @override
  String toString() => message;
}

/// Email and password accounts. Screens depend only on this interface.
abstract class AuthService {
  AuthUser? get currentUser;

  /// Emits the signed-in user, or null after signing out.
  Stream<AuthUser?> get userChanges;

  Future<void> signIn({required String email, required String password});

  /// Creates the account and leaves the student signed out, so they log in
  /// with their new password next.
  Future<void> signUp({
    required String name,
    required String email,
    required String password,
  });

  Future<void> sendPasswordReset(String email);

  Future<void> signOut();

  /// Checks [password], runs [deleteData] to remove the account's records
  /// elsewhere, then deletes the account, which signs it out. Nothing is
  /// deleted if the password is wrong.
  Future<void> deleteAccount({
    required String password,
    required Future<void> Function() deleteData,
  });
}

class FirebaseAuthService implements AuthService {
  final FirebaseAuth _auth;

  final _changes = StreamController<AuthUser?>.broadcast();

  /// Firebase signs a new account in automatically. While signing up, those
  /// events are held back until the sign-out that follows, so the app never
  /// shows the new account as logged in.
  bool _muted = false;
  bool _signUpDone = false;

  FirebaseAuthService([FirebaseAuth? auth])
    : _auth = auth ?? FirebaseAuth.instance {
    _auth.userChanges().listen((u) {
      if (_muted) {
        if (u == null && _signUpDone) _unmute();
        return;
      }
      _changes.add(_toUser(u));
    });
  }

  void _unmute() {
    if (!_muted) return;
    _muted = false;
    _changes.add(_toUser(_auth.currentUser));
  }

  static AuthUser? _toUser(User? u) => u == null
      ? null
      : AuthUser(uid: u.uid, email: u.email ?? '', displayName: u.displayName);

  @override
  AuthUser? get currentUser => _muted ? null : _toUser(_auth.currentUser);

  @override
  Stream<AuthUser?> get userChanges => _changes.stream;

  @override
  Future<void> signIn({required String email, required String password}) =>
      _guard(
        () => _auth.signInWithEmailAndPassword(
          email: email.trim(),
          password: password,
        ),
        signingIn: true,
      );

  @override
  Future<void> signUp({
    required String name,
    required String email,
    required String password,
  }) async {
    _muted = true;
    _signUpDone = false;
    try {
      await _guard(() async {
        final cred = await _auth.createUserWithEmailAndPassword(
          email: email.trim(),
          password: password,
        );
        try {
          await cred.user?.updateDisplayName(name.trim());
        } finally {
          await _auth.signOut();
        }
      });
    } catch (_) {
      _unmute();
      rethrow;
    }
    _signUpDone = true;
    // Safety net in case the sign-out event never arrives.
    Timer(const Duration(seconds: 3), _unmute);
  }

  @override
  Future<void> sendPasswordReset(String email) =>
      _guard(() => _auth.sendPasswordResetEmail(email: email.trim()));

  @override
  Future<void> signOut() => _auth.signOut();

  @override
  Future<void> deleteAccount({
    required String password,
    required Future<void> Function() deleteData,
  }) async {
    final user = _auth.currentUser;
    if (user == null || user.email == null) {
      throw const AuthException('Please log in again and retry.');
    }
    // Firebase only deletes accounts that signed in recently, so this also
    // makes the delete itself succeed.
    await _guard(
      () => user.reauthenticateWithCredential(
        EmailAuthProvider.credential(email: user.email!, password: password),
      ),
      signingIn: true,
    );
    await deleteData();
    await _guard(user.delete);
  }

  Future<void> _guard(
    Future<void> Function() action, {
    bool signingIn = false,
  }) async {
    try {
      await action();
    } on FirebaseAuthException catch (e) {
      debugPrint('FirebaseAuthException ${e.code}: ${e.message}');
      throw AuthException(messageFor(e.code, e.message, signingIn));
    }
  }

  /// The Windows SDK reports a wrong email or password only as a generic
  /// "unknown-error: An internal error has occurred." with no detail.
  static const _genericCodes = {'unknown-error', 'unknown', 'internal-error'};

  /// Wrong email/password errors arrive under several codes depending on the
  /// platform.
  static const _badCredentialCodes = {
    'user-not-found',
    'wrong-password',
    'invalid-credential',
    'invalid-login-credentials',
    'invalid-password',
    'email-not-found',
  };
  static final _badCredentialText = RegExp(
    r'INVALID_LOGIN_CREDENTIALS|INVALID_PASSWORD|EMAIL_NOT_FOUND|'
    r'invalid.credential|wrong.password|no user record',
    caseSensitive: false,
  );

  @visibleForTesting
  static String messageFor(
    String code, [
    String? detail,
    bool signingIn = false,
  ]) {
    final normalised = code.toLowerCase().replaceAll('_', '-');
    if (_badCredentialCodes.contains(normalised) ||
        _badCredentialText.hasMatch('$code ${detail ?? ''}') ||
        (signingIn && _genericCodes.contains(normalised))) {
      return 'Incorrect email or password.';
    }
    return _message(normalised);
  }

  static String _message(String code) => switch (code) {
    'invalid-email' => 'Please enter a valid email address.',
    'user-disabled' => 'This account has been disabled.',
    'email-already-in-use' =>
      'An account already exists for this email. Please log in.',
    'weak-password' => 'Please choose a stronger password.',
    'too-many-requests' =>
      'Too many attempts. Please wait a few minutes and try again.',
    'network-request-failed' =>
      'No connection. Check your internet and try again.',
    'operation-not-allowed' => 'Email login is not enabled for this app yet.',
    _ => 'Something went wrong. Please try again.',
  };
}

/// Makes the [AuthService] available to screens below it.
class AuthScope extends InheritedWidget {
  final AuthService auth;

  const AuthScope({super.key, required this.auth, required super.child});

  static AuthService of(BuildContext context) =>
      context.getInheritedWidgetOfExactType<AuthScope>()!.auth;

  @override
  bool updateShouldNotify(AuthScope oldWidget) => auth != oldWidget.auth;
}
