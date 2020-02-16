import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import './pages/index/index.dart';

void main() => runApp(_MyApp());

class _MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Matthew Gleich",
      theme: ThemeData.dark(),
      home: _MySite(),
    );
  }
}

class _MySite extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return HomePage();
  }
}
