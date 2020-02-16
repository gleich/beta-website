import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import './animations.dart';

class AppBarTitle extends StatelessWidget {
  const AppBarTitle({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        FadeIn(
          duration: Duration(milliseconds: 700),
          start: -130,
          stop: 0,
          delay: 4.5,
          child: Text(
            "Matthew",
            style: GoogleFonts.abel(
              fontSize: 25,
              letterSpacing: 5,
            ),
          ),
        ),
        FadeIn(
          duration: Duration(milliseconds: 700),
          start: -100,
          stop: 0,
          delay: 4.0,
          child: Text(
            " / ",
            style: GoogleFonts.abel(
              fontSize: 25,
              letterSpacing: 5,
              color: Colors.red,
            ),
          ),
        ),
        FadeIn(
          duration: Duration(milliseconds: 700),
          start: -100,
          stop: 0,
          delay: 3.5,
          child: Text(
            "Gleich",
            style: GoogleFonts.abel(
              fontSize: 25,
              letterSpacing: 5,
            ),
          ),
        ),
      ],
    );
  }
}
