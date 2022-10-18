import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../extensions/build_context_extensions.dart';

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

  static SystemUiOverlayStyle homeSystemUiOverlayStyle() {
    return const SystemUiOverlayStyle(
      statusBarColor: Styles.transparentColor,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.light,
    );
  }

  static BoxDecoration homeAppBarBoxDecoration(BuildContext context) {
    return BoxDecoration(
      color: context.colorScheme.onPrimary,
      borderRadius: const BorderRadius.vertical(
        bottom: Radius.circular(Styles.defaultRadius * 3),
      ),
      boxShadow: const [BoxShadow(color: Styles.black12, blurRadius: 8)],
    );
  }

  static BoxDecoration homeBottomNavBarBoxDecoration(BuildContext context) {
    return BoxDecoration(
      color: context.colorScheme.onPrimary,
      borderRadius: const BorderRadius.vertical(
        top: Radius.circular(Styles.defaultRadius * 2),
      ),
      boxShadow: const [BoxShadow(color: Styles.black12, blurRadius: 8)],
    );
  }

  static BoxDecoration quizCardBoxDecoration(BuildContext context) {
    return BoxDecoration(
      color: context.colorScheme.onPrimary,
      borderRadius: BorderRadius.circular(Styles.defaultRadius),
      boxShadow: [
        BoxShadow(
          blurRadius: 2,
          color: context.theme.disabledColor.withOpacity(0.06),
          offset: const Offset(0, 1),
        )
      ],
    );
  }

  static BoxDecoration topicCardBoxDecoration(BuildContext context) {
    return BoxDecoration(
      color: context.colorScheme.onPrimary,
      borderRadius: BorderRadius.circular(Styles.defaultRadius * 1.5),
      boxShadow: const [
        BoxShadow(
          blurRadius: 1,
          color: Styles.black12,
          offset: Offset(0, 1),
        ),
      ],
    );
  }

  static EdgeInsetsGeometry get quizCardContentPadding =>
      const EdgeInsets.symmetric(
        horizontal: Styles.defaultPadding,
        vertical: Styles.defaultPadding / 3,
      );
}
