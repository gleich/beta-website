import 'package:flutter/material.dart';

import './../../widgets/pageTemplate.dart';
import './../../widgets/secondaryPageLeadingButton.dart';

class Projects extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageTemplate(
      endText: " - Projects",
      leadingButton: SecondaryPageLeadingButton(),
      body: Text(""),
    );
  }
}
