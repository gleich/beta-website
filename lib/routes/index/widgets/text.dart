import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class SubTitle extends StatelessWidget {
  final double fontSize;
  final bool center;

  SubTitle({
    this.fontSize = 50,
    this.center = false,
  });

  @override
  Widget build(BuildContext context) {
    final age = (DateTime.now()
                .difference(DateTime.utc(2004, DateTime.april, 8))
                .inDays /
            365)
        .toStringAsFixed(0);
    final coreWidget = Text(
      '$age year old maker of things',
      style: TextStyle(
        fontSize: fontSize,
        fontStyle: FontStyle.italic,
      ),
    );
    return center ? Center(child: coreWidget) : coreWidget;
  }
}

class Header extends StatelessWidget {
  final double fontSize;
  final bool center;

  Header({
    this.fontSize = 50,
    this.center = false,
  });

  @override
  Widget build(BuildContext context) {
    final coreWidget = AnimationConfiguration.synchronized(
      child: SlideAnimation(
        verticalOffset: -50,
        duration: Duration(seconds: 1),
        child: FadeInAnimation(
          duration: Duration(seconds: 1),
          child: Text(
            "👋🏼 Hey I'm",
            style: TextStyle(
              fontSize: fontSize,
            ),
          ),
        ),
      ),
    );
    return center ? Center(child: coreWidget) : coreWidget;
  }
}
