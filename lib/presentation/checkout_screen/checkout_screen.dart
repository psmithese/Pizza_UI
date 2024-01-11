import '../checkout_screen/widgets/checkout_item_widget.dart';
import 'models/checkout_item_model.dart';
import 'models/checkout_model.dart';
import 'package:fashionista/core/app_export.dart';
import 'package:fashionista/widgets/app_bar/appbar_leading_iconbutton_one.dart';
import 'package:fashionista/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:fashionista/widgets/app_bar/custom_app_bar.dart';
import 'package:fashionista/widgets/custom_elevated_button.dart';
import 'package:fashionista/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'provider/checkout_provider.dart';

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({Key? key}) : super(key: key);

  @override
  CheckoutScreenState createState() => CheckoutScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => CheckoutProvider(), child: CheckoutScreen());
  }
}

class CheckoutScreenState extends State<CheckoutScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 25.v),
                child: Column(children: [
                  _buildFrame(context),
                  SizedBox(height: 25.v),
                  _buildFrame1(context),
                  SizedBox(height: 63.v),
                  _buildFrame2(context),
                  SizedBox(height: 15.v),
                  CustomElevatedButton(
                      text: "lbl_pay_now".tr,
                      onPressed: () {
                        onTapPayNow(context);
                      }),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 56.h,
        leading: AppbarLeadingIconbuttonOne(
            imagePath: ImageConstant.imgArrowDown,
            margin: EdgeInsets.only(left: 16.h, top: 5.v, bottom: 5.v),
            onTap: () {
              onTapArrowDown(context);
            }),
        centerTitle: true,
        title: AppbarSubtitleOne(text: "lbl_checkout".tr));
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("msg_delivery_address".tr, style: theme.textTheme.titleMedium),
      SizedBox(height: 9.v),
      Row(children: [
        Padding(
            padding: EdgeInsets.symmetric(vertical: 1.v),
            child: CustomIconButton(
                height: 42.adaptSize,
                width: 42.adaptSize,
                padding: EdgeInsets.all(9.h),
                decoration: IconButtonStyleHelper.outlineGray,
                child: CustomImageView(imagePath: ImageConstant.imgLinkedin))),
        Padding(
            padding: EdgeInsets.only(left: 12.h),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text("lbl_address".tr, style: theme.textTheme.bodyMedium),
              SizedBox(height: 2.v),
              Text("lbl_nsw_australia".tr,
                  style: CustomTextStyles.bodyMediumLime900)
            ]))
      ])
    ]);
  }

  /// Section Widget
  Widget _buildFrame1(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_payment_mathod".tr, style: theme.textTheme.titleMedium),
      SizedBox(height: 9.v),
      Consumer<CheckoutProvider>(builder: (context, provider, child) {
        return ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(height: 8.v);
            },
            itemCount: provider.checkoutModelObj.checkoutItemList.length,
            itemBuilder: (context, index) {
              CheckoutItemModel model =
                  provider.checkoutModelObj.checkoutItemList[index];
              return CheckoutItemWidget(model);
            });
      })
    ]);
  }

  /// Section Widget
  Widget _buildFrame2(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text("lbl_total".tr, style: CustomTextStyles.titleMediumGray500),
      RichText(
          text: TextSpan(children: [
            TextSpan(
                text: "lbl".tr, style: CustomTextStyles.titleMediumLime900),
            TextSpan(
                text: "lbl_144_942".tr,
                style: CustomTextStyles.titleMediumSemiBold16)
          ]),
          textAlign: TextAlign.left)
    ]);
  }

  /// Navigates to the previous screen.
  onTapArrowDown(BuildContext context) {
    NavigatorService.goBack();
  }

  /// Navigates to the completeScreen when the action is triggered.
  onTapPayNow(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.completeScreen,
    );
  }
}
