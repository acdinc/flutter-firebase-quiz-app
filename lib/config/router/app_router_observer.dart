import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class AppNavigationObserver extends AutoRouterObserver {
  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) =>
      log('New route pushed: ${route.settings.name}');

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) => log(
        'Route popped: ${previousRoute?.settings.name} <- ${route.settings.name}',
      );

  @override
  void didRemove(Route<dynamic> route, Route<dynamic>? previousRoute) => log(
        'Route removed: ${previousRoute?.settings.name} <- ${route.settings.name}',
      );

  @override
  void didReplace({Route<dynamic>? newRoute, Route<dynamic>? oldRoute}) => log(
        'New route pushed: ${oldRoute?.settings.name} ->  ${newRoute?.settings.name}',
      );

  @override
  void didInitTabRoute(TabPageRoute route, TabPageRoute? previousRoute) =>
      log('Tab route visited: ${route.name}');

  @override
  void didChangeTabRoute(TabPageRoute route, TabPageRoute previousRoute) =>
      log('Tab route re-visited: ${route.name}');
}
