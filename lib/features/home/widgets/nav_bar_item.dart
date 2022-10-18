import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/utils/extensions/build_context_extensions.dart';
import '../provider/home_state_provider.dart';

class NavBarItem extends ConsumerWidget {
  const NavBarItem({
    super.key,
    required this.icon,
    required this.index,
  });

  final IconData icon;
  final int index;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(homeTabsIndexProvider);
    final controller = ref.read(homeTabsIndexProvider.notifier);

    return IconButton(
      onPressed: () => controller.state = index,
      icon: Icon(
        icon,
        color: state == index
            ? context.primaryColor
            : context.theme.disabledColor.withOpacity(0.3),
      ),
    );
  }
}
