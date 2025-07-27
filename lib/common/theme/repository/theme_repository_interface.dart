abstract interface class ThemeRepositoryInterface {
  bool isDartThemeSelected();
  Future<void> setDarkThemeSelected(bool selected);
}
