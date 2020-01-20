import 'package:flutter/material.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 250),
            child: Image(
              image: AssetImage("assets/images/logo.png"),
              width: 530,
              height: 530,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 150,
              top: 440,
            ),
            child: Column(
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
            ),
          )
        ],
      ),
    );
  }
}
