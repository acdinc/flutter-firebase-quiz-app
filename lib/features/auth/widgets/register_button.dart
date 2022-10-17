import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/third_party/custom_snackbar.dart';
import '../../../core/utils/extensions/extensions.dart';
import '../../../core/utils/styles/styles.dart';
import '../../../core/widgets/animation/delayed_animation.dart';
import '../../../core/widgets/button/auth_button.dart';
import '../providers/register_button_controller.dart';

class RegisterButton extends ConsumerWidget {
  const RegisterButton({super.key, required this.delay});

  final int delay;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen<AsyncValue<void>>(registerButtonControllerProvider, (_, state) {
      if (!state.isRefreshing && state.hasError) {
        CustomSnackbar.show(context: context, message: '${state.error}');
      }
    });

    final state = ref.watch(registerButtonControllerProvider);
    final controller = ref.read(registerButtonControllerProvider.notifier);

    return DelayedAnimation(
      delay: Styles.defaultDelay * delay,
      child: AuthButton(
        key: const Key('register_button'),
        isLoading: state.isLoading,
        onPressed: controller.call,
        buttonText: 'Continue',
        loadingButtonText: 'Processing..',
        buttonColor: context.colorScheme.onPrimary,
        textColor: context.primaryColor,
      ),
    );
  }
}
