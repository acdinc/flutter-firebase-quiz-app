import 'package:flutter/material.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

enum SnackBarType { error, info, success }

class CustomSnackbar {
  static void show({
    required BuildContext context,
    String? message,
    SnackBarType? snackBarType,
  }) {
    final msg = message ?? 'Unexpected Error!';

    showTopSnackBar(
      context,
      snackBarType == SnackBarType.success
          ? CustomSnackBar.success(message: msg)
          : snackBarType == SnackBarType.info
              ? CustomSnackBar.info(message: msg)
              : CustomSnackBar.error(message: msg),
    );
  }
}
