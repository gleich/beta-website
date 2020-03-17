import 'package:flutter/material.dart';

import 'package:matt_gleich_github_io/pages/index/widgets/logo.dart';
import 'package:matt_gleich_github_io/pages/index/widgets/pageButton.dart';

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
            routeName: "/openSource",
            pageName: "Open Source",
            topPadding: 10,
          ),
          PageButton(
            routeName: "/photography",
            pageName: "Photography",
            topPadding: 10,
          ),
          PageButton(
            routeName: "/cycling",
            pageName: "Cycling",
            topPadding: 10,
          ),
          PageButton(
            routeName: "/aboutMe",
            pageName: "About Me",
            topPadding: 10,
          ),
          PageButton(
            routeName: "/projects",
            pageName: "Projects",
            topPadding: 10,
          ),
          PageButton(
            routeName: "/languages",
            pageName: "Languages",
            topPadding: 10,
          )
        ],
      ),
    );
  }
}
