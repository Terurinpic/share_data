class ErrorConst {
  static const authorizeFailed = 'authorize_failed';

  static const emailLimitExceeded = 'Email rate limit exceeded';
  static const emailNotConfirmed = 'Email not confirmed';

  static const invalidLogin = 'Invalid login credentials';
  static const invalidPassword = 'Password should be at least 6 characters';

  static const noRows = 'JSON object requested, multiple (or no) rows returned';

  static const operationNotCompleted =
      'The operation couldn’t be completed. (com.apple.AuthenticationServices.AuthorizationError error 1000.)';
}
