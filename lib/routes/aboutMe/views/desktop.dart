import 'package:flutter/material.dart';

import 'package:personal_site/widgets/text.dart';

class AboutMeDesktopView extends StatelessWidget {
  final String bio;

  AboutMeDesktopView(this.bio);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                PageTitleDesktop('👨🏻‍💻', 'About Me'),
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
                    'assets/images/me.jpg',
                    height: 500,
                    filterQuality: FilterQuality.medium,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
