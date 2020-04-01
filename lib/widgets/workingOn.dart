import 'package:flutter/material.dart';

import 'package:matt_gleich_github_io/widgets/actionBar.dart';
import 'package:matt_gleich_github_io/widgets/buttons.dart';
import 'package:matt_gleich_github_io/pages/index/index.dart';
import 'package:matt_gleich_github_io/widgets/copyright.dart';

class WorkingOn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "🏗️  I'm working on this page",
            style: TextStyle(
              fontSize: 50,
            ),
          ),
          const SizedBox(height: 40),
          ActionBar(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
          ),
          const SizedBox(height: 40),
          ReflectingRaisedButton(
            onPressed: () =>
                Navigator.popAndPushNamed(context, IndexPage.pageName),
            fontSize: 50,
            text: "Return Home 🏠",
          )
        ],
      ),
      bottomSheet: Copyright(),
    );
  }
}
