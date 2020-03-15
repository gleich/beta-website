import 'package:flutter/material.dart';

import './../../widgets/pageTemplate.dart';
import './../../widgets/secondaryPageLeadingButton.dart';

class AboutMePage extends StatelessWidget {
  static const pageName = "/aboutMe";

  @override
  Widget build(BuildContext context) {
    return PageTemplate(
      endText: " - About Me",
      leadingButton: SecondaryPageLeadingButton(),
      body: Text(""),
    );
  }
}
