import 'package:chat_application/common/theme/repository/theme_repository_interface.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

part 'theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit({required ThemeRepositoryInterface themeRepository})
    : _themeRepository = themeRepository,
      super(ThemeState(brightness: Brightness.dark)) {
    checkSelectedTheme();
  }

  final ThemeRepositoryInterface _themeRepository;

  Future<void> setThemeBrightness(Brightness brightness) async {
    emit(ThemeState(brightness: brightness));
    await _themeRepository.setDarkThemeSelected(brightness == Brightness.dark);
  }

  void checkSelectedTheme() {
    final brightness = _themeRepository.isDartThemeSelected()
        ? Brightness.dark
        : Brightness.light;
    emit(ThemeState(brightness: brightness));
  }
}
