import 'package:chat_application/common/theme/src/constants.dart';
import 'package:chat_application/common/theme/src/text_theme.dart';
import 'package:chat_application/common/theme/src/theme_colors.dart';
import 'package:chat_application/common/theme/src/theme_text_styles.dart';
import 'package:flutter/material.dart';

ThemeData createLightTheme() {
  return ThemeData(
    textTheme: createTextTheme(),
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppColors.whiteColor,
    extensions: <ThemeExtension<dynamic>>[
      ThemeTextStyles.ligth,
      ThemeColors.ligth,
    ],
    appBarTheme: AppBarTheme(backgroundColor: Colors.transparent),
    snackBarTheme: SnackBarThemeData(
      backgroundColor: AppColors.greyColor,
      contentTextStyle: TextStyle(color: AppColors.blackColor),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all<Color>(AppColors.primaryColor),
        foregroundColor: WidgetStateProperty.all<Color>(AppColors.blackColor),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      hintStyle: TextStyle(color: AppColors.blackColor),
    ),
  );
}
