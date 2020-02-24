import 'package:flutter/material.dart';

// Page only widgets
import './../widgets/logo.dart';
import './../widgets/pageButton.dart';

// Global App widgets
import './../../languages/languages.dart';
import './../../projects/projects.dart';
import './../../aboutMe/aboutMe.dart';
import './../../photography/photography.dart';
import './../../openSource/openSource.dart';
import './../../cycling/cycling.dart';
import './../../../widgets/animations.dart';

class VerticalView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          const Logo(),
          FadeIn(
            delay: 3,
            start: -130,
            stop: 0,
            duration: const Duration(milliseconds: 700),
            child: PageButton(
              route: OpenSource(),
              pageName: "Open Source",
              leftPadding: 0,
              topPadding: 0,
              rightPadding: 0,
            ),
          ),
          FadeIn(
            delay: 3,
            start: 130,
            stop: 0,
            duration: const Duration(milliseconds: 700),
            child: PageButton(
              route: Photography(),
              pageName: "Photography",
              leftPadding: 0,
              topPadding: 10,
              rightPadding: 0,
            ),
          ),
          FadeIn(
            delay: 3,
            start: -130,
            stop: 0,
            duration: const Duration(milliseconds: 700),
            child: PageButton(
              route: Cycling(),
              pageName: "Cycling",
              leftPadding: 0,
              topPadding: 10,
              rightPadding: 0,
            ),
          ),
          FadeIn(
            delay: 3,
            start: 130,
            stop: 0,
            duration: const Duration(milliseconds: 700),
            child: PageButton(
              route: AboutMe(),
              pageName: "About Me",
              leftPadding: 0,
              topPadding: 10,
              rightPadding: 0,
            ),
          ),
          FadeIn(
            delay: 3,
            start: -130,
            stop: 0,
            duration: const Duration(milliseconds: 700),
            child: PageButton(
              route: Projects(),
              pageName: "Projects",
              leftPadding: 0,
              topPadding: 10,
              rightPadding: 0,
            ),
          ),
          FadeIn(
            delay: 3,
            start: 130,
            stop: 0,
            duration: const Duration(milliseconds: 700),
            child: PageButton(
              route: Languages(),
              pageName: "Languages",
              leftPadding: 0,
              topPadding: 10,
              rightPadding: 0,
            ),
          )
        ],
      ),
    );
  }
}
