import 'package:chat_application/common/theme/src/constants.dart';
import 'package:flutter/material.dart';

class ThemeColors extends ThemeExtension<ThemeColors> {
  ThemeColors({required this.colorSettingsButton});
  final Color colorSettingsButton;

  @override
  ThemeExtension<ThemeColors> copyWith({Color? colorSettingsButton}) {
    return ThemeColors(
      colorSettingsButton: colorSettingsButton ?? this.colorSettingsButton,
    );
  }

  @override
  ThemeExtension<ThemeColors> lerp(
    covariant ThemeExtension<ThemeColors>? other,
    double t,
  ) {
    if (other is! ThemeColors) {
      return this;
    }
    return ThemeColors(
      colorSettingsButton: Color.lerp(
        colorSettingsButton,
        other.colorSettingsButton,
        t,
      )!,
    );
  }

  static get ligth => ThemeColors(colorSettingsButton: AppColors.primaryColor);

  static get dark => ThemeColors(colorSettingsButton: AppColors.primaryColor);
}
