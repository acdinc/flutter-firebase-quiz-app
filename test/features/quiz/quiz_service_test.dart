import 'package:fake_cloud_firestore/fake_cloud_firestore.dart';
import 'package:flutter_firebase_quiz_app/features/quiz/service/quiz_service.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../data/sample_data.dart';

void main() {
  late QuizService quizService;

  setUp(() {
    final fakeFirestore = FakeFirebaseFirestore();
    quizService = QuizServiceImpl(fakeFirestore);
  });

  test('Read quiz function should work.', () async {
    // Save quiz data to the database and then read
    await quizService.create(quiz);
    final quizLast = await quizService.readOne(quizId);

    // Verify that both datas are same
    expect(quizLast?.id, quizId);
  });
}
