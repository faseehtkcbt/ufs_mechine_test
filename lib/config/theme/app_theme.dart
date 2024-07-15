import 'package:flutter/material.dart';
import 'package:ufs_mechine_test/core/color_pellete/app_pellette.dart';

class AppTheme {
  static TextStyle _lightTextStyle(
          {double fontSize = 16, FontWeight weight = FontWeight.w500}) =>
      TextStyle(
          fontSize: fontSize, fontWeight: weight, color: AppPellette.txtBlack);
  static _border({
    Color bdColor = AppPellette.txtWhite,
  }) =>
      OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: bdColor, width: 1.5));

  static final InputDecorationTheme _lightInput = InputDecorationTheme(
      hintStyle: _lightTextStyle(fontSize: 14, weight: FontWeight.w400),
      border: _border(bdColor: AppPellette.darkGreyColor),
      focusedBorder: _border(
        bdColor: AppPellette.txtBlack,
      ),
      errorBorder: _border(
        bdColor: AppPellette.errorColor,
      ),
      focusedErrorBorder: _border(
        bdColor: AppPellette.errorColor,
      ));

  static final TextTheme _lightTextTheme = TextTheme(
    titleLarge: _lightTextStyle(fontSize: 20,weight: FontWeight.w500),
      titleMedium: _lightTextStyle(fontSize: 18, weight: FontWeight.w700),
      bodyLarge: _lightTextStyle(),
      bodySmall: _lightTextStyle(weight: FontWeight.w400, fontSize: 14));

  static dynamic lightTheme =
      ThemeData.light(useMaterial3: true).copyWith(textTheme: _lightTextTheme,
      inputDecorationTheme: _lightInput);
}
