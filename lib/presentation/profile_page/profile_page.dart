import 'models/profile_model.dart';
import 'package:fashionista/core/app_export.dart';
import 'package:fashionista/widgets/app_bar/appbar_subtitle.dart';
import 'package:fashionista/widgets/app_bar/custom_app_bar.dart';
import 'package:fashionista/widgets/custom_elevated_button.dart';
import 'package:fashionista/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'provider/profile_provider.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  ProfilePageState createState() => ProfilePageState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => ProfileProvider(), child: ProfilePage());
  }
}

class ProfilePageState extends State<ProfilePage> {
  /// Requests permission to access the camera and storage, and displays a model
  /// sheet for selecting images.
  ///
  /// Throws an error if permission is denied or an error occurs while selecting images.
  @override
  void initState(BuildContext context) async {
    super.initState();
    await PermissionManager.askForPermission(Permission.camera);
    await PermissionManager.askForPermission(Permission.storage);
    List<String?>? imageList = [];
    await FileManager().showModelSheetForImage(getImages: (value) async {
      imageList = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                decoration: AppDecoration.white,
                child: Column(children: [
                  _buildProfile(context),
                  Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 16.h, vertical: 23.v),
                      child: Column(children: [
                        _buildStickyNoteTwo(context,
                            stickyNoteTwo:
                                ImageConstant.imgPersonOutlinePrimary,
                            transactionHistory: "lbl_personal_data".tr),
                        SizedBox(height: 15.v),
                        _buildStickyNoteTwo(context,
                            stickyNoteTwo: ImageConstant.imgStickyNote2,
                            transactionHistory: "msg_transaction_history".tr),
                        SizedBox(height: 15.v),
                        _buildStickyNoteTwo(context,
                            stickyNoteTwo: ImageConstant.imgTelevisionPrimary,
                            transactionHistory: "lbl_discount_code".tr,
                            onTapStickyNoteTwo: () {
                          onTapTelevision(context);
                        }),
                        SizedBox(height: 15.v),
                        _buildStickyNoteTwo(context,
                            stickyNoteTwo: ImageConstant.imgSearchPrimary,
                            transactionHistory: "lbl_settings".tr,
                            onTapStickyNoteTwo: () {
                          onTapSearch(context);
                        }),
                        SizedBox(height: 109.v),
                        CustomElevatedButton(text: "lbl_logout".tr),
                        SizedBox(height: 5.v)
                      ]))
                ]))));
  }

  /// Section Widget
  Widget _buildProfile(BuildContext context) {
    return SizedBox(
        height: 225.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          CustomAppBar(
              height: 113.v,
              centerTitle: true,
              title: AppbarSubtitle(
                  text: "lbl_profile".tr,
                  margin: EdgeInsets.only(top: 11.v, bottom: 74.v)),
              styleType: Style.bgFill),
          Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 113.h),
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    SizedBox(
                        height: 105.v,
                        width: 92.h,
                        child:
                            Stack(alignment: Alignment.bottomCenter, children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgEllipse5,
                              height: 91.v,
                              width: 92.h,
                              radius: BorderRadius.circular(46.h),
                              alignment: Alignment.topCenter),
                          CustomIconButton(
                              height: 30.adaptSize,
                              width: 30.adaptSize,
                              padding: EdgeInsets.all(7.h),
                              decoration: IconButtonStyleHelper.outlineWhiteA,
                              alignment: Alignment.bottomCenter,
                              child: CustomImageView(
                                  imagePath: ImageConstant.imgIconWhiteA700))
                        ])),
                    SizedBox(height: 5.v),
                    Text("lbl_anne_christion".tr,
                        style: theme.textTheme.titleLarge),
                    SizedBox(height: 1.v),
                    Text("lbl_xyz_gmail_com".tr,
                        style: CustomTextStyles.bodyMediumGray500_1)
                  ])))
        ]));
  }

  /// Common widget
  Widget _buildStickyNoteTwo(
    BuildContext context, {
    required String stickyNoteTwo,
    required String transactionHistory,
    Function? onTapStickyNoteTwo,
  }) {
    return GestureDetector(
        onTap: () {
          onTapStickyNoteTwo!.call();
        },
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 11.v),
            decoration: AppDecoration.fillGray
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageView(
                      imagePath: stickyNoteTwo,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      margin: EdgeInsets.only(top: 3.v, bottom: 2.v)),
                  Padding(
                      padding: EdgeInsets.only(left: 24.h, top: 6.v),
                      child: Text(transactionHistory,
                          style: theme.textTheme.bodyLarge!
                              .copyWith(color: theme.colorScheme.primary))),
                  Spacer(),
                  CustomImageView(
                      imagePath: ImageConstant.imgArrowRight,
                      height: 16.adaptSize,
                      width: 16.adaptSize,
                      margin: EdgeInsets.only(top: 6.v, bottom: 7.v))
                ])));
  }

  /// Navigates to the discountItemsScreen when the action is triggered.
  onTapTelevision(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.discountItemsScreen,
    );
  }

  /// Navigates to the settingsScreen when the action is triggered.
  onTapSearch(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.settingsScreen,
    );
  }
}
