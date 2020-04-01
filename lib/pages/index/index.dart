import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

import 'package:matt_gleich_github_io/widgets/actionBar.dart';

class IndexPage extends StatelessWidget {
  static const pageName = "/";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
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
                Text(
                  "Matthew Gleich",
                  style: TextStyle(
                    fontSize: 150,
                    decoration: TextDecoration.underline,
                  ),
                ),
                Text(
                  "${DateTime.now().year - 2004} year old maker of things",
                  style: TextStyle(
                    fontSize: 50,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                ActionBar(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
