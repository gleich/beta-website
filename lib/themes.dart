import 'package:flutter/material.dart';

class Themes {
  // Shared Values
  final _fontFamily = "Abel";
  TooltipThemeData _toolTipThemeData(Color primaryColor) => TooltipThemeData(
        waitDuration: const Duration(milliseconds: 100),
        height: double.minPositive + 5,
        textStyle: TextStyle(
          fontSize: 15,
          color: primaryColor,
        ),
      );
  TextTheme _textTheme(Color accentColor) => TextTheme(
        headline1: TextStyle(
          fontFamily: 'Tomorrow',
          fontSize: 25,
          color: accentColor,
        ),
        // Desktop headline
        headline2: TextStyle(
          fontSize: 100,
          fontFamily: 'Tomorrow',
          decoration: TextDecoration.underline,
          color: accentColor,
        ),
        // Mobile headline
        headline3: TextStyle(
          fontSize: 60,
          fontFamily: 'Tomorrow',
          decoration: TextDecoration.underline,
          color: accentColor,
        ),
        // Desktop bodyText
        bodyText1: TextStyle(
          color: accentColor,
          fontSize: 25,
        ),
        // Mobile bodyText
        bodyText2: TextStyle(
          color: accentColor,
          fontSize: 20,
        ),
        // Mobile subtitle
        subtitle1: TextStyle(
          color: accentColor,
          fontSize: 16,
        ),
      );

  ThemeData get darkTheme => ThemeData(
        brightness: Brightness.dark,
        fontFamily: _fontFamily,
        scaffoldBackgroundColor: Colors.black,
        primaryColor: Colors.black,
        accentColor: Colors.white,
        tooltipTheme: _toolTipThemeData(Colors.black),
        textTheme: _textTheme(Colors.white),
      );

  ThemeData get lightTheme => ThemeData(
        brightness: Brightness.light,
        fontFamily: _fontFamily,
        scaffoldBackgroundColor: Colors.white,
        primaryColor: Colors.white,
        accentColor: Colors.black,
        tooltipTheme: _toolTipThemeData(Colors.white),
        textTheme: _textTheme(Colors.black),
      );
}
