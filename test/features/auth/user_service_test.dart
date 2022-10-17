import 'package:fake_cloud_firestore/fake_cloud_firestore.dart';
import 'package:flutter_firebase_quiz_app/features/auth/service/user_service.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../data/sample_data.dart';

void main() {
  late FakeFirebaseFirestore firestore;
  late UserService userService;

  setUp(() {
    firestore = FakeFirebaseFirestore();
    userService = UserServiceImpl(firestore: firestore);
  });

  group('Create user', () {
    test('should work.', () async {
      // Save user data to the database and then read
      await userService.create(anonUserWithId);
      final user = await userService.read(anonUserWithId.id!);

      // Verify that both datas are same
      expect(user?.id, anonUserWithId.id);
    });

    test('should fail.', () async {
      // Verify that user can not be created without uid
      expect(
        () => userService.create(anonUserWithoutId),
        throwsA(isA<TypeError>()),
      );
    });
  });

  test('Update user should work.', () async {
    // Update user data and then read
    final newAnonUser = anonUserWithId.copyWith(solvedQuizzes: newsolvedQuizzes);
    await userService.update(newAnonUser);

    final user = await userService.read(anonUserWithId.id!);

    // Verify that updated datas are correct
    expect(user?.solvedQuizzes, newsolvedQuizzes);
  });

  test('Delete user should work.', () async {
    // Delete user data from the database and then read
    await userService.delete(anonUserWithId.id!);
    final user = await userService.read(anonUserWithId.id!);

    // Verify that user data was deleted from the database
    expect(user, null);
  });
}
