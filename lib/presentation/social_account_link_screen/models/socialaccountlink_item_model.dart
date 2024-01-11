import '../../../core/app_export.dart';

/// This class is used in the [socialaccountlink_item_widget] screen.
class SocialaccountlinkItemModel {
  SocialaccountlinkItemModel({
    this.facebook,
    this.facebook1,
    this.welcomeToFacebook,
    this.facebook2,
    this.id,
  }) {
    facebook = facebook ?? ImageConstant.imgLogosFacebook;
    facebook1 = facebook1 ?? "Facebook";
    welcomeToFacebook = welcomeToFacebook ?? "Welcome to Facebook";
    facebook2 = facebook2 ?? ImageConstant.imgGroup1198;
    id = id ?? "";
  }

  String? facebook;

  String? facebook1;

  String? welcomeToFacebook;

  String? facebook2;

  String? id;
}
