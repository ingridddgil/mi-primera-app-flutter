import 'package:flutter/material.dart';
import '../ui/screens/home_page.dart';

class AppRoutes {
  static const home = '/';

  static Map<String, WidgetBuilder> get routes => {
    home: (_) => const HomePage(),
  }; 
}