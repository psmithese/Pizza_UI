import '../models/frame7_item_model.dart';
import 'package:fashionista/core/app_export.dart';
import 'package:fashionista/widgets/custom_rating_bar.dart';
import 'package:flutter/material.dart' hide SearchController;

// ignore: must_be_immutable
class Frame7ItemWidget extends StatelessWidget {
  Frame7ItemWidget(
    this.frame7ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Frame7ItemModel frame7ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.h),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: frame7ItemModelObj?.premiumWatch,
            height: 58.adaptSize,
            width: 58.adaptSize,
            radius: BorderRadius.circular(
              10.h,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              top: 6.v,
              bottom: 6.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  frame7ItemModelObj.premiumWatch1!,
                  style: theme.textTheme.bodyLarge,
                ),
                SizedBox(height: 12.v),
                CustomRatingBar(
                  ignoreGestures: true,
                  initialRating: 5,
                ),
              ],
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgArrowRight,
            height: 16.adaptSize,
            width: 16.adaptSize,
            margin: EdgeInsets.symmetric(vertical: 21.v),
          ),
        ],
      ),
    );
  }
}
