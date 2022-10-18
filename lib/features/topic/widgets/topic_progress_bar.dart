import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/utils/extensions/build_context_extensions.dart';
import '../../../core/utils/extensions/widget_extensions.dart';
import '../../../core/utils/func/functions.dart';
import '../../../core/widgets/progress_bar/animated_progress_bar.dart';
import '../../auth/providers/user_providers.dart';
import '../model/topic/topic_model.dart';

class TopicProgressBar extends ConsumerWidget {
  const TopicProgressBar({super.key, required this.topic});

  final TopicModel? topic;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final solvedQuizzes =
        ref.watch(appUserStreamProvider.select((s) => s.value?.solvedQuizzes));

    final totalQuizzes = topic?.quizzes?.length ?? 0;
    final solvedQuizIds = solvedQuizzes?[topic?.id] as List<dynamic>?;
    final completedQuizzes = solvedQuizIds?.length ?? 0;

    return Row(
      children: [
        Text(
          '$completedQuizzes / $totalQuizzes',
          style: context.textTheme.caption?.copyWith(fontSize: 10),
        ).padding(0, 0, 6),
        AnimatedProgressbar(
          value: Func.calculateProgress(completedQuizzes, totalQuizzes),
          height: 8,
        ).expanded(),
      ],
    );
  }
}
