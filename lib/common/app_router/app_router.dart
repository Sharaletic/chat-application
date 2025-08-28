import 'package:auto_route/auto_route.dart';
import 'package:chat_application/common/app_router/auth_guard.dart';
import 'package:chat_application/common/state_management/firebase_auth_bloc/firebase_auth_bloc.dart';
import 'package:chat_application/presentation/auth/pages/login_page.dart';
import 'package:chat_application/presentation/auth/pages/registration_page.dart';
import 'package:chat_application/presentation/chat/pages/chat_page.dart';
import 'package:chat_application/presentation/chat/pages/conversation_page.dart';
import 'package:chat_application/presentation/home/pages/home_page.dart';
import 'package:chat_application/presentation/settings/pages/settings_page.dart';

class AppRouter extends RootStackRouter {
  AppRouter({required FirebaseAuthBloc firebaseAuthBloc})
    : _firebaseAuthBloc = firebaseAuthBloc;
  final FirebaseAuthBloc _firebaseAuthBloc;
  @override
  List<NamedRouteDef> get routes => [
    NamedRouteDef(
      name: 'Home',
      initial: true,
      guards: [AuthGuard(firebaseAuthBloc: _firebaseAuthBloc)],
      builder: (context, data) {
        return HomePage();
      },
      children: [
        NamedRouteDef(
          name: 'ChatRoute',
          path: 'chat',
          builder: (context, data) {
            return ChatPage();
          },
        ),
        NamedRouteDef(
          name: 'SettingsRoute',
          path: 'settings',
          builder: (context, data) {
            return SettingsPage();
          },
        ),
      ],
    ),
    NamedRouteDef(
      name: 'RegistrationRoute',
      path: '/registration',
      builder: (context, data) {
        return RegistrationPage();
      },
    ),
    NamedRouteDef(
      name: 'LoginRoute',
      path: '/login',
      builder: (context, data) {
        return LoginPage();
      },
    ),
    NamedRouteDef(
      name: 'ConversationRoute',
      path: '/conversation',
      builder: (context, data) {
        return ConversationPage(
          chatId: data.params.optString('chatId'),
          recipientId: data.params.getString('recipientId'),
        );
      },
    ),
  ];
}
