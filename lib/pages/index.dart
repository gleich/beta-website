import 'package:flutter/material.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Text(
              "Hello! This site is currently under construction.",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 27, color: Colors.white),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: Text(
              "In the meantime you can check out my GitHub page:",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25, color: Colors.white),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: Linkify(
              onOpen: (link) async {
                if (await canLaunch(link.url)) {
                  await launch(link.url);
                } else {
                  throw "Could not open $link.url";
                }
              },
              text: "https://github.com/Matt-Gleich",
              style: TextStyle(fontSize: 25),
            ),
          )
        ],
      ),
    );
  }
}
