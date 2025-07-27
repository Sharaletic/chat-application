class SignUpFailure implements Exception {
  const SignUpFailure([this.message = 'An unknown exception occurred.']);
  final String message;

  factory SignUpFailure.fromCode(String code) {
    switch (code) {
      case 'invalid-email':
        return const SignUpFailure('Email is not valid or badly formatted.');
      case 'user-disabled':
        return const SignUpFailure(
          'This user has been disabled. Please contact support for help.',
        );
      case 'email-already-in-use':
        return const SignUpFailure('An account already exists for that email.');
      case 'operation-not-allowed':
        return const SignUpFailure(
          'Operation is not allowed.  Please contact support.',
        );
      case 'weak-password':
        return const SignUpFailure('Please enter a stronger password.');
      default:
        return const SignUpFailure();
    }
  }
}
