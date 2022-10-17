import 'package:flutter/material.dart';

import '../../auth/widgets/logout_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomePage'),
      ),
      body: const Center(
        child: LogoutButton(),
      ),
    );
  }
}
