// Flutter imports
import 'package:flutter/material.dart';

class ThemeChanger with ChangeNotifier {
  ThemeMode activeTheme;

  ThemeChanger(this.activeTheme);

  changeActiveTheme(ThemeMode requestedTheme) {
    activeTheme = requestedTheme;
    notifyListeners();
  }
}
