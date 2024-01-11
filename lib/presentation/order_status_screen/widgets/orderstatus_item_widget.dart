import '../models/orderstatus_item_model.dart';
import 'package:fashionista/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class OrderstatusItemWidget extends StatelessWidget {
  OrderstatusItemWidget(
    this.orderstatusItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  OrderstatusItemModel orderstatusItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomImageView(
          imagePath: orderstatusItemModelObj?.orderReceived,
          height: 88.v,
          width: 8.h,
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(
              left: 14.h,
              bottom: 42.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  orderstatusItemModelObj.orderReceived1!,
                  style: CustomTextStyles.bodyLarge18,
                ),
                Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgCocoLineClock,
                      height: 16.adaptSize,
                      width: 16.adaptSize,
                      margin: EdgeInsets.only(bottom: 1.v),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 4.h),
                      child: Text(
                        orderstatusItemModelObj.time!,
                        style: theme.textTheme.labelLarge,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
