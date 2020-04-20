// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:matt_gleich_github_io/routes/index/index.dart';
import 'package:matt_gleich_github_io/widgets/buttons.dart';

class Route404 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              "404 Error\nPage not found 😔",
              style: TextStyle(
                fontSize: 70,
                decoration: TextDecoration.underline,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 100),
            ReflectingRaisedButton(
              onPressed: () => Navigator.popAndPushNamed(
                context,
                IndexRoute.routeName,
              ),
              fontSize: 50,
              text: "Return Home 🏠",
            ),
          ],
        ),
      ),
    );
  }
}
