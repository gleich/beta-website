import 'package:flutter/material.dart';

class Skill extends StatelessWidget {
  final dynamic icon;
  final String name;
  final List<String> uses;

  Skill({
    @required this.icon,
    @required this.name,
    @required this.uses,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          icon is IconData
              ? Icon(
                  icon,
                  size: 300,
                )
              : icon,
          const SizedBox(width: 50),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                name,
                style: Theme.of(context).textTheme.headline2,
              ),
              const SizedBox(height: 10),
              Text(
                uses.join('\n'),
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
