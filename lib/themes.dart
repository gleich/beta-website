import 'package:flutter/material.dart';

class Themes {
  // Shared Values
  final _fontFamily = "Abel";
  TooltipThemeData _toolTipThemeData(Color primaryColor) => TooltipThemeData(
        waitDuration: const Duration(seconds: 1),
        height: double.minPositive + 5,
        textStyle: TextStyle(
          fontStyle: FontStyle.italic,
          color: primaryColor,
        ),
      );

  ThemeData get darkTheme => ThemeData(
        brightness: Brightness.dark,
        fontFamily: _fontFamily,
        backgroundColor: Colors.black,
        primaryColor: Colors.black,
        accentColor: Colors.white,
        tooltipTheme: _toolTipThemeData(Colors.black),
      );

  ThemeData get lightTheme => ThemeData(
        brightness: Brightness.light,
        fontFamily: _fontFamily,
        backgroundColor: Colors.white,
        primaryColor: Colors.white,
        accentColor: Colors.black,
        tooltipTheme: _toolTipThemeData(Colors.white),
      );
}
