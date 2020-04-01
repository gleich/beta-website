import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

import 'package:matt_gleich_github_io/provider/theme.dart';
import 'package:matt_gleich_github_io/services/url.dart' as url;

class ActionBar extends StatelessWidget {
  final MainAxisAlignment mainAxisAlignment;
  final CrossAxisAlignment crossAxisAlignment;

  ActionBar({
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.crossAxisAlignment = CrossAxisAlignment.start,
  });

  @override
  Widget build(BuildContext context) {
    ThemeChanger _themeChanger = Provider.of<ThemeChanger>(context);

    return AnimationLimiter(
      child: Row(
        crossAxisAlignment: crossAxisAlignment,
        mainAxisAlignment: mainAxisAlignment,
        children: AnimationConfiguration.toStaggeredList(
          children: <Widget>[
            _ActionBarIcon(
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
            _ActionBarIcon(
              icon: MdiIcons.githubCircle,
              onTap: () => url.launchURL("https://github.com/Matt-Gleich"),
              toolTipMessage: "GitHub",
              index: 1,
            ),
            _ActionBarIcon(
              icon: MdiIcons.twitter,
              onTap: () => url.launchURL("https://twitter.com/GleichMatthew"),
              toolTipMessage: "Twitter",
              index: 2,
            ),
            _ActionBarIcon(
              icon: MdiIcons.linkedin,
              onTap: () => url.launchURL(
                  "https://www.linkedin.com/in/matthew-gleich-636618178/"),
              toolTipMessage: "Linkedin",
              index: 3,
            ),
            _ActionBarIcon(
              icon: MdiIcons.instagram,
              onTap: () =>
                  url.launchURL("https://www.instagram.com/gleichphotography/"),
              toolTipMessage: "Instagram",
              index: 4,
            ),
          ],
          duration: const Duration(seconds: 1),
          childAnimationBuilder: (widget) => SlideAnimation(
            verticalOffset: 80,
            child: FadeInAnimation(
              child: widget,
            ),
          ),
        ),
      ),
    );
  }
}

class _ActionBarIcon extends StatefulWidget {
  final IconData icon;
  final void Function() onTap;
  final String toolTipMessage;
  final int index;

  _ActionBarIcon({
    @required this.icon,
    @required this.onTap,
    @required this.toolTipMessage,
    @required this.index,
  });

  @override
  _ActionBarIconState createState() => _ActionBarIconState();
}

class _ActionBarIconState extends State<_ActionBarIcon> {
  bool _hovering = false;
  @override
  Widget build(BuildContext context) {
    double horizontalOffset = 40;
    double verticalOffset = MediaQuery.of(context).size.height * 0.035;
    Color backgroundColor = _hovering
        ? Theme.of(context).primaryColor
        : Theme.of(context).accentColor;
    Color iconColor = _hovering
        ? Theme.of(context).accentColor
        : Theme.of(context).primaryColor;
    return Padding(
      padding: widget.index != 0
          ? (widget.index % 2) == 0
              ? EdgeInsets.only(left: verticalOffset)
              : EdgeInsets.only(left: verticalOffset, top: horizontalOffset)
          : (widget.index % 2) == 0
              ? const EdgeInsets.only()
              : EdgeInsets.only(top: horizontalOffset),
      child: Tooltip(
        message: widget.toolTipMessage,
        child: GestureDetector(
          onTap: widget.onTap,
          child: MouseRegion(
            onEnter: (_) {
              setState(() {
                _hovering = true;
              });
            },
            onExit: (_) {
              setState(() {
                _hovering = false;
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
