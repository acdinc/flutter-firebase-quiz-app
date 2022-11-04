import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/third_party/custom_snackbar.dart';
import '../../../core/utils/extensions/widget_extensions.dart';
import '../../../core/utils/gen/assets.gen.dart';
import '../../../core/utils/styles/styles.dart';
import '../../../core/widgets/button/auth_button.dart';
import '../models/quiz/quiz_model.dart';
import '../providers/finish_quiz_controller.dart';

class EndPage extends ConsumerWidget {
  const EndPage({super.key, required this.quiz});

  final QuizModel quiz;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen<AsyncValue<void>>(finishQuizControllerProvider, (_, state) {
      state.whenOrNull(
        error: (e, s) => CustomSnackbar.show(context: context, message: '$e'),
      );
    });

    final state = ref.watch(finishQuizControllerProvider);
    final controller = ref.read(finishQuizControllerProvider.notifier);

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const SizedBox(height: Styles.defaultPadding),
        Text(
          'Tebrikler! ${quiz.title ?? 'test'} adlı test sona erdi.',
          textAlign: TextAlign.center,
        ).padding(32, 0, 32),
        Assets.lottie.congrats.lottie(),
        AuthButton(
          isLoading: state.isLoading,
          onPressed: () => controller.call(context, quiz),
          buttonText: 'Testi bitir',
          loadingButtonText: 'Processing..',
        ),
      ],
    );
  }
}
