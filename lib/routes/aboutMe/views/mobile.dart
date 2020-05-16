// 🐦 Flutter imports:
import 'package:flutter/material.dart';

class AboutMeMobileView extends StatelessWidget {
  final String bio;

  AboutMeMobileView(this.bio);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'About Me',
              style: Theme.of(context).textTheme.headline3,
            ),
            const SizedBox(height: 30),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                'assets/images/me.jpg',
                height: 300,
                filterQuality: FilterQuality.medium,
              ),
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Text(
                bio,
                style: Theme.of(context).textTheme.bodyText2,
              ),
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
