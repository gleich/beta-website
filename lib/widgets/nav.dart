import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

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
    ThemeChanger _themeChanger = Provider.of<ThemeChanger>(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        _NavBarIcon(
          icon: _themeChanger.activeTheme == ThemeMode.light
              ? MdiIcons.moonWaxingCrescent
              : MdiIcons.whiteBalanceSunny,
          onTap: () {
            _themeChanger.activeTheme == ThemeMode.light
                ? _themeChanger.changeActiveTheme(ThemeMode.dark)
                : _themeChanger.changeActiveTheme(ThemeMode.light);
          },
          toolTipMessage: _themeChanger.activeTheme == ThemeMode.light
              ? "Dark Mode"
              : "Light Mode",
        ),
        SizedBox(
          width: 30,
        ),
      ],
    );
  }
}

class _NavBarIcon extends StatelessWidget {
  final IconData icon;
  final void Function() onTap;
  final String toolTipMessage;

  _NavBarIcon({
    @required this.icon,
    @required this.onTap,
    @required this.toolTipMessage,
  });

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      waitDuration: const Duration(seconds: 1),
      margin: const EdgeInsets.only(top: 15),
      height: double.minPositive + 5,
      textStyle: TextStyle(
        fontStyle: FontStyle.italic,
        color: Theme.of(context).primaryColor,
      ),
      message: toolTipMessage,
      child: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: GestureDetector(
          onTap: onTap,
          child: Container(
            height: 45,
            width: 45,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Theme.of(context).accentColor,
            ),
            child: Icon(
              icon,
              color: Theme.of(context).primaryColor,
            ),
          ),
        ),
      ),
    );
  }
}
