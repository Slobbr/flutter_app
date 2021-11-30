import 'package:flutter/material.dart';

class Constants {
  static String appName = "Slobbr";

  static Color lightPrimary = const Color(0xfffcfcff);
  static Color lightAccent = const Color(0xFF001B2E);
  static Color lightBG = const Color(0xFFFBFBF2);

  static ThemeData lightTheme = ThemeData(
    fontFamily: 'ProductSans',
    backgroundColor: lightBG,
    primaryColor: lightPrimary,
    accentColor: lightAccent,
    cursorColor: lightAccent,
    scaffoldBackgroundColor: lightBG,
    appBarTheme: AppBarTheme(
      elevation: 0,
      textTheme: TextTheme(
        headline6: TextStyle(
          color: Color(0xFF001B2E),
          fontSize: 18.0,
          fontWeight: FontWeight.w800,
        ),
      ),
    ),
  );

}