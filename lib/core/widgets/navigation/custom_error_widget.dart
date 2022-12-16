import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../utils/gen/assets.gen.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({
    super.key,
    this.errorMessage,
    this.buttonText,
    this.buttonPressed,
  });

  final String? errorMessage;
  final String? buttonText;
  final VoidCallback? buttonPressed;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Assets.lottie.errorPageNotFound.lottie(),
          _message,
          _button(context),
        ],
      ),
    );
  }

  Padding get _message {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Text(
        errorMessage ?? 'Unknown Error!',
        textAlign: TextAlign.center,
      ),
    );
  }

  OutlinedButton _button(BuildContext context) {
    return OutlinedButton(
      onPressed: buttonPressed ?? context.router.pop,
      child: Text(buttonText ?? 'Back'),
    );
  }
}
