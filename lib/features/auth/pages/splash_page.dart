import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/widgets/navigation/custom_error_widget.dart';
import '../../../core/widgets/navigation/custom_loading_widget.dart';
import '../../home/page/home_page.dart';
import '../providers/user_providers.dart';
import 'register_page.dart';

class SplashPage extends ConsumerWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(firebaseUserStreamProvider);

    return Scaffold(
      body: user.when(
        loading: () => const CustomLoadingWidget(),
        error: (e, s) => const CustomErrorWidget(),
        data: (data) => data == null ? const RegisterPage() : const HomePage(),
      ),
    );
  }
}
