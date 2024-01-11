import '../models/socialaccountlink_item_model.dart';
import 'package:fashionista/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SocialaccountlinkItemWidget extends StatelessWidget {
  SocialaccountlinkItemWidget(
    this.socialaccountlinkItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SocialaccountlinkItemModel socialaccountlinkItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.h),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: socialaccountlinkItemModelObj?.facebook,
            height: 40.adaptSize,
            width: 40.adaptSize,
          ),
          Padding(
            padding: EdgeInsets.only(left: 16.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  socialaccountlinkItemModelObj.facebook1!,
                  style: theme.textTheme.bodyLarge,
                ),
                Text(
                  socialaccountlinkItemModelObj.welcomeToFacebook!,
                  style: theme.textTheme.bodySmall,
                ),
              ],
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: socialaccountlinkItemModelObj?.facebook2,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.symmetric(vertical: 8.v),
          ),
        ],
      ),
    );
  }
}
