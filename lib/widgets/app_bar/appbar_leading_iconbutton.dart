import 'package:fashionista/core/app_export.dart';
import 'package:fashionista/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AppbarLeadingIconbutton extends StatelessWidget {
  AppbarLeadingIconbutton({
    Key? key,
    this.imagePath,
    this.margin,
    this.onTap,
  }) : super(
          key: key,
        );

  String? imagePath;

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap!.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: CustomIconButton(
          height: 40.adaptSize,
          width: 40.adaptSize,
          decoration: IconButtonStyleHelper.fillWhiteATL20,
          child: CustomImageView(
            imagePath: ImageConstant.imgArrowDown,
          ),
        ),
      ),
    );
  }
}
