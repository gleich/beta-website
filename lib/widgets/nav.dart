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

class _NavBarIcon extends StatefulWidget {
  final IconData icon;
  final void Function() onTap;
  final String toolTipMessage;
  final int index;

  _NavBarIcon({
    @required this.icon,
    @required this.onTap,
    @required this.toolTipMessage,
    @required this.index,
  });

  @override
  __NavBarIconState createState() => __NavBarIconState();
}

class __NavBarIconState extends State<_NavBarIcon> {
  bool hovering = false;
  @override
  Widget build(BuildContext context) {
    const verticalOffset = 70.0;
    Color backgroundColor = hovering
        ? Theme.of(context).primaryColor
        : Theme.of(context).accentColor;
    Color iconColor = hovering
        ? Theme.of(context).accentColor
        : Theme.of(context).primaryColor;
    return Padding(
      padding: widget.index != 0
          ? (widget.index % 2) == 0
              ? const EdgeInsets.only(top: 30)
              : const EdgeInsets.only(top: 30, right: verticalOffset)
          : (widget.index % 2) == 0
              ? const EdgeInsets.only()
              : const EdgeInsets.only(right: verticalOffset),
      child: Tooltip(
        waitDuration: const Duration(seconds: 1),
        height: double.minPositive + 5,
        textStyle: TextStyle(
          fontStyle: FontStyle.italic,
          color: Theme.of(context).primaryColor,
        ),
        message: widget.toolTipMessage,
        child: GestureDetector(
          onTap: widget.onTap,
          child: MouseRegion(
            onEnter: (details) {
              setState(() {
                hovering = true;
              });
            },
            onExit: (_) {
              setState(() {
                hovering = false;
              });
            },
            child: Container(
              height: 45,
              width: 45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: backgroundColor,
              ),
              child: Icon(
                widget.icon,
                color: iconColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
