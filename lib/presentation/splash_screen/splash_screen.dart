import 'models/splash_model.dart';
import 'package:fashionista/core/app_export.dart';
import 'package:flutter/material.dart';
import 'provider/splash_provider.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  SplashScreenState createState() => SplashScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => SplashProvider(), child: SplashScreen());
  }
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 3000), () {
      NavigatorService.popAndPushNamed(
        AppRoutes.onbordingOneScreen,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                          height: 164.v,
                          width: 167.h,
                          child:
                              Stack(alignment: Alignment.bottomLeft, children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgVector,
                                height: 58.v,
                                width: 53.h,
                                alignment: Alignment.topLeft,
                                margin: EdgeInsets.only(left: 31.h, top: 5.v)),
                            Align(
                                alignment: Alignment.bottomLeft,
                                child: Container(
                                    height: 116.v,
                                    width: 95.h,
                                    margin: EdgeInsets.only(
                                        left: 21.h, bottom: 5.v),
                                    decoration: BoxDecoration(
                                        color: appTheme.red600,
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(5.h),
                                            topRight: Radius.circular(6.h),
                                            bottomLeft: Radius.circular(5.h),
                                            bottomRight:
                                                Radius.circular(6.h))))),
                            CustomImageView(
                                imagePath:
                                    ImageConstant.imgVectorErrorcontainer,
                                height: 116.v,
                                width: 100.h,
                                alignment: Alignment.bottomLeft,
                                margin:
                                    EdgeInsets.only(left: 15.h, bottom: 5.v)),
                            CustomImageView(
                                imagePath: ImageConstant.imgVectorOnerror,
                                height: 10.v,
                                width: 58.h,
                                alignment: Alignment.topLeft,
                                margin: EdgeInsets.only(left: 39.h, top: 55.v)),
                            CustomImageView(
                                imagePath: ImageConstant.imgVector,
                                height: 58.v,
                                width: 53.h,
                                alignment: Alignment.topLeft,
                                margin: EdgeInsets.only(left: 42.h, top: 5.v)),
                            CustomImageView(
                                imagePath: ImageConstant.imgVectorLime90001,
                                height: 116.v,
                                width: 21.h,
                                alignment: Alignment.bottomLeft,
                                margin:
                                    EdgeInsets.only(left: 5.h, bottom: 5.v)),
                            CustomImageView(
                                imagePath: ImageConstant.imgVectorOnprimary,
                                height: 11.v,
                                width: 21.h,
                                alignment: Alignment.topLeft,
                                margin: EdgeInsets.only(left: 5.h, top: 42.v)),
                            Align(
                                alignment: Alignment.bottomRight,
                                child: Container(
                                    height: 74.v,
                                    width: 95.h,
                                    margin: EdgeInsets.only(
                                        right: 5.h, bottom: 5.v),
                                    decoration: BoxDecoration(
                                        color: theme
                                            .colorScheme.onPrimaryContainer,
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(5.h),
                                            topRight: Radius.circular(6.h),
                                            bottomLeft: Radius.circular(5.h),
                                            bottomRight:
                                                Radius.circular(5.h))))),
                            CustomImageView(
                                imagePath: ImageConstant.imgVectorOnerror,
                                height: 10.v,
                                width: 58.h,
                                alignment: Alignment.bottomRight,
                                margin:
                                    EdgeInsets.only(right: 23.h, bottom: 61.v)),
                            CustomImageView(
                                imagePath: ImageConstant.imgVectorPrimary,
                                height: 47.v,
                                width: 53.h,
                                alignment: Alignment.bottomRight,
                                margin:
                                    EdgeInsets.only(right: 26.h, bottom: 21.v)),
                            CustomImageView(
                                imagePath: ImageConstant.imgVectorRed300,
                                height: 74.v,
                                width: 21.h,
                                alignment: Alignment.bottomLeft,
                                margin:
                                    EdgeInsets.only(left: 50.h, bottom: 5.v)),
                            CustomImageView(
                                imagePath: ImageConstant.imgVectorLime90002,
                                height: 11.v,
                                width: 21.h,
                                alignment: Alignment.bottomLeft,
                                margin:
                                    EdgeInsets.only(left: 50.h, bottom: 67.v)),
                            CustomImageView(
                                imagePath: ImageConstant.imgVectorBlueGray50,
                                height: 164.v,
                                width: 167.h,
                                alignment: Alignment.center)
                          ])),
                      SizedBox(height: 29.v),
                      Text("lbl_fashionista".tr,
                          style: theme.textTheme.headlineLarge),
                      SizedBox(height: 5.v)
                    ]))));
  }
}
