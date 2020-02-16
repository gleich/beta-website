import 'package:flutter/material.dart';

import './../../widgets/pageTemplate.dart';
import './../../widgets/secondaryPageLeadingButton.dart';

class Languages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageTemplate(
      endText: " - Languages",
      leadingButton: SecondaryPageLeadingButton(),
      body: Text(""),
    );
  }
}
