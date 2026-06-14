import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:scrole/page_index.dart';


final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
final router = GoRouter(
  navigatorKey: navigatorKey,
  routes: [
    GoRoute(path: '/', builder: (context, state) => ResponsiveCheck()),
  ],
);
