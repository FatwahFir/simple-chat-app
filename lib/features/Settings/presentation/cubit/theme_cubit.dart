import 'package:bloc/bloc.dart';
import 'package:chat_app/core/themes/dark_mode.dart';
import 'package:chat_app/core/themes/light_mode.dart';
import 'package:flutter/material.dart';

class ThemeCubit extends Cubit<ThemeData> {
  ThemeCubit() : super(lightMode);

  void toggleTheme() {
    emit(state.brightness == Brightness.light ? darkMode : lightMode);
  }
}
