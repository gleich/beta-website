import 'package:flutter/material.dart';

import './../widgets/logo.dart';
import './../widgets/pageButton.dart';
import './../../languages/languages.dart';
import './../../projects/projects.dart';
import './../../aboutMe/aboutMe.dart';
import './../../photography/photography.dart';
import './../../openSource/openSource.dart';
import './../../cycling/cycling.dart';

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
              route: OpenSource(),
              pageName: "Open Source",
              leftPadding: 0,
              topPadding: 0,
              rightPadding: 0,
            ),
            PageButton(
              route: Photography(),
              pageName: "Photography",
              leftPadding: 0,
              topPadding: 30,
              rightPadding: 100,
            ),
            PageButton(
              route: Cycling(),
              pageName: "Cycling",
              leftPadding: 0,
              topPadding: 30,
              rightPadding: 0,
            )
          ],
        ),
        const Logo(),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            PageButton(
              route: AboutMe(),
              pageName: "About Me",
              leftPadding: 0,
              topPadding: 0,
              rightPadding: 0,
            ),
            PageButton(
              route: Projects(),
              pageName: "Projects",
              leftPadding: 100,
              topPadding: 30,
              rightPadding: 0,
            ),
            PageButton(
              route: Languages(),
              pageName: "Languages",
              leftPadding: 0,
              topPadding: 30,
              rightPadding: 0,
            ),
          ],
        )
      ],
    );
  }
}
