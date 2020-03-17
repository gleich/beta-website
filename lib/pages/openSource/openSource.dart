import 'package:flutter/material.dart';

import 'package:matt_gleich_github_io/widgets/pageTemplate.dart';
import 'package:matt_gleich_github_io/widgets/secondaryPageLeadingButton.dart';
import 'package:matt_gleich_github_io/widgets/underConstruction.dart';

class OpenSourcePage extends StatelessWidget {
  static const pageName = "/openSource";

  @override
  Widget build(BuildContext context) {
    return PageTemplate(
      endText: " - Open Source",
      leadingButton: SecondaryPageLeadingButton(),
      body: UnderConstruction(),
    );
  }
}
