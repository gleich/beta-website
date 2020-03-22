import 'package:flutter/material.dart';

import 'package:matt_gleich_github_io/pages/index/index.dart';

class Page404 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              "Page not found 😔",
              style: TextStyle(fontSize: 70),
            ),
            SizedBox(height: 100),
            RaisedButton(
              onPressed: () =>
                  Navigator.popAndPushNamed(context, IndexPage.pageName),
              child: Text(
                "Back To Home",
                style: TextStyle(
                  fontSize: 50,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
