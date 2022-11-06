import 'package:flutter/material.dart';

class Func {
  static double calculateProgress(int completedQuizzes, int totalQuizzes) {
    try {
      final result = completedQuizzes / totalQuizzes;
      return result.isNaN || result.isInfinite ? 0.0 : result;
    } catch (e) {
      return 0;
    }
  }

  static double floor(double value, [double min = 0.0]) {
    return value.sign <= min ? min : value;
  }

  static Color colorGen(double value) {
    final rbg = (value * 255).toInt();
    return Colors.deepOrange.withGreen(rbg).withRed(255 - rbg);
  }
}
