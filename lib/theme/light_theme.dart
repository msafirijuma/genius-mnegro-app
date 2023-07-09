import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  fontFamily: 'Poppins',
  appBarTheme: const AppBarTheme(backgroundColor: Colors.teal),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: Colors.teal,
  ),
  colorScheme: ColorScheme.light(
      primary: Colors.teal,
      secondary: Colors.teal.shade400,
      tertiary: Colors.white,
      background: const Color(0xFFCCC2C2)),
);
