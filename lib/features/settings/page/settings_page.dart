import 'package:flutter/material.dart';

import '../../auth/widgets/logout_button.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: LogoutButton()),
    );
  }
}
