import '../models/frame2_item_model.dart';
import 'package:fashionista/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Frame2ItemWidget extends StatelessWidget {
  Frame2ItemWidget(
    this.frame2ItemModelObj, {
    Key? key,
    this.onTapCard,
  }) : super(
          key: key,
        );

  Frame2ItemModel frame2ItemModelObj;

  VoidCallback? onTapCard;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 164.h,
      child: GestureDetector(
        onTap: () {
          onTapCard!.call();
        },
        child: Column(
          children: [
            SizedBox(
              height: 235.v,
              width: 164.h,
              child: Stack(
                alignment: Alignment.topRight,
                children: [
                  CustomImageView(
                    imagePath: frame2ItemModelObj?.casualJeansShoes,
                    height: 235.v,
                    width: 164.h,
                    radius: BorderRadius.circular(
                      15.h,
                    ),
                    alignment: Alignment.center,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgClock,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    alignment: Alignment.topRight,
                    margin: EdgeInsets.only(
                      top: 12.v,
                      right: 12.h,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 7.v),
            Text(
              frame2ItemModelObj.casualJeansShoes1!,
              style: theme.textTheme.bodyMedium,
            ),
            SizedBox(height: 5.v),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "lbl".tr,
                    style: CustomTextStyles.titleMediumLime900,
                  ),
                  TextSpan(
                    text: "lbl_165_002".tr,
                    style: CustomTextStyles.titleMediumSemiBold16,
                  ),
                ],
              ),
              textAlign: TextAlign.left,
            ),
          ],
        ),
      ),
    );
  }
}
