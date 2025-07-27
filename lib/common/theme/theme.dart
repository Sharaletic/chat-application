import 'package:chat_application/common/colors/app_colors.dart';
import 'package:flutter/material.dart';

final textTheme = const TextTheme(titleMedium: TextStyle(fontSize: 16));

final darkTheme = ThemeData(
  useMaterial3: true,
  primaryColor: AppColors.primaryColor,
  textTheme: ThemeData.dark().textTheme.merge(textTheme),
  scaffoldBackgroundColor: AppColors.blackColor,
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
  colorScheme: ColorScheme.fromSeed(
    seedColor: AppColors.primaryColor,
    brightness: Brightness.dark,
  ),
);

final lightTheme = ThemeData(
  useMaterial3: true,
  primaryColor: AppColors.primaryColor,
  textTheme: ThemeData.light().textTheme.merge(textTheme),
  scaffoldBackgroundColor: AppColors.whiteColor,
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
  colorScheme: ColorScheme.fromSeed(
    seedColor: AppColors.primaryColor,
    brightness: Brightness.light,
  ),
);
