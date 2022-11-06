import 'package:flutter/cupertino.dart';

import '../../../core/third_party/custom_logger.dart';
import 'settings_card.dart';
import 'settings_card_wrapper.dart';

class PreferencesWidget extends StatelessWidget {
  const PreferencesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SettingsCardWrapper(
      title: 'Tercihler',
      cards: [
        SettingsCard(
          icon: CupertinoIcons.paintbrush,
          text: 'Temalar',
          // TODO(Ali): create theme notifier
          press: () => CustomLogger.log('theme changed'),
        ),
      ],
    );
  }
}
