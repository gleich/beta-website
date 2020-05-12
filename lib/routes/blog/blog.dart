// 📱 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import 'package:personal_site/widgets/workingOn.dart';

class BlogRoute extends StatelessWidget {
  static const routeName = "/blog";

  @override
  Widget build(BuildContext context) {
    return WorkingOn();
  }
}
