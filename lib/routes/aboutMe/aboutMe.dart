// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:responsive_builder/responsive_builder.dart';

// Project imports:
import 'package:matt_gleich_github_io/routes/aboutMe/views/desktop.dart';
import 'package:matt_gleich_github_io/routes/aboutMe/views/mobile.dart';

class AboutMeRoute extends StatelessWidget {
  static const routeName = "/aboutMe";

  final _bio =
      "👋🏼 Hello! Ever since I was a little kid I've always been looking to make things, especially when it can help someone or bring someone joy. In January 2019 I started programming on my FIRST robotics team, 501 The PowerKnights as a Computer Vision Programmer. Since then I have been fascinated with programming, trying to learn as much as possible. Besides programming I enjoy 📷 photography, 🚵🏼‍♂️ riding my bike, 🚶🏼‍♂️ hiking, and hanging out with friends.";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "Matthew Gleich",
          style: Theme.of(context).textTheme.headline1,
        ),
        centerTitle: false,
      ),
      body: ScreenTypeLayout(
        desktop: AboutMeDesktopView(_bio),
        tablet: AboutMeDesktopView(_bio),
        mobile: AboutMeMobileView(_bio),
      ),
    );
  }
}
