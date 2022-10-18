import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/utils/extensions/build_context_extensions.dart';
import '../../../core/utils/styles/styles.dart';
import '../../auth/providers/user_providers.dart';
import '../../quiz/models/quiz/quiz_model.dart';

class QuizBadge extends ConsumerWidget {
  const QuizBadge({super.key, required this.quiz});

  final QuizModel quiz;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final solvedQuizzes = ref.watch(
      appUserStreamProvider.select((s) => s.value?.solvedQuizzes),
    );

    final solvedQuizzesUnderThisTopic =
        solvedQuizzes?[quiz.topic] as List<dynamic>?;

    final isFinished = solvedQuizzesUnderThisTopic?.contains(quiz.id) ?? false;

    return Icon(
      isFinished ? CupertinoIcons.check_mark_circled : CupertinoIcons.circle,
      color: isFinished
          ? Styles.correctAnswerColor.withOpacity(0.75)
          : context.theme.dividerColor,
    );
  }
}
