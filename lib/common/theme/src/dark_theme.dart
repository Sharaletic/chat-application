import 'package:chat_application/common/colors/app_colors.dart';
import 'package:chat_application/common/theme/src/text_theme.dart';
import 'package:chat_application/common/theme/src/theme_colors.dart';
import 'package:chat_application/common/theme/src/theme_text_styles.dart';
import 'package:flutter/material.dart';

ThemeData createDarkTheme() {
  return ThemeData(
    textTheme: createTextTheme(),
    brightness: Brightness.dark,
    scaffoldBackgroundColor: AppColors.blackColor,
    extensions: <ThemeExtension<dynamic>>[
      ThemeTextStyles.dark,
      ThemeColors.dark,
    ],
    appBarTheme: AppBarTheme(backgroundColor: Colors.transparent),
    snackBarTheme: SnackBarThemeData(
      backgroundColor: AppColors.greyColor,
      contentTextStyle: TextStyle(color: AppColors.whiteColor),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all<Color>(AppColors.primaryColor),
        foregroundColor: WidgetStateProperty.all<Color>(AppColors.blackColor),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      hintStyle: TextStyle(color: AppColors.whiteColor),
    ),
  );
}
