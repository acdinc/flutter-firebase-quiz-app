import 'package:firebase_auth_mocks/firebase_auth_mocks.dart';
import 'package:firebase_services/firebase_services.dart';
import 'package:flutter_firebase_quiz_app/app.dart';
import 'package:flutter_firebase_quiz_app/core/providers/global_providers.dart';
import 'package:flutter_firebase_quiz_app/core/widgets/navigation/custom_loading_widget.dart';
import 'package:flutter_firebase_quiz_app/features/auth/pages/splash_page.dart';
import 'package:flutter_firebase_quiz_app/features/home/page/home_page.dart';
import 'package:flutter_firebase_quiz_app/features/topic/pages/topics_page.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late FirebaseAuth firebaseAuth;

  setUp(() {
    final mockUser = MockUser(uid: 'someuid');
    firebaseAuth = MockFirebaseAuth(signedIn: true, mockUser: mockUser);
  });

  testWidgets(
    'Home Page should show topics on the first tab',
    (WidgetTester tester) async {
      // Build our app with mock auth provider and trigger a frame.
      await tester.pumpWidget(
        ProviderScope(
          overrides: [
            firebaseAuthProvider.overrideWithValue(firebaseAuth),
          ],
          child: MyAwesomeApp(),
        ),
      );

      // Verify that loading widget is showing.
      expect(find.byType(CustomLoadingWidget), findsOneWidget);

      // Trigger a frame for 1 second.
      await tester.pump(const Duration(seconds: 1));

      // Verify that home page and topics tab are showing after splash.
      expect(find.byType(SplashPage), findsOneWidget);
      expect(find.byType(HomePage), findsOneWidget);
      expect(find.byType(TopicsPage), findsOneWidget);
    },
  );
}
