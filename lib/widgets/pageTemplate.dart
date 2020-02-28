import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import './animations.dart';
import './../pages/index/index.dart';

class PageTemplate extends StatelessWidget {
  final String endText;
  final Widget leadingButton;
  final Widget body;
  final bool copyright;

  PageTemplate({
    @required this.endText,
    @required this.leadingButton,
    @required this.body,
    this.copyright = false,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          child: FlatButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomePage(),
                ),
              );
            },
            color: Color.fromRGBO(70, 70, 70, 1),
            hoverColor: Theme.of(context).accentColor,
            child: Row(
              children: <Widget>[
                FadeIn(
                  start: -130,
                  delay: 4.5,
                  child: const Text(
                    "Matthew",
                    style: TextStyle(
                      fontSize: 25,
                      letterSpacing: 5,
                    ),
                  ),
                ),
                FadeIn(
                  start: -100,
                  delay: 4.0,
                  child: Text(
                    " / ",
                    style: TextStyle(
                      fontSize: 25,
                      letterSpacing: 5,
                      color: Theme.of(context).accentColor,
                    ),
                  ),
                ),
                FadeIn(
                  start: -100,
                  delay: 3.5,
                  child: const Text(
                    "Gleich",
                    style: TextStyle(
                      fontSize: 25,
                      letterSpacing: 5,
                    ),
                  ),
                ),
                FadeIn(
                  start: -100,
                  delay: 3,
                  child: Text(
                    endText,
                    style: TextStyle(
                      fontSize: 25,
                      letterSpacing: 5,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        backgroundColor: Colors.black,
        elevation: 10.0,
        actions: <Widget>[
          SocialMediaIcon(
              MdiIcons.twitter, "https://twitter.com/GleichMatthew"),
          SocialMediaIcon(MdiIcons.instagram,
              "https://www.instagram.com/gleichphotography/"),
          SocialMediaIcon(MdiIcons.linkedinBox,
              "https://www.linkedin.com/in/matthew-gleich-636618178/"),
          SocialMediaIcon(
              MdiIcons.githubCircle, "https://github.com/Matt-Gleich"),
          SocialMediaIcon(
              MdiIcons.docker, "https://hub.docker.com/u/mattgleich"),
          SocialMediaIcon(
              MdiIcons.strava, "https://www.strava.com/athletes/30124266"),
        ],
        leading: leadingButton,
      ),
      body: body,
      bottomSheet: copyright
          ? Padding(
              padding: const EdgeInsets.only(
                bottom: 10,
                top: 3,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "© ",
                    style: TextStyle(
                      color: Theme.of(context).accentColor,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    "Matthew Gleich ${DateTime.now().year}",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            )
          : null,
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
        color: Theme.of(context).accentColor,
      ),
      splashColor: Colors.black,
      hoverColor: Color.fromRGBO(55, 55, 55, 1),
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
