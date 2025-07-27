import 'package:chat_application/common/theme/src/constants.dart';
import 'package:flutter/material.dart';

class ThemeColors extends ThemeExtension<ThemeColors> {
  ThemeColors({
    required this.colorSettingsButton,
    required this.authBackgroundColor,
  });
  final Color colorSettingsButton;
  final Color authBackgroundColor;

  @override
  ThemeExtension<ThemeColors> copyWith({
    Color? colorSettingsButton,
    Color? authBackgroundColor,
  }) {
    return ThemeColors(
      colorSettingsButton: colorSettingsButton ?? this.colorSettingsButton,
      authBackgroundColor: authBackgroundColor ?? this.authBackgroundColor,
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
      authBackgroundColor: Color.lerp(
        authBackgroundColor,
        other.authBackgroundColor,
        t,
      )!,
    );
  }

  static get ligth => ThemeColors(
    colorSettingsButton: AppColors.primaryColor,
    authBackgroundColor: AppColors.blackColor,
  );

  static get dark => ThemeColors(
    colorSettingsButton: AppColors.primaryColor,
    authBackgroundColor: AppColors.blackColor,
  );
}
