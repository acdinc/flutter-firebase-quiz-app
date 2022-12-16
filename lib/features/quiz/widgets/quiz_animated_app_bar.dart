import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/utils/extensions/build_context_extensions.dart';
import '../../../core/utils/styles/styles.dart';
import '../../../core/widgets/progress_bar/animated_progress_bar.dart';
import '../providers/progress_provider.dart';
import '../providers/quiz_providers.dart';

class QuizAnimatedAppBar extends ConsumerWidget with PreferredSizeWidget {
  const QuizAnimatedAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final progress = ref.watch(progressProvider);

    return AppBar(
      title: DecoratedBox(
        decoration: _boxDecoration(context),
        child: AnimatedProgressbar(value: progress),
      ),
      leading: IconButton(
        icon: Icon(
          Icons.adaptive.arrow_back,
          color: context.theme.disabledColor,
        ),
        onPressed: () {
          final controller = ref.read(quizControllerProvider.notifier);

          controller.isFirstQuestion
              ? context.router.pop()
              : controller.previousPage();
        },
      ),
      actions: [
        IconButton(
          icon: Icon(Icons.close, color: context.theme.disabledColor),
          onPressed: context.router.pop,
        ),
        const SizedBox(width: 4),
      ],
      backgroundColor: context.scaffoldBgColor,
      scrolledUnderElevation: 0,
      elevation: 0,
      systemOverlayStyle: SystemUiOverlayStyle.light,
    );
  }

  BoxDecoration _boxDecoration(BuildContext context) {
    return BoxDecoration(
      color: context.colorScheme.onPrimary,
      borderRadius: BorderRadius.circular(Styles.defaultRadius),
      boxShadow: context.isDarkTheme
          ? null
          : const [
              BoxShadow(
                blurRadius: 10,
                color: Styles.black12,
                offset: Offset(0, 2),
              ),
            ],
    );
  }
}
