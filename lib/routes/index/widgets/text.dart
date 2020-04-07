import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class SubTitle extends StatefulWidget {
  final double fontSize;
  final bool center;

  SubTitle({
    this.fontSize = 50,
    this.center = false,
  });

  @override
  _SubTitleState createState() => _SubTitleState();
}

class _SubTitleState extends State<SubTitle> {
  bool _hovering = false;
  @override
  Widget build(BuildContext context) {
    final age = (DateTime.now()
                .difference(DateTime.utc(2004, DateTime.april, 8))
                .inDays /
            365)
        .round();
    final daysTillBDay =
        (DateTime.utc(DateTime.now().year, DateTime.april, 8).difference(
              DateTime.now(),
            )).inDays +
            1;
    String hoverMessage;
    final String normalMessage = "$age year old maker of things";
    if (daysTillBDay == 0) {
      hoverMessage = "🎉🎉 Today is my birthday! 🎉🎉";
    } else if (daysTillBDay == 1) {
      hoverMessage = "🎉🎉 $daysTillBDay day till my bday! 🎉🎉";
    } else if (daysTillBDay <= 30 && daysTillBDay > 0) {
      hoverMessage = "🎉🎉 $daysTillBDay days till my bday! 🎉🎉";
    } else {
      hoverMessage = normalMessage;
    }
    String text = _hovering ? hoverMessage : normalMessage;
    final coreWidget = MouseRegion(
      onEnter: (_) {
        setState(() {
          _hovering = true;
        });
      },
      onExit: (_) {
        setState(() {
          _hovering = false;
        });
      },
      child: Text(
        text,
        style: TextStyle(
          fontSize: widget.fontSize,
          fontStyle: FontStyle.italic,
        ),
      ),
    );

    return widget.center ? Center(child: coreWidget) : coreWidget;
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
