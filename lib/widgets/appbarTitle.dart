import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import './animations.dart';

class AppBarTitle extends StatelessWidget {
  const AppBarTitle({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FadeIn(
      duration: Duration(milliseconds: 700),
      stop: 0,
      start: -130,
      delay: 3,
      child: Row(
        children: <Widget>[
          Text(
            "Matthew",
            style: GoogleFonts.abel(
              fontSize: 25,
              letterSpacing: 5,
            ),
          ),
          Text(
            " / ",
            style: GoogleFonts.abel(
              fontSize: 25,
              letterSpacing: 5,
              color: Colors.red,
            ),
          ),
          Text(
            "Gleich",
            style: GoogleFonts.abel(
              fontSize: 25,
              letterSpacing: 5,
            ),
          ),
        ],
      ),
    );
  }
}
