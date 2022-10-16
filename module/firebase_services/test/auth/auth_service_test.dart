import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth_mocks/firebase_auth_mocks.dart';
import 'package:firebase_services/src/auth/firebase_auth_service.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  MockUser? user;
  late FirebaseAuth firebaseAuth;
  late IFirebaseAuthService authService;

  group('Anon sign in', () {
    test('should work.', () async {
      // arrange
      firebaseAuth = MockFirebaseAuth();
      authService = FirebaseAuthService(auth: firebaseAuth);

      // act
      final user = await authService.anonSignIn();

      // assert
      expect(user, isA<User>());
      expect(user?.isAnonymous, isTrue);
      expect(user?.uid, isNotNull);
    });

    test('should fail.', () async {
      // arrange
      firebaseAuth = MockFirebaseAuth(
        authExceptions: AuthExceptions(
          signInAnonymously: FirebaseAuthException(code: 'X'),
        ),
      );

      authService = FirebaseAuthService(auth: firebaseAuth);

      // assert
      expect(
        () async => authService.anonSignIn(),
        throwsA(isA<FirebaseAuthException>()),
      );
    });
  });

  group('User stream', () {
    test('should emit user after sign in.', () async {
      // arrange
      user = MockUser();
      firebaseAuth = MockFirebaseAuth(signedIn: true, mockUser: user);
      authService = FirebaseAuthService(auth: firebaseAuth);

      // assert
      expect(authService.streamUser(), emits(user));
    });

    test('should emit null after sign out.', () async {
      // arrange
      user = MockUser();
      firebaseAuth = MockFirebaseAuth(signedIn: true, mockUser: user);
      authService = FirebaseAuthService(auth: firebaseAuth);

      // act
      await authService.signOut();

      // assert
      expect(authService.streamUser(), emitsInOrder([user, null]));
    });
  });
}
