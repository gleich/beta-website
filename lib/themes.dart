import 'package:flutter/material.dart';

class Themes {
  // Shared Values
  final _fontFamily = "Abel";

  ThemeData get darkTheme => ThemeData(
        brightness: Brightness.dark,
        fontFamily: _fontFamily,
        backgroundColor: Colors.black,
        primaryColor: Colors.black,
        accentColor: Colors.white,
      );

  ThemeData get lightTheme => ThemeData(
        brightness: Brightness.light,
        fontFamily: _fontFamily,
        backgroundColor: Colors.white,
        primaryColor: Colors.white,
        accentColor: Colors.black,
      );
}
