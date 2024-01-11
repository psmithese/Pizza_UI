import 'models/app_navigation_model.dart';
import 'package:fashionista/core/app_export.dart';
import 'package:flutter/material.dart';
import 'provider/app_navigation_provider.dart';

class AppNavigationScreen extends StatefulWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  AppNavigationScreenState createState() => AppNavigationScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AppNavigationProvider(),
      child: AppNavigationScreen(),
    );
  }
}

class AppNavigationScreenState extends State<AppNavigationScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "Splash Screen".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.splashScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Onbording One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.onbordingOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Onbording Two".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.onbordingTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Onbording Three".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.onbordingThreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Sign Up Sign In".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.signUpSignInScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Sign In".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.signInScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Sign Up".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.signUpScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Information".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.informationScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Forgot Password".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.forgotPasswordScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Verification Code".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.verificationCodeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Reset Password".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.resetPasswordScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Explore Shop".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.exploreShopScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Home - Container".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.homeContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Popular Items".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.popularItemsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Product View".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.productViewScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Checkout".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.checkoutScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Complete".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.completeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Tracking Order".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.trackingOrderScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Order Status".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.orderStatusScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Reviews - Tab Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.reviewsTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Write a review".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.writeAReviewScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Settings".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.settingsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Notification".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.notificationScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Discount Items".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.discountItemsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Social Account Link".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.socialAccountLinkScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Chat".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.chatScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    NavigatorService.pushNamed(routeName);
  }
}
