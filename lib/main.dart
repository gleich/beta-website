import 'package:flutter/material.dart';

import './pages/index/index.dart';
import './pages/aboutMe/aboutMe.dart';
import './pages/cycling/cycling.dart';
import './pages/languages/languages.dart';
import './pages/openSource/openSource.dart';
import './pages/photography/photography.dart';
import './pages/projects/projects.dart';

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
