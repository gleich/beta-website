import 'package:flutter/material.dart';

import './../../widgets/pageTemplate.dart';
import './widgets/horizontalView.dart';
import './widgets/verticalView.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageTemplate(
      copyright: true,
      endText: "",
      leadingButton: const IconButton(
        icon: Icon(
          Icons.camera,
          color: Colors.black,
        ),
        onPressed: null,
      ),
      body: MediaQuery.of(context).size.width < 1212
          ? MediaQuery.of(context).size.height < 1058
              ? SingleChildScrollView(
                  child: VerticalView(),
                )
              : VerticalView()
          : HorizontalView(),
    );
  }
}
