import 'package:go_router/go_router.dart';

import '../apps/navigation/nav_routes.dart';

class NavigationService {
  void go(String route) {
    navigatorKey.currentContext!.go(route);
  }

  void push(String route) {
    navigatorKey.currentContext?.push(route);
  }

  void replace(String route) {
    navigatorKey.currentContext?.pushReplacement(route);
  }
}