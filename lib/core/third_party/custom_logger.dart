import 'dart:developer' as developer;

import 'package:flutter/foundation.dart';

class CustomLogger {
  CustomLogger._();

  static void log(
    String message, {
    int level = 0,
    String name = '',
    Object? error,
    StackTrace? stackTrace,
  }) {
    if (kReleaseMode) return;
    return developer.log(
      message,
      level: level,
      name: name,
      error: error,
      stackTrace: stackTrace,
    );
  }
}
