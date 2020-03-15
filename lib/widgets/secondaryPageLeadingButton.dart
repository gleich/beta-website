import 'package:flutter/material.dart';

class SecondaryPageLeadingButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.home),
      onPressed: () => Navigator.pushNamed(context, "/"),
    );
  }
}
