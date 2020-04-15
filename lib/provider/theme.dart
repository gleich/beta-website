// Flutter imports
import 'package:flutter/material.dart';

class ThemeChanger with ChangeNotifier {
  ThemeMode activeTheme = ThemeMode.system;

  ThemeChanger();

  changeActiveTheme(ThemeMode requestedTheme) {
    activeTheme = requestedTheme;
    notifyListeners();
  }
}
