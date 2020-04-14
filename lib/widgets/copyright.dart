import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'package:matt_gleich_github_io/services/url.dart' as url;

class Copyright extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 30),
      color: Theme.of(context).scaffoldBackgroundColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Tooltip(
            message: "View Source Code",
            child: GestureDetector(
              onTap: () =>
                  url.launchURL("https://github.com/Matt-Gleich/Personal-Site"),
              child: const Icon(MdiIcons.githubCircle),
            ),
          ),
          const SizedBox(width: 20),
          Text(
            "© Matthew Gleich ${DateTime.now().year}",
            style: TextStyle(
              fontSize: 20,
            ),
          )
        ],
      ),
    );
  }
}
