import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../config/router/app_router.dart';
import '../../../core/utils/extensions/build_context_extensions.dart';
import '../../../core/utils/extensions/widget_extensions.dart';
import '../../../core/utils/styles/styles.dart';
import '../../../core/widgets/text/custom_text.dart';
import '../../quiz/models/quiz/quiz_model.dart';
import '../model/topic/topic_model.dart';
import '../widgets/quiz_card.dart';
import '../widgets/topic_details_app_bar.dart';

class TopicDetailsPage extends StatelessWidget {
  const TopicDetailsPage({super.key, required this.topic});

  final TopicModel topic;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TopicDetailsAppBar(),
      body: Column(
        children: [
          Image.asset(
            topic.imagePath,
            height: context.dynamicHeight(0.3),
          ).hero(topic.imagePath),
          CustomText.topicDetailsTitle(topic.text!, context)
              .padding(0, 32, 0, 16),
          CustomText.topicDetailsSubTitle(
            'Bu konunun sınavdaki ağırlığı: %${topic.percent}',
            context,
          ),
          _Quizzes(quizzes: topic.quizzes ?? []).expanded(),
        ],
      ),
    );
  }
}

class _Quizzes extends StatelessWidget {
  const _Quizzes({required this.quizzes});

  final List<QuizModel?> quizzes;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const BouncingScrollPhysics(),
      padding: const EdgeInsets.all(Styles.defaultPadding * 2),
      itemCount: quizzes.length,
      separatorBuilder: (context, index) {
        return const SizedBox(height: Styles.defaultPadding);
      },
      itemBuilder: (context, index) {
        final quiz = quizzes[index];

        return quiz == null
            ? Styles.emptyWidget
            : GestureDetector(
                onTap: () => context.router.push(QuizRoute(id: quiz.id!)),
                child: QuizCard(index: index, quiz: quiz),
              );
      },
    );
  }
}
