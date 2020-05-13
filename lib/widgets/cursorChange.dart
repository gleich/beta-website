// 🎯 Dart imports:
import 'dart:html' as html;

// 📱 Flutter imports:
import 'package:flutter/material.dart';

extension HoverExtension on Widget {
  static final appContainer =
      html.window.document.getElementById('app-container');

  Widget get showCursorOnHover => MouseRegion(
        child: this,
        onHover: (event) => appContainer.style.cursor = 'pointer',
        onExit: (event) => appContainer.style.cursor = 'default',
      );
}
