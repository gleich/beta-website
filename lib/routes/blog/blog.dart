// 🎯 Dart imports:
import 'dart:convert';
import 'dart:io';

// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import 'package:personal_site/widgets/pageTemplate.dart';

class BlogRoute extends StatelessWidget {
  static const routeName = '/blog';

  Future<Map<String, String>> _articles(BuildContext context) async {
    final manifestContent =
        await DefaultAssetBundle.of(context).loadString('AssetManifest.json');
    final Map<String, dynamic> manifestMap = json.decode(manifestContent);
    final contents = <String>[];
    for (final file in manifestMap.keys
        .where((article) => article.startsWith("assets/markdown/"))
        .toList()) {
      contents.add(await DefaultAssetBundle.of(context).loadString(file));
    }
    return contents;
  }

  @override
  Widget build(BuildContext context) {
    return PageTemplate(
      body: FutureBuilder<Map<String, String>>(
        future: _articles(context),
        builder: (BuildContext context,
                AsyncSnapshot<Map<String, String>> snapshot) =>
            snapshot.connectionState == ConnectionState.done
                ? Text(
                    snapshot.data.toString(),
                  )
                : CircularProgressIndicator(),
      ),
      pageName: '🖊️ Blog',
    );
  }
}
