import 'package:flutter/material.dart';

import 'package:matt_gleich_github_io/widgets/nav.dart';

class IndexPage extends StatelessWidget {
  static const pageName = "/";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: Column(
        children: <Widget>[
          NavBar(),
        ],
      ),
    );
  }
}
