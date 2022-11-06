import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

import '../widgets/account_widget.dart';
import '../widgets/preferences_widget.dart';
import '../widgets/support_widget.dart';
import '../widgets/user_details_widget.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    const widgets = [
      UserDetailsWidget(),
      PreferencesWidget(),
      SupportWidget(),
      AccountWidget(),
    ];

    return Scaffold(
      body: AnimationLimiter(
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.fromLTRB(32, 24, 32, 32),
          itemCount: widgets.length,
          itemBuilder: (context, index) {
            return AnimationConfiguration.staggeredList(
              position: index,
              duration: const Duration(milliseconds: 375),
              child: SlideAnimation(
                verticalOffset: 50,
                child: FadeInAnimation(
                  child: widgets[index],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
