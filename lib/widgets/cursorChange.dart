import 'dart:html' as html;

import 'package:flutter/material.dart';

extension HoverExtension on Widget {
  static final appContainer =
      html.window.document.getElementById('app-container');

  Widget get changeCursorOnHover => MouseRegion(
        child: this,
        onHover: (event) => appContainer.style.cursor = 'pointer',
        onExit: (event) => appContainer.style.cursor = 'default',
      );
}
