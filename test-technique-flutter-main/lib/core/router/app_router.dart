import 'package:flutter/material.dart';

import '../../features/presentation/pages/home_page.dart';
import '../../features/presentation/pages/picture_page.dart';
import '../contants/route_list.dart';

class AppRouter {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  String get initialRoute => RouteList.home;

  List<Route> onGenerateInitialRoutes(String initialRoute) {
    return [getPageRoute(initialRoute, null)];
  }

  Route onGenerateRoute(RouteSettings routeSettings) {
    final String routeName = routeSettings.name ?? '';
    return getPageRoute(routeName, routeSettings.arguments);
  }

  Route getPageRoute(String routeName, Object? args) {
    switch (routeName) {
      case RouteList.home:
        return MaterialPageRoute(builder: (_) => const HomePage());
      case RouteList.picture:
        final DateTime date = args as DateTime;
        return MaterialPageRoute(builder: (_) => PicturePage( my_picture_page_args: date,));
      /* TODO Add case for PicturePage */
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for $routeName'),
            ),
          ),
        );
    }
  }
}
