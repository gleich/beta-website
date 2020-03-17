import 'package:flutter/material.dart';

import 'package:matt_gleich_github_io/widgets/pageTemplate.dart';
import 'package:matt_gleich_github_io/widgets/secondaryPageLeadingButton.dart';
import 'package:matt_gleich_github_io/widgets/underConstruction.dart';

class ProjectsPage extends StatelessWidget {
  static const pageName = "/projects";

  @override
  Widget build(BuildContext context) {
    return PageTemplate(
      endText: " - Projects",
      leadingButton: SecondaryPageLeadingButton(),
      body: UnderConstruction(),
    );
  }
}
