import 'dart:async';

import 'package:firebase_services/firebase_services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/providers/global_providers.dart';
import '../../../core/third_party/custom_logger.dart';
import '../../auth/providers/user_providers.dart';
import '../../auth/service/user_service.dart';

final accountControllerProvider =
    StateNotifierProvider<AccountController, AsyncValue<void>>((ref) {
  final user = ref.watch(firebaseUserStreamProvider).value;
  final firebaseAuthService = ref.watch(firebaseAuthServiceProvider);
  final userService = ref.read(userServiceProvider);

  return AccountController(
    user: user,
    firebaseAuthService: firebaseAuthService,
    userService: userService,
  );
});

class AccountController extends StateNotifier<AsyncValue<void>> {
  AccountController({
    required User? user,
    required IFirebaseAuthService firebaseAuthService,
    required UserService userService,
  })  : _user = user,
        _firebaseAuthService = firebaseAuthService,
        _userService = userService,
        super(const AsyncValue.data(null));

  final User? _user;
  final IFirebaseAuthService _firebaseAuthService;
  final UserService _userService;

  void logout() {
    state = const AsyncValue.loading();

    try {
      CustomLogger.log('user is logging out');
      _firebaseAuthService.signOut();
    } catch (e, s) {
      state = AsyncValue.error(e, s);
    }
  }

  Future<void> deleteAccount() async {
    state = const AsyncValue.loading();

    state = await AsyncValue.guard(() async {
      if (_user == null) return;
      CustomLogger.log('user account is deleting');
      unawaited(_userService.delete(_user!.uid));
      unawaited(_firebaseAuthService.deleteAccount());
    });
  }
}
