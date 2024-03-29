import 'package:flutter/material.dart';

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
                  name: "🌱 Hello World",
                  notionURL:
                      "https://www.notion.so/Hello-World-df6b8b07cfc448b1b1c42bf30cc19682",
                  description: "My first blog post",
                ),
                ArticlePreview(
                  name: '💻 My VS-Code Setup',
                  notionURL:
                      'https://www.notion.so/My-VS-Code-Setup-74010a7791ce4446a88cd9029524a785',
                  description:
                      'A complete look into my VS-Code setup, everything from\nextensions to settings',
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
