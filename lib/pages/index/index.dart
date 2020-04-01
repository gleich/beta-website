import 'package:flutter/material.dart';

import 'package:matt_gleich_github_io/widgets/actionBar.dart';

class IndexPage extends StatelessWidget {
  static const pageName = "/";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          ActionBar(),
          SizedBox(width: 40),
        ],
      ),
    );
  }
}
