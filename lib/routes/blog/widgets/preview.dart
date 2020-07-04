// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import 'package:personal_site/services/url.dart' as url;
import 'package:personal_site/widgets/buttons.dart';

class ArticlePreview extends StatelessWidget {
  final String name;
  final String notionURL;
  final String description;

  ArticlePreview({
    @required this.name,
    @required this.notionURL,
    @required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Theme.of(context).accentColor,
            width: 5,
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  name,
                  style: Theme.of(context).textTheme.headline3,
                ),
                Container(
                  child: Text(
                    description,
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ),
                ReflectingRaisedButton(
                  onPressed: () => url.launchURL(notionURL),
                  text: "🔗 View Article",
                  fontSize: 20,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
