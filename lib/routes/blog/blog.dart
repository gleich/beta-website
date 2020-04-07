import 'package:flutter/material.dart';

import 'package:matt_gleich_github_io/widgets/workingOn.dart';

class BlogRoute extends StatelessWidget {
  static const routeName = "/blog";

  @override
  Widget build(BuildContext context) {
    return WorkingOn();
  }
}
