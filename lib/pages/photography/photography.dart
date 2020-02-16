import 'package:flutter/material.dart';

import './../../widgets/pageTemplate.dart';
import './../../widgets/secondaryPageLeadingButton.dart';

class Photography extends StatelessWidget {
  const Photography({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageTemplate(
      endText: " - Photography",
      leadingButton: SecondaryPageLeadingButton(),
      body: Text(""),
    );
  }
}
