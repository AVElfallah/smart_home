import 'package:flutter/material.dart';

import '../view/pages/home/home_page.dart';
import '../view/pages/search/search_page.dart';

class AppRouter {
  static const String homeRoute = '/';
  static const String searchRoute = '/search';

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      //SECTION -  home route
      case homeRoute:
        return MaterialPageRoute(
          builder: (_) => const HomePage(),
        );

      //SECTION - search route
      case searchRoute:
        return MaterialPageRoute(
          builder: (_) => const SearchPage(),
        );

      //SECTION - default route (404) page
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
