// 🐦 Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart' as framework;

// 📦 Package imports:
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:provider/provider.dart';

// 🌎 Project imports:
import 'package:personal_site/provider/theme.dart';
import 'package:personal_site/services/url.dart' as url;
import 'package:personal_site/widgets/cursorChange.dart';

class ActionBar extends StatelessWidget {
  final MainAxisAlignment mainAxisAlignment;
  final CrossAxisAlignment crossAxisAlignment;

  ActionBar({
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.crossAxisAlignment = CrossAxisAlignment.start,
  });

  @override
  Widget build(framework.BuildContext context) {
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
                  ? '🌑 Dark Mode'
                  : '☀️ Light Mode',
              sidePadding: false,
            ),
            _ActionBarIcon(
              icon: MdiIcons.githubCircle,
              onTap: () => url.launchURL('https://github.com/Matt-Gleich'),
              toolTipMessage: '🐙 GitHub',
            ),
            _ActionBarIcon(
              icon: MdiIcons.twitter,
              onTap: () => url.launchURL('https://twitter.com/MattGleich'),
              toolTipMessage: '🐦 Twitter',
            ),
            _ActionBarIcon(
              icon: MdiIcons.linkedin,
              onTap: () =>
                  url.launchURL('https://www.linkedin.com/in/matthew-gleich'),
              toolTipMessage: '🔗 Linkedin',
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
  final bool sidePadding;

  _ActionBarIcon({
    @required this.icon,
    @required this.onTap,
    @required this.toolTipMessage,
    this.sidePadding = true,
  });

  @override
  _ActionBarIconState createState() => _ActionBarIconState();
}

class _ActionBarIconState extends State<_ActionBarIcon> {
  var _hovering = false;
  @override
  Widget build(framework.BuildContext context) {
    final backgroundColor = _hovering
        ? Theme.of(context).primaryColor
        : Theme.of(context).accentColor;
    final iconColor = _hovering
        ? Theme.of(context).accentColor
        : Theme.of(context).primaryColor;
    return Padding(
      padding: widget.sidePadding
          ? EdgeInsets.only(
              left: 30,
            )
          : const EdgeInsets.all(0),
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
      ).changeCursorOnHover,
    );
  }
}
