import 'package:flutter/material.dart';

import 'package:matt_gleich_github_io/pages/index/index.dart';

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
            RaisedButton(
              onPressed: () =>
                  Navigator.popAndPushNamed(context, IndexPage.pageName),
              color: Theme.of(context).accentColor,
              hoverElevation: 10,
              child: Text(
                "Back To Home",
                style: TextStyle(
                  fontSize: 50,
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
