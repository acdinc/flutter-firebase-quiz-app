import 'package:flutter/material.dart';

import '../../utils/styles/styles.dart';

class CustomBottomSheet {
  CustomBottomSheet._();

  static Future<bool?> show(BuildContext context, Widget child) {
    return showModalBottomSheet<bool>(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(Styles.defaultRadius),
        ),
      ),
      builder: (BuildContext context) => child,
    );
  }
}
