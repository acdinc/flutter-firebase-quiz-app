import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'features/auth/pages/splash_page.dart';

class MyAwesomeApp extends ConsumerWidget {
  const MyAwesomeApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const MaterialApp(
      title: 'Quiz App',
      home: SplashPage(),
    );
  }
}
