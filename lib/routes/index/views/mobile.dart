import 'package:flutter/material.dart';

import 'package:matt_gleich_github_io/widgets/actionBar.dart';
import 'package:matt_gleich_github_io/routes/index/widgets/buttons.dart';
import 'package:matt_gleich_github_io/routes/index/widgets/text.dart';

class IndexPageMobileView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        shrinkWrap: true,
        children: <Widget>[
          const SizedBox(
            height: 30,
          ),
          Header(
            fontSize: 35,
            center: true,
          ),
          Text(
            "Matthew\nGleich",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 50,
              decoration: TextDecoration.underline,
            ),
          ),
          SubTitle(
            fontSize: 24,
            center: true,
          ),
          ActionBar(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
          ),
          const SizedBox(height: 30),
          PageButton(
            pageName: "🖊️ Blog",
            pageRoutePath: "/blog",
          ),
          PageButton(
            pageName: "🛠️ Projects",
            pageRoutePath: "/projects",
          ),
          PageButton(
            pageName: "👨🏻‍💻 About Me",
            pageRoutePath: "/aboutMe",
          ),
          PageButton(
            pageName: "📷 Photography",
            pageRoutePath: "/photography",
          ),
          const SizedBox(height: 60),
        ],
      ),
    );
  }
}
