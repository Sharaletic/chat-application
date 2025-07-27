part of 'auth_bloc.dart';

@freezed
sealed class AuthEvent with _$AuthEvent {
  const factory AuthEvent.login({
    required String emailAddress,
    required String password,
  }) = _Login;
  const factory AuthEvent.signUp({
    required String emailAddress,
    required String password,
  }) = _SignUp;
  const factory AuthEvent.signOut() = _SignOut;
}
