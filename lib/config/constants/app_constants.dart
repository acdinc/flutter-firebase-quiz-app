import 'package:flutter_firebase_quiz_app/core/utils/helper/app_platform.dart';

class AppConstants {
  static const package = 'app.example.flutter_firebase_quiz_app';

  static const appStoreId = '';
  static const microsoftStoreId = '';

  static const appStoreUrl = 'https://apps.apple.com/app/id$appStoreId';
  static const playStoreUrl =
      'https://play.google.com/store/apps/details?id=$package';

  static String get storeUrl {
    return AppPlatform.isCupertinoDesign ? appStoreUrl : playStoreUrl;
  }
}
