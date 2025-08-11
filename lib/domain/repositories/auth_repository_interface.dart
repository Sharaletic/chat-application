abstract interface class AuthRepositoryInterface {
  Future<void> createUserWithEmailAndPassword({
    required String userName,
    required String emailAddress,
    required String password,
  });

  Future<void> signInWithEmailAndPassword({
    required String emailAddress,
    required String password,
  });

  Future<void> signOut();
}
