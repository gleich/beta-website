import 'package:flutter/material.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:url_launcher/url_launcher.dart';

class NameAndLink extends StatelessWidget {
  const NameAndLink({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          "Matthew Gleich",
          style: TextStyle(
            color: Colors.white,
            fontSize: 40,
          ),
        ),
        Linkify(
          onOpen: (link) async {
            if (await canLaunch(link.url)) {
              await launch(link.url);
            } else {
              throw "Could not open $link.url";
            }
          },
          text: "https://github.com/Matt-Gleich",
          style: TextStyle(fontSize: 37),
        )
      ],
    );
  }
}
