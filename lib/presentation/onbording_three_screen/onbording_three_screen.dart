import 'models/onbording_three_model.dart';
import 'package:fashionista/core/app_export.dart';
import 'package:fashionista/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:fashionista/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:fashionista/widgets/app_bar/custom_app_bar.dart';
import 'package:fashionista/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'provider/onbording_three_provider.dart';

class OnbordingThreeScreen extends StatefulWidget {
  const OnbordingThreeScreen({Key? key}) : super(key: key);

  @override
  OnbordingThreeScreenState createState() => OnbordingThreeScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => OnbordingThreeProvider(),
        child: OnbordingThreeScreen());
  }
}

class OnbordingThreeScreenState extends State<OnbordingThreeScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            body: Container(
                width: SizeUtils.width,
                height: SizeUtils.height,
                decoration: BoxDecoration(
                    color: appTheme.whiteA700,
                    image: DecorationImage(
                        image: AssetImage(ImageConstant.imgOnbordingThree),
                        fit: BoxFit.cover)),
                child: SizedBox(
                    width: double.maxFinite,
                    child: Container(
                        padding: EdgeInsets.symmetric(vertical: 5.v),
                        decoration: AppDecoration.gradientPrimaryToPrimary,
                        child: Column(children: [
                          _buildAppBar(context),
                          Spacer(),
                          Text("lbl_all_for_you".tr,
                              style: theme.textTheme.headlineSmall),
                          SizedBox(height: 10.v),
                          Container(
                              width: 288.h,
                              margin: EdgeInsets.only(left: 44.h, right: 43.h),
                              child: Text("msg_we_always_try_provide".tr,
                                  maxLines: 3,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: CustomTextStyles.bodyMediumWhiteA700
                                      .copyWith(height: 1.50))),
                          SizedBox(height: 38.v),
                          CustomIconButton(
                              height: 60.adaptSize,
                              width: 60.adaptSize,
                              padding: EdgeInsets.all(18.h),
                              decoration: IconButtonStyleHelper.fillWhiteA,
                              onTap: () {
                                onTapBtnArrowDown(context);
                              },
                              child: CustomImageView(
                                  imagePath: ImageConstant.imgArrowDown)),
                          SizedBox(height: 55.v)
                        ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 40.v,
        leadingWidth: 56.h,
        leading: AppbarLeadingIconbutton(
            imagePath: ImageConstant.imgArrowDown,
            margin: EdgeInsets.only(left: 16.h),
            onTap: () {
              onTapArrowDown(context);
            }),
        actions: [
          AppbarSubtitleTwo(
              text: "lbl_skip".tr,
              margin: EdgeInsets.fromLTRB(16.h, 8.v, 16.h, 4.v),
              onTap: () {
                onTapSkip(context);
              })
        ]);
  }

  /// Navigates to the previous screen.
  onTapArrowDown(BuildContext context) {
    NavigatorService.goBack();
  }

  /// Navigates to the signUpSignInScreen when the action is triggered.
  onTapSkip(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.signUpSignInScreen,
    );
  }

  /// Navigates to the signUpSignInScreen when the action is triggered.
  onTapBtnArrowDown(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.signUpSignInScreen,
    );
  }
}
