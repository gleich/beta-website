import 'package:flutter/material.dart';

import 'package:matt_gleich_github_io/widgets/pageTemplate.dart';
import 'package:matt_gleich_github_io/widgets/secondaryPageLeadingButton.dart';
import 'package:matt_gleich_github_io/widgets/underConstruction.dart';

class CyclingPage extends StatelessWidget {
  static const pageName = "/cycling";

  @override
  Widget build(BuildContext context) {
    return PageTemplate(
      endText: " - Cycling",
      leadingButton: SecondaryPageLeadingButton(),
      body: UnderConstruction(),
    );
  }
}
