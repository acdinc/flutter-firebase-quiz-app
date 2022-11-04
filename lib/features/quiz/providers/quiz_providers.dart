import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/providers/global_providers.dart';
import '../models/option/option_model.dart';
import '../models/quiz/quiz_model.dart';
import '../service/quiz_service.dart';
import 'quiz_controller.dart';

final readQuizFutureProvider =
    FutureProvider.family.autoDispose<QuizModel?, String>((ref, id) async {
  final service = ref.read(quizServiceProvider);

  return service.readOne(id);
});

final quizControllerProvider =
    StateNotifierProvider<QuizController, OptionModel?>(
  (_) => QuizController(),
);

final quizServiceProvider = Provider<QuizService>((ref) {
  final firestore = ref.watch(firestoreProvider);

  return QuizServiceImpl(firestore);
});
