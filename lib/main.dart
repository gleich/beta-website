// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:provider/provider.dart';

// Project imports:
import 'package:matt_gleich_github_io/themes.dart';
import 'package:matt_gleich_github_io/provider/theme.dart';
import 'package:matt_gleich_github_io/routes/index/index.dart';
import 'package:matt_gleich_github_io/routes/404/404.dart';
import 'package:matt_gleich_github_io/routes/blog/blog.dart';
import 'package:matt_gleich_github_io/routes/aboutMe/aboutMe.dart';
import 'package:matt_gleich_github_io/routes/projects/projects.dart';
import 'package:matt_gleich_github_io/routes/photography/photography.dart';
import 'package:matt_gleich_github_io/routes/stats/stats.dart';

void main() => runApp(_MySite());

class _MySite extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ThemeChanger()),
      ],
      child: Consumer<ThemeChanger>(
        builder: (context, themeChanger, _) => MaterialApp(
          debugShowCheckedModeBanner: false,
          title: "// Matthew Gleich",
          theme: Themes().lightTheme,
          darkTheme: Themes().darkTheme,
          themeMode: Provider.of<ThemeChanger>(context).activeTheme,
          routes: {
            IndexRoute.routeName: (ctx) => IndexRoute(),
            BlogRoute.routeName: (ctx) => BlogRoute(),
            ProjectsRoute.routeName: (ctx) => ProjectsRoute(),
            AboutMeRoute.routeName: (ctx) => AboutMeRoute(),
            PhotographyRoute.routeName: (ctx) => PhotographyRoute(),
            StatsRoute.routeName: (ctx) => StatsRoute(),
          },
          onUnknownRoute: (_) => MaterialPageRoute(
            builder: (ctx) => Route404(),
          ),
        ),
      ),
    );
  }
}
