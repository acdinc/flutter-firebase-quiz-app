import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/third_party/custom_snackbar.dart';
import '../../../core/widgets/button/auth_button.dart';
import '../providers/logout_button_controller.dart';

class LogoutButton extends ConsumerWidget {
  const LogoutButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen<AsyncValue<void>>(logoutButtonControllerProvider, (_, state) {
      if (!state.isRefreshing && state.hasError) {
        CustomSnackbar.show(context: context, message: '${state.error}');
      }
    });

    final state = ref.watch(logoutButtonControllerProvider);
    final controller = ref.read(logoutButtonControllerProvider.notifier);

    return AuthButton(
      key: const Key('logout_button'),
      isLoading: state.isLoading,
      onPressed: controller.call,
      buttonText: 'Logout',
      loadingButtonText: 'Processing..',
    );
  }
}
