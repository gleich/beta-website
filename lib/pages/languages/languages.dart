import 'package:flutter/material.dart';

import 'package:matt_gleich_github_io/widgets/pageTemplate.dart';
import 'package:matt_gleich_github_io/widgets/secondaryPageLeadingButton.dart';
import 'package:matt_gleich_github_io/widgets/underConstruction.dart';

class LanguagesPage extends StatelessWidget {
  static const pageName = "/languages";

  @override
  Widget build(BuildContext context) {
    return PageTemplate(
      endText: " - Languages",
      leadingButton: SecondaryPageLeadingButton(),
      body: UnderConstruction(),
    );
  }
}
