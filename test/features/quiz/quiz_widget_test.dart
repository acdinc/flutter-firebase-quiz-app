import 'package:fake_cloud_firestore/fake_cloud_firestore.dart';
import 'package:firebase_auth_mocks/firebase_auth_mocks.dart';
import 'package:firebase_services/firebase_services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase_quiz_app/core/providers/global_providers.dart';
import 'package:flutter_firebase_quiz_app/core/widgets/navigation/custom_loading_widget.dart';
import 'package:flutter_firebase_quiz_app/features/quiz/pages/quiz_page.dart';
import 'package:flutter_firebase_quiz_app/features/quiz/service/quiz_service.dart';
import 'package:flutter_firebase_quiz_app/features/quiz/widgets/start_page.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../data/sample_data.dart';

void main() {
  late FirebaseAuth firebaseAuth;
  late FakeFirebaseFirestore fakeFirestore;

  setUp(() async {
    final mockUser = MockUser(uid: 'someuid');
    firebaseAuth = MockFirebaseAuth(signedIn: true, mockUser: mockUser);

    fakeFirestore = FakeFirebaseFirestore();
    final quizService = QuizServiceImpl(fakeFirestore);

    await quizService.create(quiz);
  });

  testWidgets('Quiz Page should show quizzes', (WidgetTester tester) async {
    // Build our app with mock auth provider and trigger a frame.
    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          firebaseAuthProvider.overrideWithValue(firebaseAuth),
          firestoreProvider.overrideWithValue(fakeFirestore),
        ],
        child: const MaterialApp(
          home: QuizPage(id: quizId),
        ),
      ),
    );

    // Verify that loading widget is showing.
    expect(find.byType(CustomLoadingWidget), findsOneWidget);

    // Trigger a frame for 1 second.
    await tester.pump(const Duration(seconds: 1));

    // Verify that quiz page, start page and quiz start button are showing.
    expect(find.byType(StartPage), findsOneWidget);
    expect(find.byKey(const Key('quiz_start_button')), findsOneWidget);
  });
}
