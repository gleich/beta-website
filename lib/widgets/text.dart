import 'package:flutter/material.dart';

class PageTitleDesktop extends StatelessWidget {
  final String emoji;
  final String name;

  PageTitleDesktop(
    this.emoji,
    this.name,
  );

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Text(
          '$emoji ',
          style: TextStyle(
            fontSize: 100,
          ),
        ),
        Text(
          name,
          style: Theme.of(context).textTheme.headline2,
        )
      ],
    );
  }
}

class PageTitleMobile extends StatelessWidget {
  final String emoji;
  final String name;

  PageTitleMobile(
    this.emoji,
    this.name,
  );

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Text(
          '$emoji ',
          style: TextStyle(
            fontSize: 60,
          ),
        ),
        Text(
          name,
          style: Theme.of(context).textTheme.headline3,
        )
      ],
    );
  }
}
