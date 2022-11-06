import 'package:flutter/material.dart';

import '../../../core/utils/extensions/build_context_extensions.dart';
import '../../../core/utils/extensions/widget_extensions.dart';

class SettingsCardWrapper extends StatelessWidget {
  const SettingsCardWrapper({
    super.key,
    this.title,
    required this.cards,
  });

  final String? title;
  final List<Widget> cards;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (title != null)
          Text(title!, style: context.textTheme.caption)
              .align(Alignment.centerLeft)
              .padding(0, 0, 0, 16),
        Container(
          margin: const EdgeInsets.only(bottom: 32),
          padding: const EdgeInsets.fromLTRB(16, 12, 0, 12),
          width: double.infinity,
          decoration: BoxDecoration(
            color: context.colorScheme.onPrimary,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            children: cards,
          ),
        ),
      ],
    );
  }
}
