import 'dart:io';

import 'package:flutter/foundation.dart';

class AppPlatform {
  static String get getPlatform {
    if (kIsWeb) {
      return 'web';
    } else if (Platform.isAndroid) {
      return 'android';
    } else if (Platform.isIOS) {
      return 'ios';
    } else if (Platform.isMacOS) {
      return 'macos';
    } else if (Platform.isWindows) {
      return 'windows';
    } else if (Platform.isLinux) {
      return 'linux';
    } else if (Platform.isFuchsia) {
      return 'fuchsia';
    } else {
      throw Exception('Undefinied platform');
    }
  }

  static bool get isWeb => kIsWeb;
  static bool get isMobilePlatform => Platform.isIOS || Platform.isAndroid;
  static bool get isCupertinoDesign => Platform.isIOS || Platform.isMacOS;
}
