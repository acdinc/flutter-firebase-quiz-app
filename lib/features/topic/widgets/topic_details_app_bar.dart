import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/utils/extensions/build_context_extensions.dart';

class TopicDetailsAppBar extends ConsumerWidget with PreferredSizeWidget {
  const TopicDetailsAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return PreferredSize(
      preferredSize: preferredSize,
      child: AppBar(
        backgroundColor: context.scaffoldBgColor,
        elevation: 0,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(
            CupertinoIcons.arrow_left,
            color: context.theme.disabledColor,
          ),
        ),
      ),
    );
  }
}
