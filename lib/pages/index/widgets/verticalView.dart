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
            topPadding: 10,
          ),
          PageButton(
            route: Photography(),
            pageName: "Photography",
            topPadding: 10,
          ),
          PageButton(
            route: Cycling(),
            pageName: "Cycling",
            topPadding: 10,
          ),
          PageButton(
            route: AboutMe(),
            pageName: "About Me",
            topPadding: 10,
          ),
          PageButton(
            route: Projects(),
            pageName: "Projects",
            topPadding: 10,
          ),
          PageButton(
            route: Languages(),
            pageName: "Languages",
            topPadding: 10,
          )
        ],
      ),
    );
  }
}
