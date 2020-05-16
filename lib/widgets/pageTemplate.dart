// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import 'package:personal_site/widgets/cursorChange.dart';

class PageTemplate extends StatelessWidget {
  final Widget body;
  final String pageName;

  PageTemplate({
    @required this.body,
    @required this.pageName,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'Matthew Gleich  ➞ $pageName',
          style: Theme.of(context).textTheme.headline1,
        ),
        centerTitle: false,
        leading: Tooltip(
          message: 'Go Back',
          child: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            hoverColor: Colors.transparent,
            splashColor: Colors.transparent,
            onPressed: () => Navigator.of(context).pop(),
          ),
        ).changeCursorOnHover,
      ),
      body: body,
    );
  }
}
