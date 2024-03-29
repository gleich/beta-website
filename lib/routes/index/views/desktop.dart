import 'package:flutter/material.dart';

import 'package:personal_site/routes/index/widgets/buttons.dart';
import 'package:personal_site/routes/index/widgets/text.dart';
import 'package:personal_site/widgets/actionBar.dart';

class IndexDesktopView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Header(),
                  const Text(
                    'Matthew Gleich',
                    style: TextStyle(
                      fontSize: 150,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  SubTitle(),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: ActionBar(),
                  ),
                ],
              ),
            ),
            SizedBox(width: MediaQuery.of(context).size.width * 0.03),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: PageButtons.buttons,
            ),
          ],
        ),
      ),
    );
  }
}
