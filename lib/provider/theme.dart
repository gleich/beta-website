// 🐦 Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class ThemeChanger with ChangeNotifier {
  ThemeMode activeTheme;

  final context;

  ThemeChanger(this.context) {
    activeTheme =
        SchedulerBinding.instance.window.platformBrightness == Brightness.dark
            ? ThemeMode.dark
            : ThemeMode.light;
  }

  changeActiveTheme(ThemeMode requestedTheme) {
    activeTheme = requestedTheme;
    notifyListeners();
  }
}
