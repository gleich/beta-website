import 'package:flutter/material.dart';

import 'package:responsive_builder/responsive_builder.dart';

import 'package:personal_site/routes/aboutMe/views/desktop.dart';
import 'package:personal_site/routes/aboutMe/views/mobile.dart';
import 'package:personal_site/widgets/pageTemplate.dart';

class AboutMeRoute extends StatelessWidget {
  static const routeName = '/aboutMe';

  final _bio =
      "👋🏼 Hello! Ever since I was a little kid I've always been looking to make things, especially when it can help someone or bring someone joy. In January 2019 I started programming on my FIRST robotics team, 501 The PowerKnights as a computer vision programmer. Since then I have been fascinated with programming, trying to learn as much as possible. Besides programming I enjoy 📷 photography, 🚵🏼‍♂️ riding my bike, 🚶🏼‍♂️ hiking, and hanging out with friends.";

  @override
  Widget build(BuildContext context) {
    return PageTemplate(
      pageName: '👨🏻‍💻 About Me',
      body: ScreenTypeLayout(
        desktop: AboutMeDesktopView(_bio),
        tablet: AboutMeDesktopView(_bio),
        mobile: AboutMeMobileView(_bio),
      ),
    );
  }
}
