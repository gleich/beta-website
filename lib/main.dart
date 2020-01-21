import 'package:flutter/material.dart';

import './pages/index.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Matthew Gleich",
      theme: ThemeData(fontFamily: "SourceSansPro"),
      home: MySite(),
    );
  }
}

class MySite extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return HomePage();
  }
}
