import '../../../core/app_export.dart';
import 'socialaccountlink_item_model.dart';

class SocialAccountLinkModel {
  List<SocialaccountlinkItemModel> socialaccountlinkItemList = [
    SocialaccountlinkItemModel(
        facebook: ImageConstant.imgLogosFacebook,
        facebook1: "Facebook",
        welcomeToFacebook: "Welcome to Facebook",
        facebook2: ImageConstant.imgGroup1198),
    SocialaccountlinkItemModel(
        facebook: ImageConstant.imgGroup1194,
        facebook1: "Instagram",
        welcomeToFacebook: "Welcome to Instagram",
        facebook2: ImageConstant.imgGroup1198),
    SocialaccountlinkItemModel(
        facebook: ImageConstant.imgLogosTwitter,
        facebook1: "Twitter",
        welcomeToFacebook: "Welcome to Twitter",
        facebook2: ImageConstant.imgGroup1198Red800),
    SocialaccountlinkItemModel(
        facebook: ImageConstant.imgGoogle,
        facebook1: "Google",
        welcomeToFacebook: "Welcome to Google",
        facebook2: ImageConstant.imgGroup1198)
  ];
}
