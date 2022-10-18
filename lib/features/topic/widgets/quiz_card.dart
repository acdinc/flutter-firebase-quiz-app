import 'package:flutter/material.dart';

import '../../../core/utils/extensions/widget_extensions.dart';
import '../../../core/utils/styles/styles.dart';
import '../../../core/widgets/text/custom_text.dart';
import '../../quiz/models/quiz/quiz_model.dart';
import 'quiz_badge.dart';

class QuizCard extends StatelessWidget {
  const QuizCard({
    super.key,
    required this.index,
    required this.quiz,
  });

  final int index;
  final QuizModel quiz;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CustomText.quizCardQuizNo(index, context),
      title: CustomText.quizCardQuizTitle(quiz.title ?? '', context),
      trailing: QuizBadge(quiz: quiz),
      contentPadding: Styles.quizCardContentPadding,
    ).decoration(Styles.quizCardBoxDecoration(context));
  }
}
