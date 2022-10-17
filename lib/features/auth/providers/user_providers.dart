import 'package:firebase_services/firebase_services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/providers/global_providers.dart';
import '../models/user/user_model.dart';
import '../service/user_service.dart';

final firebaseUserStreamProvider = StreamProvider<User?>((ref) {
  final firebaseAuthService = ref.watch(firebaseAuthServiceProvider);

  return firebaseAuthService.streamUser();
});

final appUserStreamProvider = StreamProvider<UserModel?>((ref) {
  final firebaseUserStream = ref.watch(firebaseUserStreamProvider);
  final userService = ref.watch(userServiceProvider);

  return firebaseUserStream.value == null
      ? const Stream.empty()
      : userService.stream(firebaseUserStream.value!.uid);
});

final userServiceProvider = Provider<UserService>((ref) {
  final firestore = ref.watch(firestoreProvider);

  return UserServiceImpl(firestore: firestore);
});
