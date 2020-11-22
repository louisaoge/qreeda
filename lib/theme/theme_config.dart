import 'package:flutter/material.dart';

class ThemeConfig {
  static Color lightPrimary = Colors.red[900];
  static Color darkPrimary = Colors.red[900];
  static Color lightAccent = Color.fromRGBO(242, 105, 38, 0.9);
  static Color darkAccent = Color.fromRGBO(242, 105, 38, 0.9);
  static Color lightBG = Colors.white;
  static Color darkBG = Color(0xff121212);

  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    backgroundColor: lightBG,
    primaryColor: lightPrimary,
    accentColor: lightAccent,
    cursorColor: lightAccent,
    scaffoldBackgroundColor: lightBG,
    fontFamily: 'Futura',
    appBarTheme: AppBarTheme(
      textTheme: ThemeData().textTheme.copyWith(
            headline6: TextStyle(
              color: Colors.white,
              fontFamily: 'Futura',
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
      elevation: 0.0,
    ),
    primaryTextTheme: TextTheme(
      headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
      headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
      bodyText1: TextStyle(
        fontSize: 16.0
      ),
    ),
    snackBarTheme: SnackBarThemeData(
      backgroundColor: Colors.green[200],
      contentTextStyle: TextStyle(
        color: Colors.black87,
        fontFamily: "Futura",
      ),
    ),
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    backgroundColor: darkBG,
    primaryColor: darkPrimary,
    accentColor: darkAccent,
    scaffoldBackgroundColor: darkBG,
    cursorColor: darkAccent,
    fontFamily: 'Futura',
    appBarTheme: AppBarTheme(
      textTheme: ThemeData().textTheme.copyWith(
            headline6: TextStyle(
              fontFamily: 'Futura',
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
      elevation: 0.0,
    ),
    snackBarTheme: SnackBarThemeData(
      backgroundColor: Colors.green[200],
      contentTextStyle: TextStyle(
        color: Colors.black87,
        fontFamily: "Futura",
      ),
    ),
  );
}
