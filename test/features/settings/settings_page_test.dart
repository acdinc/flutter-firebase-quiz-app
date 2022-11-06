import 'package:fake_cloud_firestore/fake_cloud_firestore.dart';
import 'package:firebase_auth_mocks/firebase_auth_mocks.dart';
import 'package:firebase_services/firebase_services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase_quiz_app/core/providers/global_providers.dart';
import 'package:flutter_firebase_quiz_app/features/settings/page/settings_page.dart';
import 'package:flutter_firebase_quiz_app/features/settings/widgets/settings_card.dart';
import 'package:flutter_firebase_quiz_app/features/settings/widgets/settings_card_wrapper.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late FirebaseAuth firebaseAuth;
  late FakeFirebaseFirestore fakeFirestore;

  setUp(() async {
    final mockUser = MockUser(uid: 'someuid');
    firebaseAuth = MockFirebaseAuth(signedIn: true, mockUser: mockUser);

    fakeFirestore = FakeFirebaseFirestore();
  });

  testWidgets('Settings Page should show settings cards',
      (WidgetTester tester) async {
    // Build our app with mock auth provider and trigger a frame.
    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          firebaseAuthProvider.overrideWithValue(firebaseAuth),
          firestoreProvider.overrideWithValue(fakeFirestore),
        ],
        child: const MaterialApp(
          home: SettingsPage(),
        ),
      ),
    );

    // Verify that SettingsCard are showing.
    expect(find.byType(SettingsCardWrapper), findsWidgets);
    expect(find.byType(SettingsCard), findsWidgets);
  });
}
