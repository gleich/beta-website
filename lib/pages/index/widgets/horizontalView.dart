import 'package:flutter/material.dart';

import './../widgets/logo.dart';
import './../widgets/pageButton.dart';

class HorizontalView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            PageButton(
              routeName: "/openSource",
              pageName: "Open Source",
            ),
            PageButton(
              routeName: "/photography",
              pageName: "Photography",
              topPadding: 30,
              rightPadding: 100,
            ),
            PageButton(
              routeName: "/cycling",
              pageName: "Cycling",
              topPadding: 30,
            )
          ],
        ),
        const Logo(),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            PageButton(
              routeName: "/aboutMe",
              pageName: "About Me",
            ),
            PageButton(
              routeName: "/projects",
              pageName: "Projects",
              leftPadding: 100,
              topPadding: 30,
            ),
            PageButton(
              routeName: "/languages",
              pageName: "Languages",
              topPadding: 30,
            ),
          ],
        )
      ],
    );
  }
}
