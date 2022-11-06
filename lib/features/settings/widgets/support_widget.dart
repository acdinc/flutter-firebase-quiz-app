import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../config/constants/app_constants.dart';
import '../../../core/third_party/in_app_review_manager.dart';
import '../../../core/third_party/share_manager.dart';
import 'settings_card.dart';
import 'settings_card_wrapper.dart';

class SupportWidget extends StatelessWidget
    with ShareManager, InAppReviewManager {
  const SupportWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SettingsCardWrapper(
      title: 'Destek',
      cards: [
        SettingsCard(
          icon: CupertinoIcons.star,
          text: 'Uygulamaya Puan Ver',
          press: () => openStoreListing(appStoreId: AppConstants.appStoreId),
        ),
        const Divider(),
        SettingsCard(
          text: 'Uygulamayı Paylaş',
          icon: Icons.adaptive.share_outlined,
          press: () => share(context, AppConstants.storeUrl),
        ),
      ],
    );
  }
}
