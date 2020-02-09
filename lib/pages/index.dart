import 'package:flutter/material.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Matthew Gleich"),
        backgroundColor: Colors.black,
        actions: <Widget>[
          SocialMediaIcon(MdiIcons.twitter, "https://twitter.com/GleichMatthew")
        ],
      ),
      body: Center(
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
              ),
              child: Column(
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
              ),
            )
          ],
        ),
      ),
      backgroundColor: Color.fromRGBO(63, 63, 63, 1.0),
    );
  }
}

class SocialMediaIcon extends StatelessWidget {
  final String linkURL;
  final icon;

  SocialMediaIcon(this.icon, this.linkURL);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        icon,
        color: Colors.white,
      ),
      onPressed: () async {
        if (await canLaunch(linkURL)) {
          await launch(linkURL);
        } else {
          throw "Could not launch $linkURL";
        }
      },
    );
  }
}
