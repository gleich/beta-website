import 'package:flutter/material.dart';

class Article {
  final String name;
  final String pageName;
  final DateTime created;
  final String markdown;

  Article({
    @required this.name,
    @required this.pageName,
    @required this.created,
    @required this.markdown,
  });
}
