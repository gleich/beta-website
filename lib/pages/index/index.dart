import 'package:flutter/material.dart';

import 'package:matt_gleich_github_io/widgets/pageTemplate.dart';
import 'package:matt_gleich_github_io/pages/index/widgets/horizontalView.dart';
import 'package:matt_gleich_github_io/pages/index/widgets/verticalView.dart';

class IndexPage extends StatelessWidget {
  static const pageName = "/";

  @override
  Widget build(BuildContext context) {
    return PageTemplate(
      copyright: true,
      endText: "",
      leadingButton: const IconButton(
        icon: Icon(
          Icons.camera,
          color: Colors.transparent,
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
