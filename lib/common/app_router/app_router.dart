import 'package:auto_route/auto_route.dart';
import 'package:chat_application/common/app_router/auth_guard.dart';
import 'package:chat_application/common/app_router/app_router.gr.dart';

@AutoRouterConfig()
class Routers extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(
      page: HomeRoute.page,
      guards: [AuthGuard()],
      initial: true,
      children: [
        AutoRoute(page: ChatRoute.page, path: 'chat'),
        AutoRoute(page: SettingsRoute.page, path: 'settings'),
      ],
    ),
    AutoRoute(page: RegistrationRoute.page, path: '/registration'),
    AutoRoute(page: LoginRoute.page, path: '/login'),
  ];
}
