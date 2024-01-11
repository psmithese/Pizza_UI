import 'models/write_a_review_model.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:fashionista/core/app_export.dart';
import 'package:fashionista/widgets/app_bar/appbar_leading_iconbutton_one.dart';
import 'package:fashionista/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:fashionista/widgets/app_bar/custom_app_bar.dart';
import 'package:fashionista/widgets/custom_elevated_button.dart';
import 'package:fashionista/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'provider/write_a_review_provider.dart';

class WriteAReviewScreen extends StatefulWidget {
  const WriteAReviewScreen({Key? key}) : super(key: key);

  @override
  WriteAReviewScreenState createState() => WriteAReviewScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => WriteAReviewProvider(),
        child: WriteAReviewScreen());
  }
}

class WriteAReviewScreenState extends State<WriteAReviewScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 24.v),
                child: Column(children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(right: 84.h),
                          child: Row(children: [
                            CustomImageView(
                                imagePath:
                                    ImageConstant.imgUnsplash8hqpxttomn0135x142,
                                height: 135.v,
                                width: 142.h,
                                radius: BorderRadius.circular(20.h)),
                            Padding(
                                padding: EdgeInsets.only(
                                    left: 16.h, top: 11.v, bottom: 11.v),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("lbl_jacket".tr,
                                          style: theme.textTheme.titleMedium),
                                      SizedBox(height: 4.v),
                                      Text("lbl_black_jacket".tr,
                                          style: theme.textTheme.bodyLarge),
                                      SizedBox(height: 3.v),
                                      Text("lbl_size_xl".tr,
                                          style: CustomTextStyles
                                              .bodyMediumGray500_1),
                                      SizedBox(height: 4.v),
                                      RichText(
                                          text: TextSpan(children: [
                                            TextSpan(
                                                text: "lbl".tr,
                                                style: CustomTextStyles
                                                    .titleMediumLime900SemiBold),
                                            TextSpan(
                                                text: "lbl_134_982".tr,
                                                style: CustomTextStyles
                                                    .titleMediumSemiBold_2)
                                          ]),
                                          textAlign: TextAlign.left)
                                    ]))
                          ]))),
                  SizedBox(height: 23.v),
                  _buildFrame(context),
                  SizedBox(height: 25.v),
                  _buildTwentyEight(context),
                  SizedBox(height: 9.v),
                  Align(
                      alignment: Alignment.centerRight,
                      child: Text("msg_350_characters_remaining".tr,
                          style: CustomTextStyles.bodyMediumGray500_1)),
                  SizedBox(height: 5.v)
                ])),
            bottomNavigationBar: _buildPostReview(context)));
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
        title: AppbarSubtitleOne(text: "lbl_write_a_review".tr));
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("msg_add_photo_or_video".tr, style: theme.textTheme.titleMedium),
      SizedBox(height: 13.v),
      DottedBorder(
          color: appTheme.gray200,
          padding:
              EdgeInsets.only(left: 2.h, top: 2.v, right: 2.h, bottom: 2.v),
          strokeWidth: 2.h,
          radius: Radius.circular(16),
          borderType: BorderType.RRect,
          dashPattern: [6, 6],
          child: Container(
              padding: EdgeInsets.symmetric(horizontal: 99.h, vertical: 21.v),
              decoration: AppDecoration.outlineGray
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder15),
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 3.v),
                    CustomImageView(
                        imagePath: ImageConstant.imgCloudUpload,
                        height: 50.adaptSize,
                        width: 50.adaptSize),
                    SizedBox(height: 13.v),
                    Text("msg_click_here_to_upload".tr,
                        style: CustomTextStyles.bodyMediumGray500_1)
                  ])))
    ]);
  }

  /// Section Widget
  Widget _buildTwentyEight(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("msg_write_yor_review".tr, style: theme.textTheme.titleMedium),
      SizedBox(height: 10.v),
      Selector<WriteAReviewProvider, TextEditingController?>(
          selector: (context, provider) => provider.inputFieldsController,
          builder: (context, inputFieldsController, child) {
            return CustomTextFormField(
                controller: inputFieldsController,
                hintText: "msg_would_you_like_to".tr,
                hintStyle: CustomTextStyles.bodyMediumGray500_1,
                textInputAction: TextInputAction.done);
          })
    ]);
  }

  /// Section Widget
  Widget _buildPostReview(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_post_review".tr,
        margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 39.v),
        onPressed: () {
          onTapPostReview(context);
        });
  }

  /// Navigates to the previous screen.
  onTapArrowDown(BuildContext context) {
    NavigatorService.goBack();
  }

  /// Navigates to the reviewsTabContainerScreen when the action is triggered.
  onTapPostReview(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.reviewsTabContainerScreen,
    );
  }
}
