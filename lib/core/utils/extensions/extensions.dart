import 'package:flutter/material.dart';

extension ThemeExtension on BuildContext {
  ThemeData get theme => Theme.of(this);

  Color get primaryColor => theme.primaryColor;
  Color get scaffoldBgColor => theme.scaffoldBackgroundColor;
  Color get bgColor => theme.backgroundColor;

  ColorScheme get colorScheme => theme.colorScheme;

  TextTheme get textTheme => theme.textTheme;

  bool get isDarkTheme => theme.brightness == Brightness.dark;
}

extension MediaQueryExtension on BuildContext {
  MediaQueryData get mediaQuery => MediaQuery.of(this);

  double get screenHeight => mediaQuery.size.height;
  double get screenWidth => mediaQuery.size.width;

  double dynamicWidth(double x) => screenWidth * x;
  double dynamicHeight(double x) => screenHeight * x;

  bool get isKeyboardOpen => mediaQuery.viewInsets.bottom != 0;
}

extension WidgetExtension on Widget {
  Widget expanded([int flex = 1]) {
    return Expanded(flex: flex, child: this);
  }
}
