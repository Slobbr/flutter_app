import 'package:flutter/material.dart';

class Constants {
  static String appName = "Slobbr";

  static Color lightPrimary = const Color(0xfffcfcff);
  static Color lightAccent = const Color(0xFF001B2E);
  static Color lightBG = const Color(0xFFFBFBF2);

  static Color darkBG = const Color(0xFF000000);
  static Color darkSurface = const Color(0xFF262626);
  static Color darkPrimary = const Color(0xFF57A773);
  static Color darkPrimaryVariant = const Color(0xFF57A773);
  static Color darkSecondary = const Color(0xFFFBFBF2);
  static Color darkSecondaryVariant = const Color(0xFFFBFBF2);
  static Color darkOnBG = const Color(0xFFFBFBF2);
  static Color darkOnSurface = const Color(0xFFFBFBF2);
  static Color darkOnPrimary = const Color(0xFF001B2E);
  static Color darkOnSecondary = const Color(0xFF001B2E);


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

  static ThemeData darkTheme = ThemeData(
    fontFamily: 'ProductSans',
    colorScheme: ColorScheme(
      brightness: Brightness.dark,
      background: darkBG,
      surface: darkSurface,
      primary: darkPrimary,
      primaryVariant: darkPrimaryVariant,
      secondary: darkSecondary,
      secondaryVariant: darkSecondaryVariant,
      onBackground: darkOnBG,
      onSurface: darkOnSurface,
      onPrimary: darkOnPrimary,
      onSecondary: darkOnSecondary,
      error: Colors.red,
      onError: Colors.red
    ),
    scaffoldBackgroundColor: darkBG,
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