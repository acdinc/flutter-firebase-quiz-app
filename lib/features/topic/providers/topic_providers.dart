import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/providers/global_providers.dart';
import '../model/topic/topic_model.dart';
import '../service/topic_service.dart';

final readTopicsFutureProvider =
    FutureProvider<List<TopicModel?>?>((ref) async {
  final databaseService = ref.read(topicServiceProvider);

  return databaseService.readAll();
});

final topicServiceProvider = Provider<TopicService>((ref) {
  final firestore = ref.watch(firestoreProvider);

  return TopicServiceImpl(firestore);
});
