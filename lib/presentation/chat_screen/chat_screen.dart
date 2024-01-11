import 'models/chat_model.dart';
import 'package:fashionista/core/app_export.dart';
import 'package:fashionista/widgets/app_bar/appbar_leading_iconbutton_one.dart';
import 'package:fashionista/widgets/app_bar/appbar_subtitle_four.dart';
import 'package:fashionista/widgets/app_bar/appbar_subtitle_three.dart';
import 'package:fashionista/widgets/app_bar/appbar_title_circleimage.dart';
import 'package:fashionista/widgets/app_bar/appbar_trailing_image.dart';
import 'package:fashionista/widgets/app_bar/custom_app_bar.dart';
import 'package:fashionista/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'provider/chat_provider.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  ChatScreenState createState() => ChatScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => ChatProvider(), child: ChatScreen());
  }
}

class ChatScreenState extends State<ChatScreen> {
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
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 17.v),
                child: Column(children: [
                  Text("lbl_yesterday".tr, style: theme.textTheme.labelMedium),
                  SizedBox(height: 11.v),
                  _buildHiAnneIamFashionExpertHowmayIh(context,
                      hiAnneIamFashionExpertHowmayIh:
                          "msg_hi_anne_i_am_fashion".tr,
                      time: "lbl_18_27".tr),
                  SizedBox(height: 10.v),
                  _buildNinetySeven(context),
                  SizedBox(height: 3.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text("lbl_18_27".tr,
                          style: theme.textTheme.bodySmall)),
                  SizedBox(height: 10.v),
                  _buildHiAnneIamFashionExpertHowmayIh(context,
                      hiAnneIamFashionExpertHowmayIh:
                          "msg_hi_anne_i_am_fashion".tr,
                      time: "lbl_18_27".tr),
                  SizedBox(height: 10.v),
                  _buildNinetyTwo(context),
                  SizedBox(height: 3.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text("lbl_18_27".tr,
                          style: theme.textTheme.bodySmall)),
                  SizedBox(height: 10.v),
                  _buildHiAnneIamFashionExpertHowmayIh(context,
                      hiAnneIamFashionExpertHowmayIh:
                          "msg_hi_anne_i_am_fashion".tr,
                      time: "lbl_18_27".tr),
                  SizedBox(height: 10.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Row(children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgEllipse65,
                            height: 40.adaptSize,
                            width: 40.adaptSize,
                            radius: BorderRadius.circular(20.h)),
                        Padding(
                            padding: EdgeInsets.only(
                                left: 6.h, top: 11.v, bottom: 7.v),
                            child: Text("msg_mahbuba_is_typing".tr,
                                style: CustomTextStyles.bodyMediumGray500_1))
                      ])),
                  SizedBox(height: 5.v)
                ])),
            bottomNavigationBar: _buildMessage(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 49.v,
        leadingWidth: 56.h,
        leading: AppbarLeadingIconbuttonOne(
            imagePath: ImageConstant.imgArrowDown,
            margin: EdgeInsets.only(left: 16.h, top: 5.v, bottom: 4.v),
            onTap: () {
              onTapArrowDown(context);
            }),
        title: Padding(
            padding: EdgeInsets.only(left: 16.h),
            child: Row(children: [
              AppbarTitleCircleimage(
                  imagePath: ImageConstant.imgEllipse65,
                  margin: EdgeInsets.symmetric(vertical: 2.v)),
              Padding(
                  padding: EdgeInsets.only(left: 14.h),
                  child: Column(children: [
                    AppbarSubtitleThree(text: "lbl_mahbuba".tr),
                    AppbarSubtitleFour(
                        text: "lbl_online".tr,
                        margin: EdgeInsets.only(right: 34.h))
                  ]))
            ])),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgCall,
              margin: EdgeInsets.only(left: 16.h, top: 13.v, right: 12.h)),
          AppbarTrailingImage(
              imagePath: ImageConstant.imgVideocam,
              margin: EdgeInsets.only(left: 24.h, top: 13.v, right: 28.h))
        ]);
  }

  /// Section Widget
  Widget _buildNinetySeven(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Expanded(
          child: Container(
              padding: EdgeInsets.symmetric(horizontal: 32.h, vertical: 19.v),
              decoration: AppDecoration.fillGray500
                  .copyWith(borderRadius: BorderRadiusStyle.customBorderTL302),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgGroup230,
                        height: 35.v,
                        width: 181.h),
                    Padding(
                        padding:
                            EdgeInsets.only(top: 6.v, right: 1.h, bottom: 4.v),
                        child: Text("lbl_0_37".tr,
                            style: CustomTextStyles.bodyLargeWhiteA700))
                  ]))),
      CustomImageView(
          imagePath: ImageConstant.imgEllipse66,
          height: 40.adaptSize,
          width: 40.adaptSize,
          radius: BorderRadius.circular(20.h),
          margin: EdgeInsets.only(left: 16.h, top: 33.v))
    ]);
  }

  /// Section Widget
  Widget _buildNinetyTwo(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Expanded(
          child: Container(
              width: 287.h,
              padding: EdgeInsets.symmetric(horizontal: 26.h, vertical: 13.v),
              decoration: AppDecoration.fillGray500
                  .copyWith(borderRadius: BorderRadiusStyle.customBorderTL302),
              child: Text("msg_hi_don_t_worry".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.bodyMediumWhiteA700
                      .copyWith(height: 1.50)))),
      CustomImageView(
          imagePath: ImageConstant.imgEllipse66,
          height: 40.adaptSize,
          width: 40.adaptSize,
          radius: BorderRadius.circular(20.h),
          margin: EdgeInsets.only(left: 16.h, top: 33.v))
    ]);
  }

  /// Section Widget
  Widget _buildMessage(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 27.v),
        child: Selector<ChatProvider, TextEditingController?>(
            selector: (context, provider) => provider.messageController,
            builder: (context, messageController, child) {
              return CustomTextFormField(
                  controller: messageController,
                  hintText: "lbl_type_a_message".tr,
                  hintStyle: CustomTextStyles.bodyMediumGray500_1,
                  textInputAction: TextInputAction.done,
                  suffix: Container(
                      margin: EdgeInsets.fromLTRB(30.h, 14.v, 27.h, 14.v),
                      child: CustomImageView(
                          imagePath: ImageConstant.imgMic,
                          height: 24.adaptSize,
                          width: 24.adaptSize)),
                  suffixConstraints: BoxConstraints(maxHeight: 52.v),
                  contentPadding:
                      EdgeInsets.only(left: 16.h, top: 15.v, bottom: 15.v));
            }));
  }

  /// Common widget
  Widget _buildHiAnneIamFashionExpertHowmayIh(
    BuildContext context, {
    required String hiAnneIamFashionExpertHowmayIh,
    required String time,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      CustomImageView(
          imagePath: ImageConstant.imgEllipse65,
          height: 40.adaptSize,
          width: 40.adaptSize,
          radius: BorderRadius.circular(20.h),
          margin: EdgeInsets.only(top: 33.v, bottom: 21.v)),
      Expanded(
          child: Padding(
              padding: EdgeInsets.only(left: 16.h),
              child: Column(children: [
                Container(
                    width: 287.h,
                    padding:
                        EdgeInsets.symmetric(horizontal: 16.h, vertical: 13.v),
                    decoration: AppDecoration.fillGray.copyWith(
                        borderRadius: BorderRadiusStyle.customBorderTL301),
                    child: Text(hiAnneIamFashionExpertHowmayIh,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.bodyMediumGray500_1
                            .copyWith(color: appTheme.gray500, height: 1.50))),
                SizedBox(height: 3.v),
                Align(
                    alignment: Alignment.centerRight,
                    child: Text(time,
                        style: theme.textTheme.bodySmall!
                            .copyWith(color: appTheme.gray500)))
              ])))
    ]);
  }

  /// Navigates to the previous screen.
  onTapArrowDown(BuildContext context) {
    NavigatorService.goBack();
  }
}
