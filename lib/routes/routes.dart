import 'package:belajarbloc/pages/home_pages.dart';
import 'package:flutter/material.dart';

class MyRouter {
  Route onRoute(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(builder: (context) => HomePages());
      default:
        return MaterialPageRoute(builder: (context) => HomePages());
    }
  }
}
