import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'package:matt_gleich_github_io/widgets/copyright.dart';
import 'package:matt_gleich_github_io/routes/index/views/desktop.dart';
import 'package:matt_gleich_github_io/routes/index/views/mobile.dart';

class IndexRoute extends StatelessWidget {
  static const routeName = "/";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: ScreenTypeLayout(
        desktop: IndexDesktopView(),
        tablet: IndexDesktopView(),
        mobile: IndexMobileView(),
      ),
      bottomSheet: Copyright(),
    );
  }
}
