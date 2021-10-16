import 'package:flutter/material.dart';

import 'app_colors.dart';

abstract class AppTheme {
  static ThemeData light() {
    return ThemeData(
      primaryColor: AppColors.primaryColor,
      textTheme: const TextTheme(
        headline1: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w400,
          color: Colors.black,
        ),
      ),
    );
  }

  static ThemeData dark() {
    return ThemeData(
      brightness: Brightness.dark,
      iconTheme: const IconThemeData(color: Colors.white),
      primaryColor: AppColors.primaryColor,
      textTheme: const TextTheme(
        headline1: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: Colors.black,
        ),
      ),
    );
  }
}
