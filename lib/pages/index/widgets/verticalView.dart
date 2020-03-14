import 'package:flutter/material.dart';

import './../widgets/logo.dart';
import './../widgets/pageButton.dart';
import './../../languages/languages.dart';
import './../../projects/projects.dart';
import './../../aboutMe/aboutMe.dart';
import './../../photography/photography.dart';
import './../../openSource/openSource.dart';
import './../../cycling/cycling.dart';

class VerticalView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          const Logo(),
          PageButton(
            route: OpenSource(),
            pageName: "Open Source",
            leftPadding: 0,
            topPadding: 10,
            rightPadding: 0,
          ),
          PageButton(
            route: Photography(),
            pageName: "Photography",
            leftPadding: 0,
            topPadding: 10,
            rightPadding: 0,
          ),
          PageButton(
            route: Cycling(),
            pageName: "Cycling",
            leftPadding: 0,
            topPadding: 10,
            rightPadding: 0,
          ),
          PageButton(
            route: AboutMe(),
            pageName: "About Me",
            leftPadding: 0,
            topPadding: 10,
            rightPadding: 0,
          ),
          PageButton(
            route: Projects(),
            pageName: "Projects",
            leftPadding: 0,
            topPadding: 10,
            rightPadding: 0,
          ),
          PageButton(
            route: Languages(),
            pageName: "Languages",
            leftPadding: 0,
            topPadding: 10,
            rightPadding: 0,
          )
        ],
      ),
    );
  }
}
