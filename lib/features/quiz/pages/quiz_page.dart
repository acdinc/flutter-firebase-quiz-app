import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/widgets/navigation/custom_error_widget.dart';
import '../../../core/widgets/navigation/custom_loading_widget.dart';
import '../models/quiz/quiz_model.dart';
import '../providers/progress_provider.dart';
import '../providers/quiz_providers.dart';
import '../widgets/end_page.dart';
import '../widgets/question_page.dart';
import '../widgets/quiz_animated_app_bar.dart';
import '../widgets/start_page.dart';

class QuizPage extends ConsumerWidget {
  const QuizPage({super.key, required this.id});

  final String id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(readQuizFutureProvider(id));

    return Scaffold(
      appBar: const QuizAnimatedAppBar(),
      body: state.when(
        loading: () => const CustomLoadingWidget(),
        error: (e, s) => const CustomErrorWidget(),
        data: (data) => _Body(quiz: data!),
      ),
    );
  }
}

class _Body extends ConsumerWidget {
  const _Body({required this.quiz});

  final QuizModel quiz;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final questions = quiz.questions;
    final quizLength = questions!.length;

    return PageView.builder(
      physics: const NeverScrollableScrollPhysics(),
      scrollDirection: Axis.vertical,
      itemCount: quizLength + 2,
      controller: ref.read(quizControllerProvider.notifier).controller,
      onPageChanged: (int index) {
        ref.read(progressProvider.notifier).state = index / (quizLength + 1);
      },
      itemBuilder: (BuildContext context, int index) {
        if (index == 0) {
          return StartPage(quiz: quiz);
        } else if (index == quizLength + 1) {
          return EndPage(quiz: quiz);
        } else {
          return QuestionPage(question: questions[index - 1]);
        }
      },
    );
  }
}
