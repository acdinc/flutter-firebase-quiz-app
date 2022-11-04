import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/third_party/custom_logger.dart';
import '../../auth/models/user/user_model.dart';
import '../../auth/providers/user_providers.dart';
import '../../auth/service/user_service.dart';
import '../models/quiz/quiz_model.dart';

final finishQuizControllerProvider =
    StateNotifierProvider.autoDispose<FinishQuizController, AsyncValue<void>>(
        (ref) {
  final user = ref.watch(appUserStreamProvider).value;
  final service = ref.watch(userServiceProvider);

  return FinishQuizController(user: user, service: service);
});

class FinishQuizController extends StateNotifier<AsyncValue<void>> {
  FinishQuizController({
    required UserModel? user,
    required UserService service,
  })  : _user = user,
        _service = service,
        super(const AsyncValue.data(null));

  late final UserModel? _user;
  late final UserService _service;

  Future<void> call(BuildContext context, QuizModel quiz) async {
    state = const AsyncValue.loading();

    state = await AsyncValue.guard(() async {
      final solvedQuizIds =
          _user?.solvedQuizzes?[quiz.topic] as List<dynamic>? ?? [];

      final isFinished = solvedQuizIds.contains(quiz.id);

      if (!isFinished) {
        final newSolvedQuizzes = Map.of(_user!.solvedQuizzes!);
        final newSolvedQuizIds =
            newSolvedQuizzes[quiz.topic] as List<dynamic>? ?? [];

        final quizIds = newSolvedQuizIds..add(quiz.id);

        newSolvedQuizzes.addAll({quiz.topic!: quizIds});

        final newUser = _user!.copyWith(
          lastActivityDate: DateTime.now(),
          solvedQuizzes: newSolvedQuizzes,
        );

        // ignore: unawaited_futures
        _service.update(newUser);

        CustomLogger.log('finishQuiz: user data updated --> ${newUser.id}');
      }

      Navigator.pop(context);
      Navigator.pop(context);
    });
  }
}
