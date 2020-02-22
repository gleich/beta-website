import 'package:flutter/material.dart';

import './pages/index/index.dart';

void main() => runApp(_MySite());

class _MySite extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "👨🏻‍💻 Matthew Gleich",
      theme: ThemeData.dark(),
      home: HomePage(),
    );
  }
}
