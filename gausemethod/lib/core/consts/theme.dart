import 'package:flutter/material.dart';
import 'package:gausemethod/core/consts/app_colors.dart';

final themeData = ThemeData(
  useMaterial3: true,
  textTheme: const TextTheme(
    titleLarge: TextStyle(
      color: AppColors.textColor,
    ),
    bodyMedium: TextStyle(
      color: AppColors.textColor,
      fontSize: 20,
    ),
  ),
  appBarTheme: const AppBarTheme(
    backgroundColor: AppColors.secondColor,
  ),
  dividerTheme: const DividerThemeData(
    color: AppColors.secondColor,
  ),
);
