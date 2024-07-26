import 'package:flutter/material.dart';
import 'package:spotify_clone/core/configs/theme/app_colors.dart';

class AppTheme {
  static final lightTheme = ThemeData(
      inputDecorationTheme: const InputDecorationTheme(
        hintStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        filled: true,
        fillColor: Colors.transparent,
        contentPadding: EdgeInsets.all(30),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(30))),
      ),
      fontFamily: 'Satoshi',
      brightness: Brightness.light,
      primaryColor: const Color.fromRGBO(66, 200, 60, 1),
      scaffoldBackgroundColor: AppColors.lightBackground,
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: AppColors.primaryColor,
              elevation: 0,
              textStyle:
                  const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)))));
  static final darkTheme = ThemeData(
      inputDecorationTheme: const InputDecorationTheme(
        filled: true,
        hintStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        fillColor: Colors.transparent,
        contentPadding: EdgeInsets.all(30),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(30))),
      ),
      fontFamily: 'Satoshi',
      brightness: Brightness.dark,
      primaryColor: AppColors.primaryColor,
      scaffoldBackgroundColor: AppColors.darkBackground,
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.primaryColor,
              textStyle:
                  const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)))));
}
