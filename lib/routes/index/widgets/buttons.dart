import 'package:flutter/material.dart';

import 'package:personal_site/widgets/cursorChange.dart';

class PageButtons {
  static const buttons = <Widget>[
    PageButton(
      pageName: '🖊️ Blog',
      pageRoutePath: '/blog',
    ),
    PageButton(
      pageName: "🛠️ Projects",
      pageRoutePath: '/projects',
    ),
    PageButton(
      pageName: '🚀 Skills',
      pageRoutePath: '/skills',
    ),
    PageButton(
      pageName: '👨🏻‍💻 About Me',
      pageRoutePath: '/aboutMe',
    ),
    PageButton(
      pageName: '📷 Photography',
      pageRoutePath: '/photography',
    ),
    PageButton(
      pageName: '📊 Stats',
      pageRoutePath: '/stats',
    )
  ];
}

class PageButton extends StatefulWidget {
  final String pageName;
  final String pageRoutePath;

  const PageButton({
    @required this.pageName,
    @required this.pageRoutePath,
  });

  @override
  _PageButtonState createState() => _PageButtonState();
}

class _PageButtonState extends State<PageButton> {
  var _hovering = false;
  @override
  Widget build(BuildContext context) {
    final backgroundColor = _hovering
        ? Theme.of(context).primaryColor
        : Theme.of(context).accentColor;
    final textColor = _hovering
        ? Theme.of(context).accentColor
        : Theme.of(context).primaryColor;
    return MouseRegion(
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
      child: RaisedButton(
        color: backgroundColor,
        splashColor: Colors.transparent,
        hoverColor: Colors.transparent,
        highlightColor: Colors.transparent,
        elevation: 2,
        hoverElevation: 5,
        onPressed: () => Navigator.pushNamed(
          context,
          widget.pageRoutePath,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Text(
          widget.pageName,
          style: TextStyle(
            color: textColor,
            fontSize: 30,
          ),
        ),
      ),
    ).changeCursorOnHover;
  }
}
