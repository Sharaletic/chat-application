import 'package:chat_application/common/dependence/setup.dart';
import 'package:chat_application/common/theme/repository/theme_repository_interface.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeRepository implements ThemeRepositoryInterface {
  ThemeRepository({required this.sharedPreferences});
  final SharedPreferences sharedPreferences;

  @override
  bool isDartThemeSelected() {
    final userId = getIt<FirebaseAuth>().currentUser?.uid;
    if (userId != null) {
      final selected = sharedPreferences.getBool(userId);
      return selected ?? false;
    }
    return false;
  }

  @override
  Future<void> setDarkThemeSelected(bool selected) async {
    final userId = getIt<FirebaseAuth>().currentUser?.uid;
    if (userId != null) {
      await sharedPreferences.setBool(userId, selected);
    }
  }
}
