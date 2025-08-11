import 'package:chat_application/common/error/login_failure.dart';
import 'package:chat_application/common/error/sign_up_failure.dart';
import 'package:chat_application/domain/repositories/auth_repository_interface.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc({required AuthRepositoryInterface authRepository})
    : _authRepository = authRepository,
      super(const AuthState.initial()) {
    on<AuthEvent>((event, emit) async {
      switch (event) {
        case _SignUp():
          await _onSignUp(event, emit);
        case _Login():
          await _onLogin(event, emit);
        case _SignOut():
          await _onSignOut(event, emit);
      }
    });
  }
  final AuthRepositoryInterface _authRepository;

  Future<void> _onLogin(_Login event, Emitter<AuthState> emit) async {
    emit(AuthState.loading());
    try {
      await _authRepository.signInWithEmailAndPassword(
        emailAddress: event.emailAddress,
        password: event.password,
      );
      emit(AuthState.success());
    } on LoginFailure catch (e) {
      emit(AuthState.failure(message: e.message));
    }
  }

  Future<void> _onSignUp(_SignUp event, Emitter<AuthState> emit) async {
    emit(AuthState.loading());
    try {
      await _authRepository.createUserWithEmailAndPassword(
        userName: event.userName,
        emailAddress: event.emailAddress,
        password: event.password,
      );
      emit(AuthState.success());
    } on SignUpFailure catch (e) {
      emit(AuthState.failure(message: e.message));
    }
  }

  Future<void> _onSignOut(_SignOut event, Emitter<AuthState> emit) async {
    emit(AuthState.loading());
    try {
      await _authRepository.signOut();
      emit(AuthState.success());
    } catch (e) {
      emit(AuthState.failure(message: e.toString()));
    }
  }
}
