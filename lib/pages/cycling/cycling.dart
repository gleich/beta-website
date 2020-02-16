import 'package:flutter/material.dart';

import './../../widgets/pageTemplate.dart';
import './../../widgets/secondaryPageLeadingButton.dart';

class Cycling extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageTemplate(
      endText: " - Cycling",
      leadingButton: SecondaryPageLeadingButton(),
      body: Text(""),
    );
  }
}
