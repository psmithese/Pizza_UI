import 'models/reset_password_model.dart';
import 'package:fashionista/core/app_export.dart';
import 'package:fashionista/core/utils/validation_functions.dart';
import 'package:fashionista/widgets/app_bar/appbar_leading_iconbutton_one.dart';
import 'package:fashionista/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:fashionista/widgets/app_bar/custom_app_bar.dart';
import 'package:fashionista/widgets/custom_elevated_button.dart';
import 'package:fashionista/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'provider/reset_password_provider.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({Key? key}) : super(key: key);

  @override
  ResetPasswordScreenState createState() => ResetPasswordScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => ResetPasswordProvider(),
        child: ResetPasswordScreen());
  }
}

// ignore_for_file: must_be_immutable
class ResetPasswordScreenState extends State<ResetPasswordScreen> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: Container(
                            width: double.maxFinite,
                            padding: EdgeInsets.symmetric(
                                horizontal: 16.h, vertical: 26.v),
                            child: Column(children: [
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text("msg_enter_a_new_password".tr,
                                      style: theme.textTheme.bodyLarge)),
                              SizedBox(height: 47.v),
                              Consumer<ResetPasswordProvider>(
                                  builder: (context, provider, child) {
                                return CustomTextFormField(
                                    controller: provider.newpasswordController,
                                    hintText: "lbl_new_password".tr,
                                    textInputType:
                                        TextInputType.visiblePassword,
                                    suffix: InkWell(
                                        onTap: () {
                                          provider.changePasswordVisibility();
                                        },
                                        child: Container(
                                            margin: EdgeInsets.fromLTRB(
                                                30.h, 18.v, 16.h, 18.v),
                                            child: CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgIcon,
                                                height: 16.adaptSize,
                                                width: 16.adaptSize))),
                                    suffixConstraints:
                                        BoxConstraints(maxHeight: 52.v),
                                    validator: (value) {
                                      if (value == null ||
                                          (!isValidPassword(value,
                                              isRequired: true))) {
                                        return "err_msg_please_enter_valid_password"
                                            .tr;
                                      }
                                      return null;
                                    },
                                    obscureText: provider.isShowPassword,
                                    contentPadding: EdgeInsets.only(
                                        left: 16.h, top: 14.v, bottom: 14.v));
                              }),
                              SizedBox(height: 20.v),
                              Consumer<ResetPasswordProvider>(
                                  builder: (context, provider, child) {
                                return CustomTextFormField(
                                    controller:
                                        provider.confirmpasswordController,
                                    hintText: "msg_confirm_password".tr,
                                    textInputAction: TextInputAction.done,
                                    textInputType:
                                        TextInputType.visiblePassword,
                                    suffix: InkWell(
                                        onTap: () {
                                          provider.changePasswordVisibility1();
                                        },
                                        child: Container(
                                            margin: EdgeInsets.fromLTRB(
                                                30.h, 18.v, 16.h, 18.v),
                                            child: CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgIcon,
                                                height: 16.adaptSize,
                                                width: 16.adaptSize))),
                                    suffixConstraints:
                                        BoxConstraints(maxHeight: 52.v),
                                    validator: (value) {
                                      if (value == null ||
                                          (!isValidPassword(value,
                                              isRequired: true))) {
                                        return "err_msg_please_enter_valid_password"
                                            .tr;
                                      }
                                      return null;
                                    },
                                    obscureText: provider.isShowPassword1,
                                    contentPadding: EdgeInsets.only(
                                        left: 16.h, top: 14.v, bottom: 14.v));
                              }),
                              Spacer(flex: 27),
                              CustomElevatedButton(
                                  text: "lbl_confirm".tr,
                                  onPressed: () {
                                    onTapConfirm(context);
                                  }),
                              Spacer(flex: 72)
                            ])))))));
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
        title: AppbarSubtitleOne(text: "lbl_reset_password".tr));
  }

  /// Navigates to the previous screen.
  onTapArrowDown(BuildContext context) {
    NavigatorService.goBack();
  }

  /// Navigates to the exploreShopScreen when the action is triggered.
  onTapConfirm(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.exploreShopScreen,
    );
  }
}
