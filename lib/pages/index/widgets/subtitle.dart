import 'package:flutter/material.dart';

class SubTitle extends StatefulWidget {
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
        .toStringAsFixed(2);
    final daysTillBDay = (DateTime.utc(DateTime.now().year, DateTime.april, 8)
            .difference(DateTime.now()))
        .inDays;
    String hoverMessage;
    final String normalMessage = "$age year old maker of things";

    if (daysTillBDay == 0) {
      hoverMessage = "🎉🎉 Today is my birthday! 🎉🎉";
    } else if (daysTillBDay <= 30 && daysTillBDay > 0) {
      hoverMessage = "🎉🎉 $daysTillBDay days till my bday! 🎉🎉";
    } else {
      hoverMessage = normalMessage;
    }

    String text = _hovering ? hoverMessage : normalMessage;
    return MouseRegion(
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
          fontSize: 50,
          fontStyle: FontStyle.italic,
        ),
      ),
    );
  }
}
