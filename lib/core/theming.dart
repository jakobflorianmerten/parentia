import 'package:flutter/material.dart';

final darkTheme = ThemeData(
  fontFamily: 'Montserrat',
  colorScheme: ColorScheme(
    brightness: Brightness.dark,
    primary: Color(0xFFD5566E),
    onPrimary: Colors.white,
    secondary: Color(0xFF46922D),
    tertiary: Color(0xFFB4A936),
    onSecondary: Colors.white,
    onTertiary: Colors.white,
    error: Color(0xFFAF1919),
    onError: Colors.white,
    surface: Color(0xFF16171B),
    onSurface: Colors.white,
    primaryContainer: Color(0xFF1E1F27),
    onPrimaryContainer: Colors.white,
  ),
  textTheme: TextTheme(
    displayLarge: TextStyle(fontSize: 64, fontFamily: 'Montserrat', fontWeight: FontWeight.w500),
    displayMedium: TextStyle(
      fontSize: 16,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w500,
    ),
    displaySmall: TextStyle(fontSize: 12, fontFamily: 'Montserrat'),
    headlineSmall: TextStyle(
      fontSize: 24,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    ),
    headlineMedium: TextStyle(
      fontSize: 32,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    ),

    headlineLarge: TextStyle(
      fontSize: 48,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w500,
    ),
  ),
  buttonTheme: ButtonThemeData(
    colorScheme: ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xFFD5566E),
      onPrimary: Colors.white,
      secondary: Colors.white,
      onSecondary: Color(0xFF16171B),
      error: Colors.transparent,
      onError: Colors.transparent,
      surface: Colors.transparent,
      onSurface: Colors.transparent,
    ),
  ),
);
