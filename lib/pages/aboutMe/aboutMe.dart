import 'package:flutter/material.dart';

import 'package:matt_gleich_github_io/widgets/pageTemplate.dart';
import 'package:matt_gleich_github_io/widgets/secondaryPageLeadingButton.dart';
import 'package:matt_gleich_github_io/widgets/underConstruction.dart';

class AboutMePage extends StatelessWidget {
  static const pageName = "/aboutMe";

  @override
  Widget build(BuildContext context) {
    return PageTemplate(
      endText: " - About Me",
      leadingButton: SecondaryPageLeadingButton(),
      body: UnderConstruction(),
    );
  }
}
