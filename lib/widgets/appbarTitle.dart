import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import './animations.dart';
import './../pages/index/index.dart';

class AppBarTitle extends StatelessWidget {
  final String endText;

  AppBarTitle({@required this.endText});

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => HomePage()));
      },
      color: Color.fromRGBO(70, 70, 70, 1),
      hoverColor: Colors.red,
      child: Row(
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
              style: TextStyle(
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
          FadeIn(
            duration: Duration(milliseconds: 700),
            start: -100,
            stop: 0,
            delay: 3,
            child: Text(
              endText,
              style: GoogleFonts.abel(
                fontSize: 25,
                letterSpacing: 5,
              ),
            ),
          )
        ],
      ),
    );
  }
}
