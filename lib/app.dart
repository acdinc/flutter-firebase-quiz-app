import 'package:flutter/material.dart';

import 'config/router/app_router.dart';

class MyAwesomeApp extends StatelessWidget {
  MyAwesomeApp({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Quiz App',
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}
