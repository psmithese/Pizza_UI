import '../social_account_link_screen/widgets/socialaccountlink_item_widget.dart';
import 'models/social_account_link_model.dart';
import 'models/socialaccountlink_item_model.dart';
import 'package:fashionista/core/app_export.dart';
import 'package:fashionista/widgets/app_bar/appbar_leading_iconbutton_one.dart';
import 'package:fashionista/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:fashionista/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'provider/social_account_link_provider.dart';

class SocialAccountLinkScreen extends StatefulWidget {
  const SocialAccountLinkScreen({Key? key}) : super(key: key);

  @override
  SocialAccountLinkScreenState createState() => SocialAccountLinkScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => SocialAccountLinkProvider(),
        child: SocialAccountLinkScreen());
  }
}

class SocialAccountLinkScreenState extends State<SocialAccountLinkScreen> {
  @override
  void initState() {
    super.initState(); // TODO: implement Actions
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Padding(
                padding: EdgeInsets.only(left: 16.h, top: 24.v, right: 16.h),
                child: Consumer<SocialAccountLinkProvider>(
                    builder: (context, provider, child) {
                  return ListView.separated(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      separatorBuilder: (context, index) {
                        return SizedBox(height: 16.v);
                      },
                      itemCount: provider.socialAccountLinkModelObj
                          .socialaccountlinkItemList.length,
                      itemBuilder: (context, index) {
                        SocialaccountlinkItemModel model = provider
                            .socialAccountLinkModelObj
                            .socialaccountlinkItemList[index];
                        return SocialaccountlinkItemWidget(model);
                      });
                }))));
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
        title: AppbarSubtitleOne(text: "lbl_social_network".tr));
  }

  /// Navigates to the previous screen.
  onTapArrowDown(BuildContext context) {
    NavigatorService.goBack();
  }
}
