// 📱 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class SubTitle extends StatelessWidget {
  final double fontSize;

  SubTitle({this.fontSize = 50});

  @override
  Widget build(BuildContext context) {
    final age = (DateTime.now()
                .difference(DateTime.utc(2004, DateTime.april, 8))
                .inDays /
            365)
        .toStringAsFixed(0);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          '$age year old ',
          style: TextStyle(
            fontSize: fontSize,
            fontStyle: FontStyle.italic,
          ),
        ),
        Container(
          child: FadeAnimatedTextKit(
            text: <String>[
              'maker of things',
              'programmer',
              'photographer',
            ],
            textStyle: TextStyle(
              fontSize: fontSize,
              fontStyle: FontStyle.italic,
            ),
            textAlign: TextAlign.start,
            alignment: AlignmentDirectional.topStart,
          ),
        )
      ],
    );
  }
}

class Header extends StatelessWidget {
  final double fontSize;

  Header({this.fontSize = 50});

  @override
  Widget build(BuildContext context) {
    return AnimationConfiguration.synchronized(
      child: SlideAnimation(
        verticalOffset: -50,
        duration: Duration(seconds: 1),
        child: FadeInAnimation(
          duration: Duration(seconds: 1),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                '👋🏼 ',
                style: TextStyle(fontSize: fontSize),
              ),
              Text(
                "Hey! I'm",
                style: TextStyle(
                  fontSize: fontSize,
                  fontFamily: 'Computer Modern',
                  fontStyle: FontStyle.italic,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
