// 📱 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import 'package:personal_site/widgets/workingOn.dart';

class ProjectsRoute extends StatelessWidget {
  static const routeName = "/projects";

  @override
  Widget build(BuildContext context) {
    return WorkingOn();
  }
}
