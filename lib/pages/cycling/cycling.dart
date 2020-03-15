import 'package:flutter/material.dart';

import './../../widgets/pageTemplate.dart';
import './../../widgets/secondaryPageLeadingButton.dart';

class CyclingPage extends StatelessWidget {
  static const pageName = "/cycling";

  @override
  Widget build(BuildContext context) {
    return PageTemplate(
      endText: " - Cycling",
      leadingButton: SecondaryPageLeadingButton(),
      body: Text(""),
    );
  }
}
