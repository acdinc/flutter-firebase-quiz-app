import 'package:firebase_services/firebase_services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/providers/global_providers.dart';
import '../../../core/third_party/custom_logger.dart';

final logoutButtonControllerProvider =
    StateNotifierProvider<LogoutButtonController, AsyncValue<void>>((ref) {
  final firebaseAuthService = ref.watch(firebaseAuthServiceProvider);

  return LogoutButtonController(firebaseAuthService: firebaseAuthService);
});

class LogoutButtonController extends StateNotifier<AsyncValue<void>> {
  LogoutButtonController({
    required IFirebaseAuthService firebaseAuthService,
  })  : _firebaseAuthService = firebaseAuthService,
        super(const AsyncValue.data(null));

  final IFirebaseAuthService _firebaseAuthService;

  Future<void> call() async {
    state = const AsyncValue.loading();

    state = await AsyncValue.guard(() async {
      CustomLogger.log('user is logging out');
      await _firebaseAuthService.signOut();
    });
  }
}
