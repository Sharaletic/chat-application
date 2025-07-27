import 'package:chat_application/common/theme/src/theme_colors.dart';
import 'package:chat_application/common/theme/src/theme_text_styles.dart';
import 'package:flutter/material.dart';

extension BuildContextExt on BuildContext {
  ThemeTextStyles get text => Theme.of(this).extension<ThemeTextStyles>()!;
  ThemeColors get color => Theme.of(this).extension<ThemeColors>()!;
}
