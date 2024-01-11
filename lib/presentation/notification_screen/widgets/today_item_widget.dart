import '../models/today_item_model.dart';
import 'package:fashionista/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TodayItemWidget extends StatelessWidget {
  TodayItemWidget(
    this.todayItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  TodayItemModel todayItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 10.v,
      ),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgUnsplashQnuUr0o5x8,
            height: 40.adaptSize,
            width: 40.adaptSize,
            radius: BorderRadius.circular(
              10.h,
            ),
            margin: EdgeInsets.symmetric(vertical: 2.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              top: 2.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "lbl_you".tr,
                        style: theme.textTheme.bodyMedium,
                      ),
                      TextSpan(
                        text: "lbl_purchased_shoes".tr,
                        style: theme.textTheme.bodyMedium,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 3.v),
                Text(
                  "lbl_02_minites_ago".tr,
                  style: theme.textTheme.bodySmall,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
