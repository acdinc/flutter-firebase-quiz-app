import 'package:flutter/widgets.dart';

import '../../../core/utils/extensions/extensions.dart';
import '../../../core/utils/styles/styles.dart';
import '../../../core/widgets/animation/delayed_animation.dart';

class RegisterText extends StatelessWidget {
  const RegisterText(
    this.text, {
    super.key,
    required this.delay,
  });

  final int delay;
  final String text;

  @override
  Widget build(BuildContext context) {
    return DelayedAnimation(
      delay: Styles.defaultDelay * delay,
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: context.textTheme.headline5?.copyWith(
          color: context.colorScheme.onPrimaryContainer,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
