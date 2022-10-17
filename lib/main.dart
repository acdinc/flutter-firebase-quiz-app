import 'package:firebase_services/firebase_services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'app.dart';
import 'core/firebase/firebase_options.dart';
import 'core/providers/provider_observer.dart';
import 'core/utils/styles/styles.dart';

/*
Code with ❤️
┌──────────────────────────┐
│ Created by Ali Cuma Dinç │
│ ──────────────────────── │
│ alcmdnc@gmail.com        │
│ ──────────────────────── │
│ 16.10.2022               │
└──────────────────────────┘
*/

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  await Styles.setPreferredOrientations();

  runApp(
    ProviderScope(
      observers: [AppProviderObserver()],
      child: const MyAwesomeApp(),
    ),
  );
}
