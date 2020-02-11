import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

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
      splashColor: Colors.black,
      hoverColor: Colors.red,
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
