import 'package:flutter/material.dart';

import '../../../core/utils/extensions/widget_extensions.dart';
import '../../../core/utils/styles/styles.dart';
import '../../../core/widgets/text/custom_text.dart';
import '../model/topic/topic_model.dart';
import 'topic_progress_bar.dart';

class TopicCard extends StatelessWidget {
  const TopicCard({super.key, required this.topic});

  final TopicModel topic;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(topic.imagePath).hero(topic.imagePath).expanded(),
        CustomText.topicCardText(topic.text!, context).padding(0, 8, 0, 4),
        TopicProgressBar(topic: topic),
      ],
    ).padding(12, 6, 10, 6).decoration(Styles.topicCardBoxDecoration(context));
  }
}
