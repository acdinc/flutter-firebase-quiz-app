import 'package:flutter/material.dart';

import '../../utils/extensions/build_context_extensions.dart';
import '../../utils/func/functions.dart';
import '../../utils/styles/styles.dart';

class AnimatedProgressbar extends StatelessWidget {
  const AnimatedProgressbar({super.key, required this.value, this.height});

  final double value;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints box) {
        final barHeight = height ?? Styles.defaultPadding * 0.75;
        const barRadius = Styles.defaultRadius;

        return Container(
          padding: const EdgeInsets.all(Styles.defaultPadding / 4),
          width: box.maxWidth,
          child: Stack(
            children: [
              Container(
                height: barHeight,
                decoration: BoxDecoration(
                  color: context.primaryColor.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(barRadius),
                ),
              ),
              AnimatedContainer(
                duration: const Duration(
                  milliseconds: Styles.defaultDelay * 2,
                ),
                curve: Curves.easeOutCubic,
                height: barHeight,
                width: box.maxWidth * (Func.floor(value)),
                decoration: BoxDecoration(
                  color: Func.colorGen(value),
                  borderRadius: BorderRadius.circular(barRadius),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
