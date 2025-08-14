import 'package:auto_route/auto_route.dart';
import 'package:chat_application/common/dependence/setup.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthGuard extends AutoRouteGuard {
  final _auth = getIt<FirebaseAuth>();

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    if (_auth.currentUser != null) {
      resolver.next(true);
      return;
    }

    final user = await _auth.authStateChanges().first;

    if (user != null) {
      resolver.next(true);
    } else {
      resolver.redirectUntil(const NamedRoute('RegistrationRoute'));
    }
  }
}
