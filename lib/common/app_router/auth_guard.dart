import 'package:auto_route/auto_route.dart';
import 'package:chat_application/common/dependence/setup.dart';
import 'package:chat_application/common/state_management/firebase_auth_bloc/firebase_auth_bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthGuard extends AutoRouteGuard {
  AuthGuard({required FirebaseAuthBloc firebaseAuthBloc})
    : _firebaseAuthBloc = firebaseAuthBloc;
  final FirebaseAuthBloc _firebaseAuthBloc;

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    if (_firebaseAuthBloc.state.isAuthenticated) {
      resolver.next(true);
    } else {
      resolver.redirectUntil(const NamedRoute('RegistrationRoute'));
    }
  }
}
