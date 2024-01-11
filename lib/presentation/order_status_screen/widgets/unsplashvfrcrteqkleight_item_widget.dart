import '../models/unsplashvfrcrteqkleight_item_model.dart';
import 'package:fashionista/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class UnsplashvfrcrteqkleightItemWidget extends StatelessWidget {
  UnsplashvfrcrteqkleightItemWidget(
    this.unsplashvfrcrteqkleightItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  UnsplashvfrcrteqkleightItemModel unsplashvfrcrteqkleightItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgUnsplashVfrcrteqkl8,
          height: 227.v,
          width: 343.h,
          radius: BorderRadius.vertical(
            top: Radius.circular(12.h),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: 30.h,
            vertical: 9.v,
          ),
          decoration: AppDecoration.balck.copyWith(
            borderRadius: BorderRadiusStyle.customBorderBL12,
          ),
          child: Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgCheckmarkLime900,
                height: 30.adaptSize,
                width: 30.adaptSize,
                margin: EdgeInsets.only(
                  top: 7.v,
                  bottom: 6.v,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 16.h,
                  top: 1.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "lbl_delivered".tr,
                      style: CustomTextStyles.titleMediumWhiteA70016,
                    ),
                    Text(
                      "msg_drinks_june_07".tr,
                      style: CustomTextStyles.bodySmallWhiteA700,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
