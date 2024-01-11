import '../../../core/app_export.dart';

/// This class is used in the [frame7_item_widget] screen.
class Frame7ItemModel {
  Frame7ItemModel({
    this.premiumWatch,
    this.premiumWatch1,
    this.id,
  }) {
    premiumWatch = premiumWatch ?? ImageConstant.imgUnsplashJj0tls2rod4;
    premiumWatch1 = premiumWatch1 ?? "Premium Watch";
    id = id ?? "";
  }

  String? premiumWatch;

  String? premiumWatch1;

  String? id;
}
