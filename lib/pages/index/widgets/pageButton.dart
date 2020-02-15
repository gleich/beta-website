import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PageButton extends StatelessWidget {
  final Widget route;
  final String pageName;

  PageButton({@required this.route, @required this.pageName});

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      height: 100,
      minWidth: 200,
      child: RaisedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => route),
          );
        },
        child: Text(
          pageName,
          style: GoogleFonts.abel(fontSize: 40),
        ),
        color: Colors.black,
        hoverElevation: 10,
        hoverColor: Colors.red,
      ),
    );
  }
}
