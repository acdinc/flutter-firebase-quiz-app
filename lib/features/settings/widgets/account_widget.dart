import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/third_party/custom_snackbar.dart';
import '../../../core/widgets/navigation/custom_loading_widget.dart';
import '../providers/account_controller.dart';
import 'settings_card.dart';
import 'settings_card_wrapper.dart';

class AccountWidget extends ConsumerWidget {
  const AccountWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen<AsyncValue<void>>(accountControllerProvider, (_, state) {
      if (!state.isRefreshing && state.hasError) {
        CustomSnackbar.show(context: context, message: '${state.error}');
      }
    });

    final state = ref.watch(accountControllerProvider);
    final controller = ref.read(accountControllerProvider.notifier);

    return state.isLoading
        ? const CustomLoadingWidget()
        : SettingsCardWrapper(
            title: 'Hesap',
            cards: [
              SettingsCard(
                text: 'Çıkış Yap',
                icon: Icons.exit_to_app_outlined,
                press: controller.logout,
              ),
              const Divider(),
              SettingsCard(
                key: const Key('delete_account'),
                text: 'Hesabımı Sil',
                icon: Icons.delete_forever_outlined,
                press: controller.deleteAccount,
              ),
            ],
          );
  }
}
