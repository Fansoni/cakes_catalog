import 'package:flutter/material.dart';
import 'package:cakes_catalog/pages/home_page.dart';
import 'package:cakes_catalog/pages/search.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: <String, WidgetBuilder>{
      '/search': (BuildContext context) => const SearchPage()
    },
    home: const HomePage(),
  ));
}
