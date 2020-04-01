import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'package:matt_gleich_github_io/provider/theme.dart';
import 'package:matt_gleich_github_io/services/url.dart' as url;

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ThemeChanger _themeChanger = Provider.of<ThemeChanger>(context);

    return Align(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
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
            index: 0,
          ),
          _NavBarIcon(
            icon: MdiIcons.githubCircle,
            onTap: () => url.launchURL("https://github.com/Matt-Gleich"),
            toolTipMessage: "GitHub",
            index: 1,
          ),
          _NavBarIcon(
            icon: MdiIcons.twitter,
            onTap: () => url.launchURL("https://twitter.com/GleichMatthew"),
            toolTipMessage: "Twitter",
            index: 2,
          ),
          _NavBarIcon(
            icon: MdiIcons.linkedin,
            onTap: () => url.launchURL(
                "https://www.linkedin.com/in/matthew-gleich-636618178/"),
            toolTipMessage: "Linkedin",
            index: 3,
          ),
          _NavBarIcon(
            icon: MdiIcons.instagram,
            onTap: () =>
                url.launchURL("https://www.instagram.com/gleichphotography/"),
            toolTipMessage: "Instagram",
            index: 4,
          ),
        ],
      ),
    );
  }
}

class _NavBarIcon extends StatelessWidget {
  final IconData icon;
  final void Function() onTap;
  final String toolTipMessage;
  final int index;

  const _NavBarIcon({
    @required this.icon,
    @required this.onTap,
    @required this.toolTipMessage,
    @required this.index,
  });

  @override
  Widget build(BuildContext context) {
    const verticalOffset = 70.0;
    var backgroundColor = Theme.of(context).accentColor;
    return Padding(
      padding: index != 0
          ? (index % 2) == 0
              ? const EdgeInsets.only(top: 30)
              : const EdgeInsets.only(top: 30, right: verticalOffset)
          : (index % 2) == 0
              ? const EdgeInsets.only()
              : const EdgeInsets.only(right: verticalOffset),
      child: Tooltip(
        waitDuration: const Duration(seconds: 1),
        height: double.minPositive + 5,
        textStyle: TextStyle(
          fontStyle: FontStyle.italic,
          color: Theme.of(context).primaryColor,
        ),
        message: toolTipMessage,
        child: GestureDetector(
          onTap: onTap,
          child: Container(
            height: 45,
            width: 45,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: backgroundColor,
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
