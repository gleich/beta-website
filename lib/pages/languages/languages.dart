import 'package:flutter/material.dart';

import './../../widgets/pageTemplate.dart';
import './../../widgets/secondaryPageLeadingButton.dart';

class LanguagesPage extends StatelessWidget {
  static const pageName = "/languages";

  @override
  Widget build(BuildContext context) {
    return PageTemplate(
      endText: " - Languages",
      leadingButton: SecondaryPageLeadingButton(),
      body: Text(""),
    );
  }
}
