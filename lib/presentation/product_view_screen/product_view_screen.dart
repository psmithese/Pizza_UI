import '../product_view_screen/widgets/frame4_item_widget.dart';
import 'models/frame4_item_model.dart';
import 'models/product_view_model.dart';
import 'package:fashionista/core/app_export.dart';
import 'package:fashionista/widgets/custom_elevated_button.dart';
import 'package:fashionista/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'provider/product_view_provider.dart';

class ProductViewScreen extends StatefulWidget {
  const ProductViewScreen({Key? key}) : super(key: key);

  @override
  ProductViewScreenState createState() => ProductViewScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => ProductViewProvider(), child: ProductViewScreen());
  }
}

class ProductViewScreenState extends State<ProductViewScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: SingleChildScrollView(
                    child: SizedBox(
                        height: 854.v,
                        width: double.maxFinite,
                        child:
                            Stack(alignment: Alignment.bottomCenter, children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgProduct,
                              height: 451.v,
                              width: 375.h,
                              alignment: Alignment.topCenter),
                          Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                  padding: EdgeInsets.all(16.h),
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadiusStyle.customBorderTL30),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        _buildFrame(context),
                                        SizedBox(height: 23.v),
                                        _buildOrderStatus(context),
                                        SizedBox(height: 23.v),
                                        _buildFrame1(context),
                                        SizedBox(height: 23.v),
                                        _buildSeven(context),
                                        SizedBox(height: 14.v)
                                      ])))
                        ]))))));
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Padding(
          padding: EdgeInsets.only(top: 5.v, bottom: 6.v),
          child: Text("lbl_black_jacket".tr,
              style: CustomTextStyles.titleLargeSemiBold)),
      CustomIconButton(
          height: 42.adaptSize,
          width: 42.adaptSize,
          padding: EdgeInsets.all(9.h),
          decoration: IconButtonStyleHelper.outlineGray,
          child: CustomImageView(imagePath: ImageConstant.imgIconPrimary42x42))
    ]);
  }

  /// Section Widget
  Widget _buildOrderStatus(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_select_size".tr, style: theme.textTheme.titleMedium),
      SizedBox(height: 8.v),
      Consumer<ProductViewProvider>(builder: (context, provider, child) {
        return Wrap(
            runSpacing: 20.v,
            spacing: 20.h,
            children: List<Widget>.generate(
                provider.productViewModelObj.frame4ItemList.length, (index) {
              Frame4ItemModel model =
                  provider.productViewModelObj.frame4ItemList[index];
              return Frame4ItemWidget(model, onSelectedChipView1: (value) {
                provider.onSelectedChipView1(index, value);
              });
            }));
      })
    ]);
  }

  /// Section Widget
  Widget _buildFrame1(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_color".tr, style: theme.textTheme.titleMedium),
      SizedBox(height: 8.v),
      CustomImageView(
          imagePath: ImageConstant.imgFrame1035,
          height: 50.v,
          width: 330.h,
          radius: BorderRadius.circular(8.h))
    ]);
  }

  /// Section Widget
  Widget _buildSeven(BuildContext context) {
    return Column(children: [
      Padding(
          padding: EdgeInsets.only(right: 1.h),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text("lbl_reviews".tr, style: theme.textTheme.titleMedium),
            GestureDetector(
                onTap: () {
                  onTapTxtSeeAll(context);
                },
                child: Padding(
                    padding: EdgeInsets.only(top: 2.v, bottom: 3.v),
                    child: Text("lbl_see_all".tr,
                        style: CustomTextStyles.titleSmallLime900)))
          ])),
      SizedBox(height: 11.v),
      Align(
          alignment: Alignment.centerLeft,
          child: Row(children: [
            CustomImageView(
                imagePath: ImageConstant.imgStar6,
                height: 24.adaptSize,
                width: 24.adaptSize,
                radius: BorderRadius.circular(1.h)),
            Padding(
                padding: EdgeInsets.only(left: 4.h),
                child: Text("msg_4_8_1_024_reviews".tr,
                    style: CustomTextStyles.titleMediumGray500))
          ])),
      SizedBox(height: 24.v),
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Padding(
            padding: EdgeInsets.only(top: 10.v, bottom: 11.v),
            child: RichText(
                text: TextSpan(children: [
                  TextSpan(
                      text: "lbl".tr,
                      style: CustomTextStyles.titleLargeLime900),
                  TextSpan(
                      text: "lbl_134_982".tr,
                      style: CustomTextStyles.titleLargeBold)
                ]),
                textAlign: TextAlign.left)),
        CustomElevatedButton(width: 170.h, text: "lbl_add_to_cart".tr)
      ])
    ]);
  }

  /// Navigates to the reviewsTabContainerScreen when the action is triggered.
  onTapTxtSeeAll(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.reviewsTabContainerScreen,
    );
  }
}
