import 'package:chat_application/common/api/api_client.dart';
import 'package:chat_application/common/error/login_failure.dart';
import 'package:chat_application/common/error/sign_up_failure.dart';
import 'package:chat_application/domain/repositories/auth_repository_interface.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthRepository implements AuthRepositoryInterface {
  AuthRepository({required FirebaseAuth instance, required ApiClient apiClient})
    : _instance = instance,
      _apiClient = apiClient;
  final FirebaseAuth _instance;
  final ApiClient _apiClient;

  @override
  Future<void> createUserWithEmailAndPassword({
    required String userName,
    required String emailAddress,
    required String password,
  }) async {
    try {
      final userCredential = await _instance.createUserWithEmailAndPassword(
        email: emailAddress,
        password: password,
      );
      await userCredential.user?.updateDisplayName(userName);
      final id = _instance.currentUser!.uid;
      _apiClient.createMember(
        id: id,
        userName: userName,
        emailAddress: emailAddress,
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
      await _instance.signInWithEmailAndPassword(
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
    await _instance.signOut();
  }
}
