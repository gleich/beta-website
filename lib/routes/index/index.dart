// 📱 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:responsive_builder/responsive_builder.dart';

// 🌎 Project imports:
import 'package:matt_gleich_github_io/widgets/copyright.dart';
import 'package:matt_gleich_github_io/routes/index/views/desktop.dart';
import 'package:matt_gleich_github_io/routes/index/views/mobile.dart';

class IndexRoute extends StatelessWidget {
  static const routeName = "/";

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
