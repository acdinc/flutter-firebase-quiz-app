import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/utils/styles/styles.dart';
import '../models/option/option_model.dart';

class QuizController extends StateNotifier<OptionModel?> {
  QuizController()
      : _controller = PageController(),
        super(null);

  late final PageController _controller;
  OptionModel? _selected;

  PageController get controller => _controller;
  OptionModel? get selected => _selected;
  bool get isFirstQuestion => _controller.page == 0;

  // ignore: avoid_setters_without_getters
  set setState(OptionModel model) => state = model;

  Future<void> nextPage() async {
    await _controller.nextPage(
      duration: const Duration(milliseconds: Styles.defaultDuration),
      curve: Curves.easeOut,
    );
  }

  Future<void> previousPage() async {
    await _controller.previousPage(
      duration: const Duration(milliseconds: Styles.defaultDuration),
      curve: Curves.easeOut,
    );
  }
}
