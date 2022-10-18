import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

import '../../../core/utils/styles/styles.dart';
import '../../../core/widgets/navigation/custom_error_widget.dart';
import '../../../core/widgets/navigation/custom_loading_widget.dart';
import '../model/topic/topic_model.dart';
import '../providers/topic_providers.dart';
import '../widgets/topic_card.dart';
import 'topic_details_page.dart';

class TopicsPage extends ConsumerStatefulWidget {
  const TopicsPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _TopicsPageState();
}

class _TopicsPageState extends ConsumerState<TopicsPage>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);

    final topics = ref.watch(readTopicsFutureProvider);

    return Scaffold(
      body: topics.when(
        loading: () => const CustomLoadingWidget(),
        error: (error, stackTrace) => const CustomErrorWidget(),
        data: (data) => data == null || data.isEmpty
            ? Styles.emptyWidget
            : _Body(topics: data),
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({required this.topics});

  final List<TopicModel?> topics;

  @override
  Widget build(BuildContext context) {
    const padding = Styles.defaultPadding * 2;

    return AnimationLimiter(
      child: GridView.builder(
        gridDelegate: _gridDelegate(padding),
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.all(padding),
        itemCount: topics.length,
        itemBuilder: (context, index) {
          final topic = topics[index];

          return topic == null
              ? Styles.emptyWidget
              : _animatedList(index, topic);
        },
      ),
    );
  }

  AnimationConfiguration _animatedList(int index, TopicModel topic) {
    return AnimationConfiguration.staggeredGrid(
      columnCount: 2,
      position: index,
      duration: const Duration(milliseconds: Styles.defaultDuration),
      child: ScaleAnimation(
        child: FadeInAnimation(
          child: Consumer(
            builder: (context, ref, child) {
              return GestureDetector(
                onTap: () => _navigateToTopicDetailsPage(context, topic),
                child: TopicCard(topic: topic),
              );
            },
          ),
        ),
      ),
    );
  }

  SliverGridDelegateWithFixedCrossAxisCount _gridDelegate(double padding) {
    return SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      crossAxisSpacing: padding,
      mainAxisSpacing: padding,
    );
  }

  void _navigateToTopicDetailsPage(BuildContext context, TopicModel topic) {
    Navigator.push(
      context,
      MaterialPageRoute<void>(
        builder: (context) => TopicDetailsPage(topic: topic),
      ),
    );
  }
}
