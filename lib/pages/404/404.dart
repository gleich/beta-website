import 'package:flutter/material.dart';

import 'package:matt_gleich_github_io/pages/index/index.dart';
import 'package:matt_gleich_github_io/widgets/buttons.dart';

class Page404 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              "404 Error",
              style: TextStyle(fontSize: 70),
            ),
            Text(
              "Page not found 😔",
              style: TextStyle(fontSize: 70),
            ),
            SizedBox(height: 100),
            ReflectingRaisedButton(
              onPressed: () =>
                  Navigator.popAndPushNamed(context, IndexPage.pageName),
              fontSize: 50,
              text: "Return Home 🏠",
            )
          ],
        ),
      ),
    );
  }
}
