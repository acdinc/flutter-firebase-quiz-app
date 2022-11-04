import 'package:flutter/material.dart';

import 'features/auth/pages/splash_page.dart';

class MyAwesomeApp extends StatelessWidget {
  const MyAwesomeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Quiz App',
      home: SplashPage(),
    );
  }
}
