import 'package:flutter/material.dart';

class AboutMeDesktopView extends StatelessWidget {
  final String bio;

  AboutMeDesktopView(this.bio);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "About Me",
                style: Theme.of(context).textTheme.headline2,
              ),
              const SizedBox(height: 30),
              Container(
                width: MediaQuery.of(context).size.width * 0.5,
                child: Text(
                  bio,
                  style: Theme.of(context).textTheme.bodyText1,
                  softWrap: true,
                ),
              )
            ],
          ),
          SizedBox(width: 100),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  "assets/images/me.jpg",
                  height: MediaQuery.of(context).size.width * 0.22,
                  filterQuality: FilterQuality.medium,
                ),
              ),
              Text(
                "Me taking a picture in Portsmouth, NH",
                style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width * 0.015),
              )
            ],
          )
        ],
      ),
    );
  }
}
