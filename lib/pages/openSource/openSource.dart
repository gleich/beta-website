import 'package:flutter/material.dart';

import './../../widgets/pageTemplate.dart';
import './../../widgets/secondaryPageLeadingButton.dart';

class OpenSource extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageTemplate(
      endText: " - Open Source",
      leadingButton: SecondaryPageLeadingButton(),
      body: Text(""),
    );
  }
}
