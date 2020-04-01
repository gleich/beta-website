import 'dart:math';

import 'package:flutter/material.dart';

import 'package:matt_gleich_github_io/provider/theme.dart';
import 'package:provider/provider.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _HorizontalView();
  }
}

class _HorizontalView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ThemeChanger _themeChanger =
        Provider.of<ThemeChanger>(context, listen: false);

    return Row(
      children: <Widget>[
        Transform.rotate(
          angle: -(pi / 30.0),
          child: IconButton(
            icon: Icon(Icons.brightness_3),
            onPressed: () {
              _themeChanger.activeTheme == ThemeMode.light
                  ? _themeChanger.changeActiveTheme(ThemeMode.dark)
                  : _themeChanger.changeActiveTheme(ThemeMode.light);
            },
          ),
        )
      ],
    );
  }
}
