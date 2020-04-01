import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'package:matt_gleich_github_io/pages/index/widgets/actionBar.dart';
import 'package:matt_gleich_github_io/services/url.dart' as url;

class IndexPage extends StatelessWidget {
  static const pageName = "/";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                AnimationConfiguration.synchronized(
                  child: SlideAnimation(
                    verticalOffset: -50,
                    duration: const Duration(seconds: 1),
                    child: FadeInAnimation(
                      duration: const Duration(seconds: 1),
                      child: Text(
                        "👋🏼 Hey I'm",
                        style: TextStyle(
                          fontSize: 50,
                        ),
                      ),
                    ),
                  ),
                ),
                const Text(
                  "Matthew Gleich",
                  style: TextStyle(
                    fontSize: 150,
                    decoration: TextDecoration.underline,
                  ),
                ),
                SubTitle(),
                ActionBar(),
              ],
            ),
          ),
          SizedBox(width: MediaQuery.of(context).size.width * 0.03),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              PageButton(
                pageName: "🖊️ Blog",
                pageRoutePath: "",
              ),
              PageButton(
                pageName: "🛠️ Projects",
                pageRoutePath: "",
              ),
              PageButton(
                pageName: "👨🏻‍💻 About Me",
                pageRoutePath: "",
              ),
              PageButton(
                pageName: "📷 Photography",
                pageRoutePath: "",
              )
            ],
          )
        ],
      ),
      bottomSheet: Container(
        padding: EdgeInsets.only(bottom: 30),
        color: Theme.of(context).backgroundColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Tooltip(
              message: "View Source Code",
              child: GestureDetector(
                onTap: () => url
                    .launchURL("https://github.com/Matt-Gleich/Personal-Site"),
                child: Icon(MdiIcons.githubCircle),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

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

class PageButton extends StatefulWidget {
  final String pageName;
  final String pageRoutePath;

  PageButton({
    @required this.pageName,
    @required this.pageRoutePath,
  });

  @override
  _PageButtonState createState() => _PageButtonState();
}

class _PageButtonState extends State<PageButton> {
  bool _hovering = false;
  @override
  Widget build(BuildContext context) {
    Color backgroundColor = _hovering
        ? Theme.of(context).primaryColor
        : Theme.of(context).accentColor;
    Color textColor = _hovering
        ? Theme.of(context).accentColor
        : Theme.of(context).primaryColor;
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
      child: RaisedButton(
        color: backgroundColor,
        elevation: 3,
        hoverElevation: 10,
        onPressed: () => Navigator.pushNamed(context, widget.pageRoutePath),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Text(
          widget.pageName,
          style: TextStyle(
            color: textColor,
            fontSize: 30,
          ),
        ),
      ),
    );
  }
}
