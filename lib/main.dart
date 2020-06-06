// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:provider/provider.dart';

// 🌎 Project imports:
import 'package:personal_site/routes/skills/skills.dart';
import 'package:personal_site/themes.dart';
import 'package:personal_site/provider/theme.dart';
import 'package:personal_site/routes/index/index.dart';
import 'package:personal_site/routes/404/404.dart';
import 'package:personal_site/routes/blog/blog.dart';
import 'package:personal_site/routes/aboutMe/aboutMe.dart';
import 'package:personal_site/routes/projects/projects.dart';
import 'package:personal_site/routes/photography/photography.dart';
import 'package:personal_site/routes/stats/stats.dart';

void main() => runApp(_MySite());

class _MySite extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ThemeChanger(context)),
      ],
      child: Consumer<ThemeChanger>(
        builder: (context, themeChanger, _) => MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Matthew Gleich',
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
            SkillsRoute.routeName: (ctx) => SkillsRoute(),
          },
          onUnknownRoute: (_) => MaterialPageRoute(
            builder: (ctx) => Route404(),
          ),
        ),
      ),
    );
  }
}
