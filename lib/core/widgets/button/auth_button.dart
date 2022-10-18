import 'package:flutter/material.dart';

import '../../utils/extensions/build_context_extensions.dart';
import '../../utils/styles/styles.dart';

class AuthButton extends StatelessWidget {
  const AuthButton({
    super.key,
    required this.isLoading,
    required this.onPressed,
    required this.buttonText,
    this.loadingButtonText,
    this.padding,
    this.buttonColor,
    this.textColor,
  });

  final bool isLoading;
  final VoidCallback onPressed;
  final String buttonText;
  final String? loadingButtonText;
  final EdgeInsetsGeometry? padding;
  final Color? buttonColor;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? const EdgeInsets.all(Styles.defaultPadding * 2),
      child: ElevatedButton(
        style: _buttonStyle(context),
        onPressed: isLoading ? () {} : onPressed,
        child: Text(
          isLoading ? (loadingButtonText ?? buttonText) : buttonText,
          style: TextStyle(color: textColor ?? context.colorScheme.surface),
        ),
      ),
    );
  }

  ButtonStyle _buttonStyle(BuildContext context) {
    return ElevatedButton.styleFrom(
      backgroundColor: buttonColor ?? context.primaryColor.withOpacity(0.8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Styles.defaultRadius),
      ),
      padding: const EdgeInsets.symmetric(vertical: Styles.defaultPadding),
    );
  }
}
