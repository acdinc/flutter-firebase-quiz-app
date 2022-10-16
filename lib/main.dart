import 'package:flutter/material.dart';

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

void main() => runApp(const MyAwesomeApp());

class MyAwesomeApp extends StatelessWidget {
  const MyAwesomeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Quiz App'),
        ),
        body: const Center(
          child: Text('Quiz App'),
        ),
      ),
    );
  }
}
