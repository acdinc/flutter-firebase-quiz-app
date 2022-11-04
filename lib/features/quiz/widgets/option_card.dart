import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/utils/extensions/build_context_extensions.dart';
import '../../../core/utils/styles/styles.dart';
import '../models/option/option_model.dart';
import '../providers/quiz_providers.dart';

class OptionCard extends StatelessWidget {
  const OptionCard({super.key, required this.option});

  final OptionModel option;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: Styles.defaultPadding / 2,
      ),
      padding: const EdgeInsets.all(Styles.defaultPadding),
      decoration: _decoration(context),
      child: Row(
        children: [
          _CheckBox(option: option),
          const SizedBox(width: Styles.defaultPadding),
          Expanded(
            child: Text(option.text!, style: context.textTheme.bodyMedium),
          ),
        ],
      ),
    );
  }

  BoxDecoration _decoration(BuildContext context) {
    return BoxDecoration(
      color: context.colorScheme.onPrimary,
      borderRadius: BorderRadius.circular(Styles.defaultRadius),
      boxShadow: context.isDarkTheme
          ? null
          : [const BoxShadow(blurRadius: 0.1, color: Colors.black12)],
    );
  }
}

class _CheckBox extends ConsumerWidget {
  const _CheckBox({required this.option});

  final OptionModel option;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(quizControllerProvider);

    return Icon(
      state != null && state == option
          ? Icons.check_circle
          : Icons.circle_outlined,
      color: context.primaryColor.withOpacity(0.2),
    );
  }
}
