import 'package:flutter/material.dart';

ThemeData darkMode = ThemeData(
  dividerTheme: const DividerThemeData(color: Colors.transparent),
  colorScheme: ColorScheme.dark(
    surface: Colors.grey.shade900,
    primary: Colors.grey.shade600,
    secondary: const Color.fromARGB(255, 78, 78, 78),
    tertiary: Colors.grey.shade800,
    inversePrimary: Colors.grey.shade300,
  ),
  useMaterial3: true,
);
