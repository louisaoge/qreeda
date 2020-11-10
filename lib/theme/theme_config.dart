import 'package:flutter/material.dart';

class ThemeConfig {
  static Color lightPrimary = Colors.red[900];
  static Color darkPrimary = Colors.red[900];
  static Color lightAccent = Color.fromRGBO(242,105,38 ,0.9);
  static Color darkAccent = Color.fromRGBO(242,105,38 ,0.9);
  static Color lightBG = Colors.white;
  static Color darkBG = Color(0xff121212);

  static ThemeData lightTheme = ThemeData(
    backgroundColor: lightBG,
    primaryColor: lightPrimary,
    accentColor: lightAccent,
    cursorColor: lightAccent,
    scaffoldBackgroundColor: lightBG,
    appBarTheme: AppBarTheme(
      textTheme: ThemeData().textTheme.copyWith(
            headline6: TextStyle(
              color: Colors.white,
              fontFamily: 'Lato',
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
      elevation: 0.0,
    ),
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    backgroundColor: darkBG,
    primaryColor: darkPrimary,
    accentColor: darkAccent,
    scaffoldBackgroundColor: darkBG,
    cursorColor: darkAccent,
    appBarTheme: AppBarTheme(
      textTheme: ThemeData().textTheme.copyWith(
            headline6: TextStyle(
              fontFamily: 'Lato',
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
      elevation: 0.0,
    ),
  );
}
