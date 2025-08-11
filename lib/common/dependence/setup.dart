import 'package:chat_application/common/app_router/app_router.dart';
import 'package:chat_application/common/api/api_client.dart';
import 'package:chat_application/common/state_management/auth/auth_bloc.dart';
import 'package:chat_application/common/state_management/chat/chat_bloc.dart';
import 'package:chat_application/common/theme/cubit/theme_cubit.dart';
import 'package:chat_application/common/theme/repository/theme_repository.dart';
import 'package:chat_application/common/theme/repository/theme_repository_interface.dart';
import 'package:chat_application/data/repositories/auth_repository.dart';
import 'package:chat_application/domain/repositories/auth_repository_interface.dart';
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

  getIt.registerSingleton<Routers>(Routers());

  final prefs = await SharedPreferences.getInstance();
  getIt.registerLazySingleton<SharedPreferences>(() => prefs);

  final dio = Dio();
  getIt.registerLazySingleton<Dio>(() => dio);

  getIt.registerLazySingleton<ApiClient>(() => ApiClient(dio: getIt<Dio>()));

  _initTheme();
  _initAuth();
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
      apiClient: getIt<ApiClient>(),
    ),
  );

  getIt.registerFactory<AuthBloc>(
    () => AuthBloc(authRepository: getIt<AuthRepositoryInterface>()),
  );
}
