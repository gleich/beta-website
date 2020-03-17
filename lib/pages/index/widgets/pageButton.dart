import 'package:flutter/material.dart';

class PageButton extends StatelessWidget {
  final String routeName;
  final String pageName;
  final double leftPadding;
  final double topPadding;
  final double rightPadding;

  PageButton({
    @required this.routeName,
    @required this.pageName,
    this.leftPadding = 0,
    this.topPadding = 0,
    this.rightPadding = 0,
  });

  final Color textColor = Color.fromRGBO(144, 36, 27, 1);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        right: rightPadding,
        left: leftPadding,
        top: topPadding,
      ),
      child: ButtonTheme(
        height: 100,
        minWidth: 200,
        child: RaisedButton(
          onPressed: () => Navigator.pushReplacementNamed(context, routeName),
          child: Text(
            pageName,
            style: TextStyle(
              fontSize: 40,
              color: textColor,
            ),
          ),
          color: Colors.black,
          hoverElevation: 10,
          hoverColor: Color.fromRGBO(55, 55, 55, 1),
          splashColor: textColor,
        ),
      ),
    );
  }
}
