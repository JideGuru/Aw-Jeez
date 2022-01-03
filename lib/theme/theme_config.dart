import 'package:flutter/material.dart';

class ThemeConfig {
  static Color lightPrimary = Colors.white;
  static Color darkPrimary = const Color(0xff1f1f1f);
  static Color lightAccent = const Color(0xff06d6a7);
  static Color darkAccent = const Color(0xff06d6a7);
  static Color lightBG = Colors.white;
  static Color darkBG = const Color(0xff121212);

  static ThemeData lightTheme = ThemeData(
    backgroundColor: lightBG,
    primaryColor: lightPrimary,
    scaffoldBackgroundColor: lightBG,
    appBarTheme: const AppBarTheme(elevation: 0),
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    backgroundColor: darkBG,
    primaryColor: darkPrimary,
    scaffoldBackgroundColor: darkBG,
    appBarTheme: const AppBarTheme(elevation: 0),
  );

  static BoxShadow cardShadow = BoxShadow(
    color: Colors.grey[300]!.withOpacity(0.8),
    blurRadius: 8.0,
    spreadRadius: 0.0,
    offset: const Offset(0.0, 2.0),
  );
}
