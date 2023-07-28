import 'package:flutter/material.dart';

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  fontFamily: 'Poppins',
  appBarTheme: const AppBarTheme(backgroundColor: Colors.black),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: Colors.teal,
  ),
  colorScheme: const ColorScheme.dark(
      outline: Colors.white,
      primary: Colors.black87,
      secondary: Colors.black45,
      tertiary: Colors.white,
      background: Colors.black),
);
