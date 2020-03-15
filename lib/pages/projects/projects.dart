import 'package:flutter/material.dart';

import './../../widgets/pageTemplate.dart';
import './../../widgets/secondaryPageLeadingButton.dart';

class ProjectsPage extends StatelessWidget {
  static const pageName = "/projects";

  @override
  Widget build(BuildContext context) {
    return PageTemplate(
      endText: " - Projects",
      leadingButton: SecondaryPageLeadingButton(),
      body: Text(""),
    );
  }
}
