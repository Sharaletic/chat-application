import 'package:chat_application/common/app_router/app_router.dart';
import 'package:chat_application/common/dependence/setup.dart';
import 'package:chat_application/common/state_management/chat/chat_bloc.dart';
import 'package:chat_application/common/state_management/firebase_auth_bloc/firebase_auth_bloc.dart';
import 'package:chat_application/common/state_management/members/members_bloc.dart';
import 'package:chat_application/common/theme/cubit/theme_cubit.dart';
import 'package:chat_application/common/theme/src/dark_theme.dart';
import 'package:chat_application/common/theme/src/light_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  await setup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final router = getIt<AppRouter>();
    return MultiBlocProvider(
      providers: [
        BlocProvider<FirebaseAuthBloc>(
          create: (context) => getIt<FirebaseAuthBloc>(),
        ),
        BlocProvider<ThemeCubit>(create: (context) => getIt<ThemeCubit>()),
        BlocProvider<MembersBloc>(create: (context) => getIt<MembersBloc>()),
        BlocProvider<ChatBloc>(create: (context) => getIt<ChatBloc>()),
      ],
      child: BlocBuilder<ThemeCubit, ThemeState>(
        builder: (context, state) {
          return MaterialApp.router(
            title: 'Chat',
            theme: state.isDark ? createDarkTheme() : createLightTheme(),
            routerConfig: router.config(),
          );
        },
      ),
    );
  }
}
