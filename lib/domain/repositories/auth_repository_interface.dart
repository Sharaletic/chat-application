import 'package:chat_application/domain/models/user_model.dart';

abstract interface class AuthRepositoryInterface {
  Future<AuthenticatedUser> createUserWithEmailAndPassword({
    required String userName,
    required String emailAddress,
    required String password,
  });

  Future<AuthenticatedUser> signInWithEmailAndPassword({
    required String emailAddress,
    required String password,
  });

  Future<void> signOut();
}
