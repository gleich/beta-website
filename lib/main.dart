import 'package:flutter/material.dart';

import 'package:matt_gleich_github_io/pages/index/index.dart';
import 'package:matt_gleich_github_io/pages/aboutMe/aboutMe.dart';
import 'package:matt_gleich_github_io/pages/cycling/cycling.dart';
import 'package:matt_gleich_github_io/pages/languages/languages.dart';
import 'package:matt_gleich_github_io/pages/openSource/openSource.dart';
import 'package:matt_gleich_github_io/pages/photography/photography.dart';
import 'package:matt_gleich_github_io/pages/projects/projects.dart';

void main() => runApp(_MySite());

class _MySite extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "👨🏻‍💻 Matthew Gleich",
      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: "Abel",
        accentColor: Colors.red,
      ),
      routes: {
        IndexPage.pageName: (ctx) => IndexPage(),
        AboutMePage.pageName: (ctx) => AboutMePage(),
        CyclingPage.pageName: (ctx) => CyclingPage(),
        LanguagesPage.pageName: (ctx) => LanguagesPage(),
        OpenSourcePage.pageName: (ctx) => OpenSourcePage(),
        PhotographyPage.pageName: (ctx) => PhotographyPage(),
        ProjectsPage.pageName: (ctx) => ProjectsPage(),
      },
    );
  }
}
