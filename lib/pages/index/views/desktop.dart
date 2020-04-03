import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

import 'package:matt_gleich_github_io/widgets/actionBar.dart';
import 'package:matt_gleich_github_io/pages/index/widgets/buttons.dart';
import 'package:matt_gleich_github_io/pages/index/widgets/subtitle.dart';

class IndexPageDesktopView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                AnimationConfiguration.synchronized(
                  child: SlideAnimation(
                    verticalOffset: -50,
                    duration: const Duration(seconds: 1),
                    child: FadeInAnimation(
                      duration: const Duration(seconds: 1),
                      child: Text(
                        "👋🏼 Hey I'm",
                        style: TextStyle(
                          fontSize: 50,
                        ),
                      ),
                    ),
                  ),
                ),
                const Text(
                  "Matthew Gleich",
                  style: TextStyle(
                    fontSize: 150,
                    decoration: TextDecoration.underline,
                  ),
                ),
                SubTitle(),
                ActionBar(),
              ],
            ),
          ),
          SizedBox(width: MediaQuery.of(context).size.width * 0.03),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
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
              )
            ],
          )
        ],
      ),
    );
  }
}
