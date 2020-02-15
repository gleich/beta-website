import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import './widgets/socialMedia.dart';
import './widgets/logo.dart';
import './widgets/pageButton.dart';

import './../languages/languages.dart';
import './../projects/projects.dart';
import './../aboutMe/aboutMe.dart';

class HomePage extends StatelessWidget {
  final Widget baseMobileWidget = Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(
            top: 75,
            bottom: 75,
          ),
          child: Logo(),
        ),
        PageButton(
          route: Languages(),
          pageName: "Languages",
          leftPadding: 0,
          topPadding: 0,
        )
      ],
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Matthew / Gleich",
          style: GoogleFonts.abel(
            fontSize: 25,
            letterSpacing: 5,
          ),
        ),
        titleSpacing: 50,
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
      ),
      body: MediaQuery.of(context).size.width < 1212
          ? MediaQuery.of(context).size.height < 842
              ? SingleChildScrollView(
                  child: baseMobileWidget,
                )
              : baseMobileWidget
          : Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Logo(),
                SizedBox(width: 100),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    PageButton(
                        route: AboutMe(),
                        pageName: "About Me",
                        leftPadding: 0,
                        topPadding: 0),
                    PageButton(
                      route: Projects(),
                      pageName: "Projects",
                      leftPadding: 100,
                      topPadding: 30,
                    ),
                    PageButton(
                      route: Languages(),
                      pageName: "Languages",
                      leftPadding: 0,
                      topPadding: 30,
                    ),
                  ],
                )
              ],
            ),
    );
  }
}
