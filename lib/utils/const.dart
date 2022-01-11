import 'package:flutter/material.dart';

class Constants {
  static String appName = "Slobbr";

  static Color lightBG = const Color(0xFFFFFFFF);
  static Color lightSurface = const Color(0xFFFFFFFF);
  static Color lightPrimary = const Color(0xFF57A773);
  static Color lightPrimaryVariant = const Color(0xFF57A773);
  static Color lightSecondary = const Color(0xFFFBFBF2);
  static Color lightSecondaryVariant = const Color(0xFFFBFBF2);
  static Color lightOnBG = const Color(0xFF000000);
  static Color lightOnSurface = const Color(0xFF000000);
  static Color lightOnPrimary = const Color(0xFF001B2E);
  static Color lightOnSecondary = const Color(0xFF001B2E);

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
    colorScheme: ColorScheme(
      brightness: Brightness.light,
      background: lightBG,
      surface: lightSurface,
      primary: lightPrimary,
      primaryVariant: lightPrimaryVariant,
      secondary: lightSecondary,
      secondaryVariant: lightSecondaryVariant,
      onBackground: lightOnBG,
      onSurface: lightOnSurface,
      onPrimary: lightOnPrimary,
      onSecondary: lightOnSecondary,
      error: Colors.red,
      onError: Colors.red
    ),
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