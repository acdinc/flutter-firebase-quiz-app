import 'package:firebase_services/firebase_services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/providers/global_providers.dart';
import '../../../core/third_party/custom_logger.dart';
import '../models/user/user_model.dart';
import '../service/user_service.dart';
import 'user_providers.dart';

final registerButtonControllerProvider =
    StateNotifierProvider<RegisterButtonController, AsyncValue<void>>((ref) {
  final firebaseAuthService = ref.watch(firebaseAuthServiceProvider);
  final userService = ref.watch(userServiceProvider);

  return RegisterButtonController(
    firebaseAuthService: firebaseAuthService,
    userService: userService,
  );
});

class RegisterButtonController extends StateNotifier<AsyncValue<void>> {
  RegisterButtonController({
    required IFirebaseAuthService firebaseAuthService,
    required UserService userService,
  })  : _firebaseAuthService = firebaseAuthService,
        _userService = userService,
        super(const AsyncValue.data(null));

  final IFirebaseAuthService _firebaseAuthService;
  final UserService _userService;

  Future<void> call() async {
    state = const AsyncValue.loading();

    state = await AsyncValue.guard(() async {
      final firebaseUser = await _firebaseAuthService.anonSignIn();
      if (firebaseUser == null) throw Exception('firebase user is null');

      CustomLogger.log('firebase user created --> $firebaseUser');
      final now = DateTime.now();

      final user = UserModel(
        id: firebaseUser.uid,
        createDate: now,
        lastActivityDate: now,
      );

      CustomLogger.log('new user created --> $user');
      await _userService.create(user);
    });
  }
}
