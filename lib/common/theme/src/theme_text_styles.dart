import 'package:chat_application/common/theme/src/constants.dart';
import 'package:flutter/material.dart';

class ThemeTextStyles extends ThemeExtension<ThemeTextStyles> {
  ThemeTextStyles({
    required this.appTitle,
    required this.appDescription,
    required this.labelStyle,
    required this.colorSettingsButton,
  });
  final TextStyle appTitle;
  final TextStyle appDescription;
  final TextStyle labelStyle;
  final Color colorSettingsButton;

  @override
  ThemeExtension<ThemeTextStyles> copyWith({
    TextStyle? appTitle,
    TextStyle? appDescription,
    TextStyle? labelStyle,
    Color? colorSettingsButton,
  }) {
    return ThemeTextStyles(
      appTitle: appTitle ?? this.appTitle,
      appDescription: appDescription ?? this.appDescription,
      labelStyle: labelStyle ?? this.labelStyle,
      colorSettingsButton: colorSettingsButton ?? this.colorSettingsButton,
    );
  }

  @override
  ThemeExtension<ThemeTextStyles> lerp(
    covariant ThemeExtension<ThemeTextStyles>? other,
    double t,
  ) {
    if (other is! ThemeTextStyles) {
      return this;
    }
    return ThemeTextStyles(
      appTitle: TextStyle.lerp(appTitle, other.appTitle, t)!,
      appDescription: TextStyle.lerp(appDescription, other.appDescription, t)!,
      labelStyle: TextStyle.lerp(labelStyle, other.labelStyle, t)!,
      colorSettingsButton: Color.lerp(
        colorSettingsButton,
        other.colorSettingsButton,
        t,
      )!,
    );
  }

  static get ligth => ThemeTextStyles(
    appTitle: textLine1.copyWith(
      color: AppColors.blackColor,
      fontWeight: FontWeight.w700,
    ),
    appDescription: textLine2.copyWith(
      color: AppColors.blackColor,
      fontWeight: FontWeight.w500,
    ),
    labelStyle: textLine1.copyWith(fontWeight: FontWeight.w500, fontSize: 20),
    colorSettingsButton: AppColors.primaryColor,
  );

  static get dark => ThemeTextStyles(
    appTitle: textLine1.copyWith(
      color: AppColors.whiteColor,
      fontWeight: FontWeight.w700,
    ),
    appDescription: textLine2.copyWith(
      color: AppColors.whiteColor,
      fontWeight: FontWeight.w500,
    ),
    labelStyle: textLine2.copyWith(fontWeight: FontWeight.w500, fontSize: 20),
    colorSettingsButton: AppColors.primaryColor,
  );
}
