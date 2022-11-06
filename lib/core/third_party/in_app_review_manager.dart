import 'package:in_app_review/in_app_review.dart';

mixin InAppReviewManager {
  Future<void> requestReview() async {
    if (await InAppReview.instance.isAvailable()) {
      await InAppReview.instance.requestReview();
    }
  }

  Future<void> openStoreListing({required String appStoreId}) async {
    await InAppReview.instance.openStoreListing(appStoreId: appStoreId);
  }
}
