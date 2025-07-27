import 'package:chat_application/common/error/login_failure.dart';
import 'package:chat_application/common/error/sign_up_failure.dart';
import 'package:chat_application/domain/repositories/auth_repository_interface.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthRepository implements AuthRepositoryInterface {
  AuthRepository({required this.instance, required this.sharedPreferences});
  final FirebaseAuth instance;
  final SharedPreferences sharedPreferences;

  @override
  Future<void> createUserWithEmailAndPassword({
    required String emailAddress,
    required String password,
  }) async {
    try {
      await instance.createUserWithEmailAndPassword(
        email: emailAddress,
        password: password,
      );
    } on FirebaseAuthException catch (e) {
      throw SignUpFailure.fromCode(e.code);
    } catch (_) {
      throw const SignUpFailure();
    }
  }

  @override
  Future<void> signInWithEmailAndPassword({
    required String emailAddress,
    required String password,
  }) async {
    try {
      await instance.signInWithEmailAndPassword(
        email: emailAddress,
        password: password,
      );
    } on FirebaseAuthException catch (e) {
      throw LoginFailure.fromCode(e.code);
    } catch (_) {
      throw const LoginFailure();
    }
  }

  @override
  Future<void> signOut() async {
    await instance.signOut();
  }
}
