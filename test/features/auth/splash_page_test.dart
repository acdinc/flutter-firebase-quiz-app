import 'package:fake_cloud_firestore/fake_cloud_firestore.dart';
import 'package:firebase_auth_mocks/firebase_auth_mocks.dart';
import 'package:flutter_firebase_quiz_app/app.dart';
import 'package:flutter_firebase_quiz_app/core/providers/global_providers.dart';
import 'package:flutter_firebase_quiz_app/core/widgets/navigation/custom_loading_widget.dart';
import 'package:flutter_firebase_quiz_app/features/auth/pages/register_page.dart';
import 'package:flutter_firebase_quiz_app/features/auth/widgets/register_button.dart';
import 'package:flutter_firebase_quiz_app/features/home/page/home_page.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group(
    'Splash Page',
    () {
      testWidgets(
        'should redirect to register page if user is not logged in',
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

              // Verify that loading widget is showing.
              expect(find.byType(CustomLoadingWidget), findsOneWidget);

              // Trigger a frame for 1 second.
              await tester.pump(const Duration(seconds: 1));

              // Verify that register screen and register button are shown.
              expect(find.byType(RegisterPage), findsOneWidget);
              expect(find.byType(RegisterButton), findsOneWidget);
              expect(find.byType(HomePage), findsNothing);
            },
          );
        },
      );

      testWidgets(
        'should redirect to home page if user is logged in',
        (WidgetTester tester) async {
          // Build our app with mock providers and trigger a frame.
          await tester.pumpWidget(
            ProviderScope(
              overrides: [
                firebaseAuthProvider.overrideWithValue(MockFirebaseAuth(signedIn: true)),
                firestoreProvider.overrideWithValue(FakeFirebaseFirestore()),
              ],
              child: const MyAwesomeApp(),
            ),
          );

          // Verify that loading widget is showing.
          expect(find.byType(CustomLoadingWidget), findsOneWidget);

          // Trigger a frame for 1 second.
          await tester.pump(const Duration(seconds: 1));

          // Verify that home screen is shown.
          expect(find.byType(RegisterPage), findsNothing);
          expect(find.byType(RegisterButton), findsNothing);
          expect(find.byType(HomePage), findsOneWidget);
        },
      );
    },
  );
}
