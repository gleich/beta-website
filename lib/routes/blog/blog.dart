// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import 'package:personal_site/routes/blog/widgets/preview.dart';
import 'package:personal_site/widgets/pageTemplate.dart';

class BlogRoute extends StatelessWidget {
  static const routeName = "/blog";

  @override
  Widget build(BuildContext context) {
    return PageTemplate(
      pageName: "🖊️ Blog",
      body: SingleChildScrollView(
        child: Center(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "🖊️ Blog",
                  style: Theme.of(context).textTheme.headline2,
                ),
                const SizedBox(
                  height: 50,
                ),
                ArticlePreview(
                  name: "👋🏼 Hello World",
                  notionURL:
                      "https://www.notion.so/Hello-World-92437267107946b68197d01217c152fc",
                  description: "My first blog post",
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
