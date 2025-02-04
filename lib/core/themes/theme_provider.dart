import 'package:chat_app/core/themes/dark_mode.dart';
import 'package:chat_app/core/themes/light_mode.dart';
import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  late ThemeData _theme;

  ThemeProvider() {
    _theme = lightMode;
  }

  ThemeData get theme => _theme;

  void toggleTheme() {
    _theme = _theme == lightMode ? darkMode : lightMode;
    notifyListeners();
  }

  bool isDarkMode() => _theme == darkMode;
}
