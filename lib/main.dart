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
      initialRoute: "/",
      routes: {
        "/": (ctx) => Index(),
        "/aboutMe": (ctx) => AboutMe(),
        "/cycling": (ctx) => Cycling(),
        "/languages": (ctx) => Languages(),
        "/openSource": (ctx) => OpenSource(),
        "/photography": (ctx) => Photography(),
        "/projects": (ctx) => Projects(),
      },
    );
  }
}
