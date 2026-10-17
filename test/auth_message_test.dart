import 'package:flutter_test/flutter_test.dart';

import 'package:cost_master/services/auth_service.dart';

void main() {
  const incorrect = 'Incorrect email or password.';

  test('every form of wrong email or password gives one clear message', () {
    expect(FirebaseAuthService.messageFor('wrong-password'), incorrect);
    expect(FirebaseAuthService.messageFor('user-not-found'), incorrect);
    expect(FirebaseAuthService.messageFor('invalid-credential'), incorrect);
    expect(
      FirebaseAuthService.messageFor('INVALID_LOGIN_CREDENTIALS'),
      incorrect,
    );
    // How the Windows SDK can report it.
    expect(
      FirebaseAuthService.messageFor(
        'internal-error',
        '{"error":{"message":"INVALID_LOGIN_CREDENTIALS"}}',
      ),
      incorrect,
    );
    expect(
      FirebaseAuthService.messageFor('unknown', 'INVALID_PASSWORD'),
      incorrect,
    );
  });

  test('the Windows SDK\'s generic login error means wrong credentials', () {
    // Exactly what Firebase returned on Windows for a wrong password.
    expect(
      FirebaseAuthService.messageFor(
        'unknown-error',
        'An internal error has occurred.',
        true,
      ),
      incorrect,
    );
    // Outside login, a generic error stays generic.
    expect(
      FirebaseAuthService.messageFor(
        'unknown-error',
        'An internal error has occurred.',
      ),
      'Something went wrong. Please try again.',
    );
  });

  test('other errors keep their own messages', () {
    expect(
      FirebaseAuthService.messageFor('invalid-email'),
      'Please enter a valid email address.',
    );
    expect(
      FirebaseAuthService.messageFor('network-request-failed'),
      contains('No connection'),
    );
    expect(
      FirebaseAuthService.messageFor('too-many-requests'),
      contains('Too many attempts'),
    );
    expect(
      FirebaseAuthService.messageFor('something-new'),
      'Something went wrong. Please try again.',
    );
  });
}
