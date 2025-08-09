import 'package:chat_application/common/app_router/app_router.dart';
import 'package:chat_application/common/state_management/auth/auth_bloc.dart';
import 'package:chat_application/common/state_management/chat/bloc/chat_bloc.dart';
import 'package:chat_application/common/theme/cubit/theme_cubit.dart';
import 'package:chat_application/common/theme/repository/theme_repository.dart';
import 'package:chat_application/common/theme/repository/theme_repository_interface.dart';
import 'package:chat_application/data/repositories/auth_repository.dart';
import 'package:chat_application/data/repositories/chat_repository.dart';
import 'package:chat_application/domain/repositories/auth_repository_interface.dart';
import 'package:chat_application/domain/repositories/chat_repository_interface.dart';
import 'package:chat_application/firebase_options.dart';
import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

final getIt = GetIt.instance;

Future<void> setup() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  final credential = FirebaseAuth.instance;
  getIt.registerLazySingleton<FirebaseAuth>(() => credential);

  final channel = WebSocketChannel.connect(Uri.parse('ws://localhost:3000'));
  getIt.registerLazySingleton<WebSocketChannel>(() => channel);

  getIt.registerSingleton<Routers>(Routers());

  final prefs = await SharedPreferences.getInstance();
  getIt.registerLazySingleton<SharedPreferences>(() => prefs);

  final dio = Dio();
  getIt.registerLazySingleton<Dio>(() => dio);

  _initTheme();
  _initAuth();
  _initChat();
}

void _initTheme() {
  getIt.registerLazySingleton<ThemeRepositoryInterface>(
    () => ThemeRepository(sharedPreferences: getIt<SharedPreferences>()),
  );

  getIt.registerFactory<ThemeCubit>(
    () => ThemeCubit(themeRepository: getIt<ThemeRepositoryInterface>()),
  );
}

void _initAuth() {
  getIt.registerLazySingleton<AuthRepositoryInterface>(
    () => AuthRepository(
      instance: getIt<FirebaseAuth>(),
      sharedPreferences: getIt<SharedPreferences>(),
    ),
  );

  getIt.registerFactory<AuthBloc>(
    () => AuthBloc(authRepository: getIt<AuthRepositoryInterface>()),
  );
}

void _initChat() {
  getIt.registerLazySingleton<ChatRepositoryInterface>(
    () => ChatRepository(channel: getIt<WebSocketChannel>()),
  );

  getIt.registerFactory<ChatBloc>(
    () => ChatBloc(ws: getIt<WebSocketChannel>()),
  );
}
