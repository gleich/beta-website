import 'package:flutter/material.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Matthew Gleich - About Me"),
        centerTitle: true,
      ),
    );
  }
}
