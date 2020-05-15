// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import 'package:personal_site/widgets/cursorChange.dart';

class ReflectingRaisedButton extends StatefulWidget {
  final void Function() onPressed;
  final String text;
  final double fontSize;

  ReflectingRaisedButton({
    @required this.onPressed,
    @required this.text,
    @required this.fontSize,
  });

  @override
  _ReflectingRaisedButtonState createState() => _ReflectingRaisedButtonState();
}

class _ReflectingRaisedButtonState extends State<ReflectingRaisedButton> {
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
        onPressed: widget.onPressed,
        splashColor: Colors.transparent,
        hoverColor: Colors.transparent,
        highlightColor: Colors.transparent,
        child: Text(
          widget.text,
          style: TextStyle(
            color: textColor,
            fontSize: widget.fontSize,
          ),
        ),
      ),
    ).changeCursorOnHover;
  }
}
