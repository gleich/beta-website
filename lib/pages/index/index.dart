import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'package:matt_gleich_github_io/widgets/copyright.dart';
import 'package:matt_gleich_github_io/pages/index/views/desktop.dart';
import 'package:matt_gleich_github_io/pages/index/views/mobile.dart';

class IndexPage extends StatelessWidget {
  static const pageName = "/";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: ScreenTypeLayout(
        desktop: IndexPageDesktopView(),
        tablet: IndexPageDesktopView(),
        mobile: IndexPageMobileView(),
      ),
      bottomSheet: Copyright(),
    );
  }
}
