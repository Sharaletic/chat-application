class LoginFailure implements Exception {
  const LoginFailure([this.message = '']);
  final String message;

  factory LoginFailure.fromCode(String code) {
    switch (code) {
      case 'invalid-email':
        return const LoginFailure('Email is not valid or badly formatted.');
      case 'user-disabled':
        return const LoginFailure(
          'This user has been disabled. Please contact support for help.',
        );
      case 'user-not-found':
        return const LoginFailure(
          'Email is not found, please create an account.',
        );
      case 'wrong-password':
        return const LoginFailure('Incorrect password, please try again.');
      default:
        return const LoginFailure();
    }
  }
}
