import 'package:fake_cloud_firestore/fake_cloud_firestore.dart';
import 'package:flutter_firebase_quiz_app/features/topic/model/topic/topic_model.dart';
import 'package:flutter_firebase_quiz_app/features/topic/service/topic_service.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../data/sample_data.dart';

void main() {
  late TopicService topicService;

  setUp(() {
    final fakeFirestore = FakeFirebaseFirestore();
    topicService = TopicServiceImpl(fakeFirestore);
  });

  test('Read topics function should work.', () async {
    // Save topic data to the database and then read
    await topicService.create(topic);
    final topics = await topicService.readAll();

    // Verify that both datas are same
    expect(topics.first, TopicModel.fromJson(topic));
  });
}
