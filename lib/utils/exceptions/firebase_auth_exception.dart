class PFirebaseAuthException implements Exception {
  final String code;

  PFirebaseAuthException(this.code);

  String get message {
    switch (code) {
      case 'email-already-in-use':
        return 'The account already exists for that email. Please use a different email address.';
      case 'invalid-email':
        return 'The provided email address is invalid. Please check the email address.';
      case 'weak-password':
        return 'The password provided is too weak. Please use a stronger password.';
      case 'user-disabled':
        return 'The user corresponding to the given email has been disabled. Please contact support.';
      case 'user-not-found':
        return 'Invalid login details. No user corresponding to the given email.';
      case 'wrong-password':
        return 'The password is invalid for the given email. Please check the password.';
      case 'invalid-verification-code':
        return 'The verification code is invalid. Please check the code.';
      case 'invalid-verification-id':
        return 'The verification ID is invalid. Please check the ID.';
      case 'quota-exceeded':
        return 'Quota exceeded. Please try again later.';
      case 'email-already-exists':
        return 'The account already exists. Please use a different email address.';
      case 'provider-already-linked':
        return 'The account is already linked to a different email address.';
      case 'requires-recent-login':
        return 'This is a sensitive operation and requires recent authentication. Log in again before retrying this request.';
      case 'credential-already-in-use':
        return 'This credentials is already associated with a different user account.';
      case 'user-mismatch':
        return 'The supplied credentials do not correspond to the previously signed in user.';
      case 'account-exists-with-different-credential':
        return 'An account already exists with the same email address but different sign-in credentials.';
      case 'operation-not-allowed':
        return 'This operation is not allowed. Please contact support.';
      case 'expired-action-code':
        return 'The action code has expired. Please request a new one.';
      case 'invalid-action-code':
        return 'The action code is invalid. Please check the code.';
      case 'missing-action-code':
        return 'The action code is missing. Please provide a valid action code.';
      case 'user-token-expired':
        return 'The user\'s credential is no longer valid. The user must sign in again.';
      case 'invalid-credential':
        return 'The supplied auth credential is malformed or has expired.';

      default:
        return 'A Firebase error occurred. Please try again.';
    }
  }
}

class PFirebaseException implements Exception {
  final String code;

  PFirebaseException(this.code);

  String get message {
    switch (code) {
      case 'permission-denied':
        return 'You do not have permission to perform this action.';
      case 'unavailable':
        return 'The server is currently unavailable. Please try again later.';
      case 'weak-password':
        return 'The password provided is too weak.';
      case 'email-already-in-use':
        return 'The account already exists for that email.';
      case 'invalid-email':
        return 'The email address is malformed.';
      default:
        return 'A Firebase error occurred. Please try again.';
    }
  }
}

class PFormatException implements Exception {
  const PFormatException();

  String get message => 'Invalid data format.';
}

class PPlatformException implements Exception {
  final String code;

  PPlatformException(this.code);

  String get message {
    switch (code) {
      case 'network_error':
        return 'Network error. Please check your internet connection.';
      case 'device_not_supported':
        return 'This feature is not supported on your device.';
      default:
        return 'A platform error occurred. Please try again.';
    }
  }
}
