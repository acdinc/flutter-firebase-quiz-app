import 'package:flutter/material.dart';

import '../../../core/utils/styles/styles.dart';
import '../page/home_page.dart';

class HomeBottomNavBar extends StatelessWidget {
  const HomeBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: Styles.defaultPadding / 2),
      decoration: Styles.homeBottomNavBarBoxDecoration(context),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: pages.values.toList(),
      ),
    );
  }
}
