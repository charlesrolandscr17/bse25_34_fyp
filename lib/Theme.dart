import 'package:flutter/material.dart';

abstract class AppColors {
  static const primary = Color(0xFFDDA5F5);
  static const secondary = Color(0xFF79BAC0);
  static const tertiary = Color(0xFF616161);
  static const icons = Color(0xFFCCCCCC);
  static const white = Color(0xFFffffff);
  static const lightpurple = Color(0xFFDADBF8);
  static const text = Color(0xFFFFFFFF);
}

class MyTheme {
  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.grey.shade900,
    colorScheme: const ColorScheme.dark(),
  );

  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    colorScheme: const ColorScheme.light(),
  );
}
