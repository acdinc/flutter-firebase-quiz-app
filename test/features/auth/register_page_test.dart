import 'package:fake_cloud_firestore/fake_cloud_firestore.dart';
import 'package:firebase_auth_mocks/firebase_auth_mocks.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase_quiz_app/app.dart';
import 'package:flutter_firebase_quiz_app/core/providers/global_providers.dart';
import 'package:flutter_firebase_quiz_app/core/widgets/navigation/custom_loading_widget.dart';
import 'package:flutter_firebase_quiz_app/features/home/page/home_page.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets(
    'Register page and register button should work',
    (WidgetTester tester) async {
      // Added for timer error
      await tester.runAsync(
        () async {
          // Build our app with mock providers and trigger a frame.
          await tester.pumpWidget(
            ProviderScope(
              overrides: [
                firebaseAuthProvider.overrideWithValue(MockFirebaseAuth()),
                firestoreProvider.overrideWithValue(FakeFirebaseFirestore()),
              ],
              child: const MyAwesomeApp(),
            ),
          );

          // Verify that loading widget is shown.
          expect(find.byType(CustomLoadingWidget), findsOneWidget);

          // Trigger a frame for 1 second.
          await tester.pump(const Duration(seconds: 1));

          // Verify that register button text is Continue.
          expect(find.byKey(const Key('register_button')), findsOneWidget);
          expect(find.text('Continue'), findsOneWidget);

          // Tap the button and trigger a frame.
          await tester.tap(find.text('Continue'));
          await tester.pump();

          // Verify that user logged in and screen changed to home screen.
          expect(
            find.byKey(const Key('register_button')),
            findsNothing,
          );
          expect(find.byType(HomePage), findsOneWidget);
        },
      );
    },
  );
}
