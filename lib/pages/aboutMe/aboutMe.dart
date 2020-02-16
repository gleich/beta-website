import 'package:flutter/material.dart';

import './../../widgets/pageTemplate.dart';
import './../../widgets/secondaryPageLeadingButton.dart';

class AboutMe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageTemplate(
      endText: " - About Me",
      leadingButton: SecondaryPageLeadingButton(),
      body: Text(""),
    );
  }
}
