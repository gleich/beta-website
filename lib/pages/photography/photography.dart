import 'package:flutter/material.dart';

import './../../widgets/pageTemplate.dart';
import './../../widgets/secondaryPageLeadingButton.dart';

class PhotographyPage extends StatelessWidget {
  static const pageName = "/photography";

  @override
  Widget build(BuildContext context) {
    return PageTemplate(
      endText: " - Photography",
      leadingButton: SecondaryPageLeadingButton(),
      body: Text(""),
    );
  }
}
