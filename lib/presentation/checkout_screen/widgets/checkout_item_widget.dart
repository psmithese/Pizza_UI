import '../models/checkout_item_model.dart';
import 'package:fashionista/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CheckoutItemWidget extends StatelessWidget {
  CheckoutItemWidget(
    this.checkoutItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  CheckoutItemModel checkoutItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 24.h,
        vertical: 12.v,
      ),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 10.v),
              decoration: AppDecoration.fillGray,
              child: Row(
                children: [
                  CustomImageView(
                    imagePath: checkoutItemModelObj?.creditCard,
                    height: 30.adaptSize,
                    width: 30.adaptSize,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 26.h,
                      top: 2.v,
                      bottom: 3.v,
                    ),
                    child: Text(
                      checkoutItemModelObj.creditCard1!,
                      style: theme.textTheme.bodyLarge,
                    ),
                  ),
                ],
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgContrast,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(
              left: 24.h,
              top: 13.v,
              bottom: 13.v,
            ),
          ),
        ],
      ),
    );
  }
}
