import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/utils/styles/styles.dart';
import '../../settings/page/settings_page.dart';
import '../../topic/pages/topics_page.dart';
import '../provider/home_state_provider.dart';
import '../widgets/home_app_bar.dart';
import '../widgets/home_bottom_nav_bar.dart';
import '../widgets/nav_bar_item.dart';

final Map<Widget, NavBarItem> pages = {
  const TopicsPage(): const NavBarItem(
    icon: CupertinoIcons.question_diamond,
    index: 0,
  ),
  const SettingsPage(): const NavBarItem(
    icon: CupertinoIcons.settings,
    index: 1,
  ),
};

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final index = ref.watch(homeTabsIndexProvider);

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: Styles.homeSystemUiOverlayStyle(),
      child: Scaffold(
        appBar: const HomeAppBar(),
        body: pages.keys.toList()[index],
        bottomNavigationBar: const HomeBottomNavBar(),
      ),
    );
  }
}
