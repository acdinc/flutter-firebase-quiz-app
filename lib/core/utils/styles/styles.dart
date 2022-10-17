import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../extensions/extensions.dart';

class Styles {
  Styles._();

  static const zero = 0.0;
  static const defaultPadding = 16.0;
  static const defaultRadius = 14.0;
  static const defaultDelay = 500;
  static const defaultDuration = 400;

  static const transparentColor = Colors.transparent;
  static const black12 = Colors.black12;
  static final correctAnswerColor = Colors.green.shade300;
  static final wrongAnswerColor = Colors.red.shade300;

  static const emptyWidget = SizedBox.shrink();
  static const spacer1 = Spacer();
  static const spacer2 = Spacer(flex: 2);

  static SystemUiOverlayStyle systemUiOverlayStyle(BuildContext context) {
    return SystemUiOverlayStyle(
      statusBarColor: context.primaryColor,
      statusBarIconBrightness: Brightness.light,
      statusBarBrightness: Brightness.dark,
    );
  }

  static Future<void> setPreferredOrientations() async {
    await SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }
}
