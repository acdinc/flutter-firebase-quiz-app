import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/utils/extensions/build_context_extensions.dart';
import '../../../core/utils/extensions/widget_extensions.dart';
import '../../../core/utils/styles/styles.dart';
import '../../auth/providers/user_providers.dart';

class UserDetailsWidget extends ConsumerWidget {
  const UserDetailsWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final firebaseUser = ref.watch(firebaseUserStreamProvider).value;
    final profilePic = firebaseUser?.photoURL;
    final isAnonymous = firebaseUser?.isAnonymous ?? true;

    return Column(
      children: [
        CircleAvatar(
          radius: Styles.defaultRadius * 2,
          backgroundColor: context.primaryColor.withOpacity(0.2),
          child: profilePic == null
              ? Icon(
                  Icons.person,
                  color: context.primaryColor,
                )
              : Image.network(profilePic),
        ),
        SelectableText(
          '${isAnonymous ? 'Misafir Kullanici' : firebaseUser?.displayName}',
          style: context.textTheme.caption,
        ).padding(0, 16, 0, 8),
        if (!isAnonymous)
          SelectableText(
            'Email: ${firebaseUser?.email}',
            style: context.textTheme.caption,
          ),
      ],
    ).padding(0, 16, 0, 32);
  }
}
