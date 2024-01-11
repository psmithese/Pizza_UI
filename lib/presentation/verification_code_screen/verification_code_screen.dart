import 'models/verification_code_model.dart';
import 'package:fashionista/core/app_export.dart';
import 'package:fashionista/widgets/app_bar/appbar_leading_iconbutton_one.dart';
import 'package:fashionista/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:fashionista/widgets/app_bar/custom_app_bar.dart';
import 'package:fashionista/widgets/custom_elevated_button.dart';
import 'package:fashionista/widgets/custom_pin_code_text_field.dart';
import 'package:flutter/material.dart';
import 'provider/verification_code_provider.dart';

class VerificationCodeScreen extends StatefulWidget {
  const VerificationCodeScreen({Key? key}) : super(key: key);

  @override
  VerificationCodeScreenState createState() => VerificationCodeScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => VerificationCodeProvider(),
        child: VerificationCodeScreen());
  }
}

class VerificationCodeScreenState extends State<VerificationCodeScreen> {
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
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 26.v),
                child: Column(children: [
                  Text("msg_enter_the_code_we".tr,
                      style: theme.textTheme.bodyLarge),
                  SizedBox(height: 97.v),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 9.h),
                      child: Selector<VerificationCodeProvider,
                              TextEditingController?>(
                          selector: (context, provider) =>
                              provider.otpController,
                          builder: (context, otpController, child) {
                            return CustomPinCodeTextField(
                                context: context,
                                controller: otpController,
                                onChanged: (value) {
                                  otpController?.text = value;
                                });
                          })),
                  SizedBox(height: 15.v),
                  RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: "msg_did_t_receive_a2".tr,
                            style: CustomTextStyles.bodyMediumGray500),
                        TextSpan(
                            text: "lbl_resent_code".tr,
                            style: CustomTextStyles.titleSmallBold)
                      ]),
                      textAlign: TextAlign.left),
                  Spacer(flex: 25),
                  CustomElevatedButton(
                      text: "lbl_confirm".tr,
                      onPressed: () {
                        onTapConfirm(context);
                      }),
                  Spacer(flex: 74)
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
        title: AppbarSubtitleOne(text: "msg_verification_code".tr));
  }

  /// Navigates to the previous screen.
  onTapArrowDown(BuildContext context) {
    NavigatorService.goBack();
  }

  /// Navigates to the resetPasswordScreen when the action is triggered.
  onTapConfirm(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.resetPasswordScreen,
    );
  }
}
