import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/utils/extensions/widget_extensions.dart';
import '../../../core/utils/styles/styles.dart';
import '../../../core/widgets/text/custom_text.dart';

class HomeAppBar extends ConsumerWidget with PreferredSizeWidget {
  const HomeAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CustomText.homeAppBarTitle('Quiz App', context)
        .padding(0, 0, 0, 16)
        .align(Alignment.bottomCenter)
        .decoration(Styles.homeAppBarBoxDecoration(context))
        .preferredSize(preferredSize);
  }
}
