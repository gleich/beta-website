// 📱 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import 'package:personal_site/widgets/actionBar.dart';
import 'package:personal_site/widgets/buttons.dart';
import 'package:personal_site/routes/index/index.dart';
import 'package:personal_site/widgets/copyright.dart';

class WorkingOn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            onPressed: () => Navigator.popAndPushNamed(
              context,
              IndexRoute.routeName,
            ),
            fontSize: 50,
            text: "Return Home 🏠",
          )
        ],
      ),
      bottomSheet: Copyright(),
    );
  }
}
