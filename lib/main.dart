import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:matt_gleich_github_io/pages/index/index.dart';
import 'package:matt_gleich_github_io/pages/404/404.dart';
import 'package:matt_gleich_github_io/pages/blog/blog.dart';
import 'package:matt_gleich_github_io/pages/aboutMe/aboutMe.dart';
import 'package:matt_gleich_github_io/pages/projects/projects.dart';
import 'package:matt_gleich_github_io/themes.dart';
import 'package:matt_gleich_github_io/provider/theme.dart';

void main() => runApp(_MySite());

class _MySite extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ThemeChanger>(
      create: (_) => ThemeChanger(ThemeMode.system),
      child: _MySiteWithTheme(),
    );
  }
}

class _MySiteWithTheme extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeMode = Provider.of<ThemeChanger>(context);
    final themes = Themes();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "👨🏻‍💻 Matthew Gleich",
      theme: themes.lightTheme,
      darkTheme: themes.darkTheme,
      themeMode: themeMode.activeTheme,
      routes: {
        IndexPage.pageName: (ctx) => IndexPage(),
        BlogPage.pageName: (ctx) => BlogPage(),
        ProjectsPage.pageName: (ctx) => ProjectsPage(),
        AboutMePage.pageName: (ctx) => AboutMePage(),
      },
      onUnknownRoute: (_) => MaterialPageRoute(builder: (ctx) => Page404()),
    );
  }
}
