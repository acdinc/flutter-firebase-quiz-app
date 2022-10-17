import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../core/utils/extensions/extensions.dart';
import '../../../core/utils/styles/styles.dart';
import '../widgets/register_button.dart';
import '../widgets/register_text.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: Styles.systemUiOverlayStyle(context),
      child: Scaffold(
        backgroundColor: context.primaryColor,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: const [
            Styles.spacer2,
            RegisterText('Hi !', delay: 2),
            Styles.spacer1,
            RegisterText('Welcome', delay: 3),
            Styles.spacer1,
            RegisterText('Lets start', delay: 4),
            Styles.spacer2,
            RegisterButton(delay: 5),
          ],
        ),
      ),
    );
  }
}
