import 'package:flutter/material.dart';

class Themes {
  // Shared Values
  final _fontFamily = "Abel";
  final _hoverColor = Colors.red;

  ThemeData get darkTheme => ThemeData(
        brightness: Brightness.dark,
        fontFamily: _fontFamily,
        backgroundColor: Colors.black,
        primaryColor: Colors.black,
        accentColor: Colors.white,
        hoverColor: _hoverColor,
      );

  ThemeData get lightTheme => ThemeData(
        brightness: Brightness.light,
        fontFamily: _fontFamily,
        backgroundColor: Colors.white,
        primaryColor: Colors.white,
        accentColor: Colors.black,
        hoverColor: _hoverColor,
      );
}
