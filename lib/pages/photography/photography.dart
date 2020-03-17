import 'package:flutter/material.dart';

import 'package:matt_gleich_github_io/widgets/pageTemplate.dart';
import 'package:matt_gleich_github_io/widgets/secondaryPageLeadingButton.dart';
import 'package:matt_gleich_github_io/widgets/underConstruction.dart';

class PhotographyPage extends StatelessWidget {
  static const pageName = "/photography";

  @override
  Widget build(BuildContext context) {
    return PageTemplate(
      endText: " - Photography",
      leadingButton: SecondaryPageLeadingButton(),
      body: UnderConstruction(),
    );
  }
}
