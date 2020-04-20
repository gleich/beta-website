// Flutter imports:
import 'package:flutter/material.dart';

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
  bool _hovering = false;
  @override
  Widget build(BuildContext context) {
    Color backgroundColor = _hovering
        ? Theme.of(context).primaryColor
        : Theme.of(context).accentColor;
    Color textColor = _hovering
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
        child: Text(
          widget.text,
          style: TextStyle(
            color: textColor,
            fontSize: widget.fontSize,
          ),
        ),
      ),
    );
  }
}
