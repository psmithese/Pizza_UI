import 'models/complete_model.dart';
import 'package:fashionista/core/app_export.dart';
import 'package:fashionista/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'provider/complete_provider.dart';

class CompleteScreen extends StatefulWidget {
  const CompleteScreen({Key? key}) : super(key: key);

  @override
  CompleteScreenState createState() => CompleteScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => CompleteProvider(), child: CompleteScreen());
  }
}

class CompleteScreenState extends State<CompleteScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 16.h),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgCheckmark,
                          height: 97.v,
                          width: 87.h),
                      SizedBox(height: 39.v),
                      Container(
                          width: 279.h,
                          margin: EdgeInsets.only(left: 33.h, right: 31.h),
                          child: Text("msg_order_completed".tr,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: CustomTextStyles.bodyLargeGray500
                                  .copyWith(height: 1.50))),
                      SizedBox(height: 53.v),
                      CustomElevatedButton(
                          text: "lbl_my_order".tr,
                          onPressed: () {
                            onTapMyOrder(context);
                          }),
                      SizedBox(height: 5.v)
                    ]))));
  }

  /// Navigates to the trackingOrderScreen when the action is triggered.
  onTapMyOrder(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.trackingOrderScreen,
    );
  }
}
