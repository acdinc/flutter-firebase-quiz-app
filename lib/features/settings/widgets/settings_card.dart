import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/utils/extensions/build_context_extensions.dart';
import '../../../core/utils/extensions/widget_extensions.dart';
import '../../../core/widgets/text/custom_text.dart';

class SettingsCard extends StatelessWidget {
  const SettingsCard({
    super.key,
    required this.text,
    required this.icon,
    required this.press,
  });

  final String text;
  final IconData icon;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: context.theme.colorScheme.secondary,
          size: 16,
        ),
        const SizedBox(width: 16),
        CustomText.quizCardQuizTitle(text, context).expanded(),
        Icon(
          CupertinoIcons.chevron_forward,
          color: context.isDarkTheme ? Colors.white70 : Colors.grey.shade400,
          size: 14,
        ),
      ],
    ).padding(6, 4, 12, 4).onTap(press);
  }
}
