import '../my_cart_page/widgets/mycart_item_widget.dart';
import 'models/my_cart_model.dart';
import 'models/mycart_item_model.dart';
import 'package:fashionista/core/app_export.dart';
import 'package:fashionista/widgets/app_bar/appbar_leading_iconbutton_one.dart';
import 'package:fashionista/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:fashionista/widgets/app_bar/appbar_trailing_image.dart';
import 'package:fashionista/widgets/app_bar/custom_app_bar.dart';
import 'package:fashionista/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'provider/my_cart_provider.dart';

class MyCartPage extends StatefulWidget {
  const MyCartPage({Key? key}) : super(key: key);

  @override
  MyCartPageState createState() => MyCartPageState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => MyCartProvider(), child: MyCartPage());
  }
}

class MyCartPageState extends State<MyCartPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 23.v),
                    child: Padding(
                        padding: EdgeInsets.only(
                            left: 16.h, right: 16.h, bottom: 5.v),
                        child: Column(children: [
                          _buildFrame1(context),
                          SizedBox(height: 24.v),
                          _buildMyCart(context),
                          SizedBox(height: 24.v),
                          _buildFrame(context,
                              feeDelivery: "lbl_subtotal".tr,
                              price: "lbl_134_94".tr),
                          SizedBox(height: 8.v),
                          _buildFrame(context,
                              feeDelivery: "lbl_fee_delivery".tr,
                              price: "lbl_10".tr),
                          SizedBox(height: 6.v),
                          _buildFrame(context,
                              feeDelivery: "lbl_total".tr,
                              price: "lbl_144_94".tr),
                          SizedBox(height: 39.v),
                          CustomElevatedButton(
                              text: "lbl_send_code2".tr,
                              onPressed: () {
                                onTapSendCode(context);
                              })
                        ]))))));
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
        title: AppbarSubtitleOne(text: "lbl_my_cart".tr),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgShoppingBag,
              margin: EdgeInsets.symmetric(horizontal: 16.h, vertical: 13.v))
        ]);
  }

  /// Section Widget
  Widget _buildFrame1(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text("msg_promo_code_or_vourchers".tr,
          style: CustomTextStyles.bodyLarge18),
      CustomImageView(
          imagePath: ImageConstant.imgArrowRight,
          height: 16.adaptSize,
          width: 16.adaptSize,
          margin: EdgeInsets.symmetric(vertical: 5.v))
    ]);
  }

  /// Section Widget
  Widget _buildMyCart(BuildContext context) {
    return Consumer<MyCartProvider>(builder: (context, provider, child) {
      return ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (context, index) {
            return SizedBox(height: 24.v);
          },
          itemCount: provider.myCartModelObj.mycartItemList.length,
          itemBuilder: (context, index) {
            MycartItemModel model =
                provider.myCartModelObj.mycartItemList[index];
            return MycartItemWidget(model);
          });
    });
  }

  /// Common widget
  Widget _buildFrame(
    BuildContext context, {
    required String feeDelivery,
    required String price,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Padding(
          padding: EdgeInsets.only(top: 1.v),
          child: Text(feeDelivery,
              style: CustomTextStyles.bodyLargeGray500_1
                  .copyWith(color: appTheme.gray500))),
      RichText(
          text: TextSpan(children: [
            TextSpan(
                text: "lbl".tr, style: CustomTextStyles.titleMediumLime900),
            TextSpan(
                text: "lbl_102".tr,
                style: CustomTextStyles.titleMediumSemiBold16)
          ]),
          textAlign: TextAlign.left)
    ]);
  }

  /// Navigates to the previous screen.
  onTapArrowDown(BuildContext context) {
    NavigatorService.goBack();
  }

  /// Navigates to the checkoutScreen when the action is triggered.
  onTapSendCode(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.checkoutScreen,
    );
  }
}
