// 🐦 Flutter imports:
import 'package:flutter/material.dart';

class ThemeChanger with ChangeNotifier {
  ThemeMode activeTheme;

  final context;

  ThemeChanger(this.context) {
    // Thanks @Cal-Hagner! Line taken from https://github.com/Cal-Hagner/personal-site/blob/master/lib/provider/themeChanger.dart#L13
    activeTheme = MediaQuery.platformBrightnessOf(context) == Brightness.dark
        ? ThemeMode.dark
        : ThemeMode.light;
  }

  changeActiveTheme(ThemeMode requestedTheme) {
    activeTheme = requestedTheme;
    notifyListeners();
  }
}
