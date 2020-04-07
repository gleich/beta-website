import 'package:flutter/material.dart';

import 'package:matt_gleich_github_io/widgets/actionBar.dart';
import 'package:matt_gleich_github_io/routes/index/widgets/buttons.dart';
import 'package:matt_gleich_github_io/routes/index/widgets/text.dart';

class IndexMobileView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        shrinkWrap: true,
        children: <Widget>[
          const SizedBox(
            height: 30,
          ),
          Header(
            fontSize: 35,
            center: true,
          ),
          Text(
            "Matthew\nGleich",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 70,
              decoration: TextDecoration.underline,
            ),
          ),
          SubTitle(
            fontSize: 30,
            center: true,
          ),
          ActionBar(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
          ),
          const SizedBox(height: 30),
          ...PageButtons.buttons,
          const SizedBox(height: 60),
        ],
      ),
    );
  }
}
