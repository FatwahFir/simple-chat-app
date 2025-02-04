import 'package:chat_app/core/themes/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

extension ContextExt on BuildContext {
  ThemeData get theme => Theme.of(this);

  MediaQueryData get mediaQuery => MediaQuery.of(this);

  Size get size => mediaQuery.size;
  double get height => size.height;
  double get width => size.width;
  Color get primary => theme.colorScheme.primary;
  Color get secondary => theme.colorScheme.secondary;
  Color get backgroundColor => theme.colorScheme.surface;
  Color get tertiary => theme.colorScheme.tertiary;
  Color get inversPrimary => theme.colorScheme.inversePrimary;

  ThemeProvider get themeProvider => read<ThemeProvider>();
  ThemeData? get themeData => themeProvider.theme;
  bool get isDarkmode => themeProvider.isDarkMode();
}
