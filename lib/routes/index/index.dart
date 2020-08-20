import 'package:flutter/material.dart';

import 'package:responsive_builder/responsive_builder.dart';

import 'package:personal_site/routes/index/views/desktop.dart';
import 'package:personal_site/routes/index/views/mobile.dart';
import 'package:personal_site/widgets/copyright.dart';

class IndexRoute extends StatelessWidget {
  static const routeName = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenTypeLayout(
        desktop: IndexDesktopView(),
        tablet: IndexDesktopView(),
        mobile: IndexMobileView(),
      ),
      bottomSheet: Copyright(),
    );
  }
}
