import '../order_status_screen/widgets/orderstatus_item_widget.dart';
import '../order_status_screen/widgets/unsplashvfrcrteqkleight_item_widget.dart';
import 'models/order_status_model.dart';
import 'models/orderstatus_item_model.dart';
import 'models/unsplashvfrcrteqkleight_item_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:fashionista/core/app_export.dart';
import 'package:fashionista/widgets/app_bar/appbar_leading_iconbutton_one.dart';
import 'package:fashionista/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:fashionista/widgets/app_bar/custom_app_bar.dart';
import 'package:fashionista/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'provider/order_status_provider.dart';

class OrderStatusScreen extends StatefulWidget {
  const OrderStatusScreen({Key? key}) : super(key: key);

  @override
  OrderStatusScreenState createState() => OrderStatusScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => OrderStatusProvider(), child: OrderStatusScreen());
  }
}

class OrderStatusScreenState extends State<OrderStatusScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 24.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildUnsplashVFrcRtEQKLEight(context),
                      SizedBox(height: 13.v),
                      _buildOrderStatus(context)
                    ])),
            bottomNavigationBar: _buildConfirmDelivery(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 56.h,
        leading: AppbarLeadingIconbuttonOne(
            imagePath: ImageConstant.imgArrowDown,
            margin: EdgeInsets.only(left: 16.h, top: 5.v, bottom: 5.v),
            onTap: () {
              onTapArrowDown(context);
            }),
        centerTitle: true,
        title: AppbarSubtitleOne(text: "lbl_order_status".tr));
  }

  /// Section Widget
  Widget _buildUnsplashVFrcRtEQKLEight(BuildContext context) {
    return Consumer<OrderStatusProvider>(builder: (context, provider, child) {
      return CarouselSlider.builder(
          options: CarouselOptions(
              height: 290.v,
              initialPage: 0,
              autoPlay: true,
              viewportFraction: 1.0,
              enableInfiniteScroll: false,
              scrollDirection: Axis.horizontal,
              onPageChanged: (index, reason) {
                provider.sliderIndex = index;
              }),
          itemCount: provider
              .orderStatusModelObj.unsplashvfrcrteqkleightItemList.length,
          itemBuilder: (context, index, realIndex) {
            UnsplashvfrcrteqkleightItemModel model = provider
                .orderStatusModelObj.unsplashvfrcrteqkleightItemList[index];
            return UnsplashvfrcrteqkleightItemWidget(model);
          });
    });
  }

  /// Section Widget
  Widget _buildOrderStatus(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 39.h, right: 131.h),
        child:
            Consumer<OrderStatusProvider>(builder: (context, provider, child) {
          return ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (context, index) {
                return SizedBox(height: 1.v);
              },
              itemCount:
                  provider.orderStatusModelObj.orderstatusItemList.length,
              itemBuilder: (context, index) {
                OrderstatusItemModel model =
                    provider.orderStatusModelObj.orderstatusItemList[index];
                return OrderstatusItemWidget(model);
              });
        }));
  }

  /// Section Widget
  Widget _buildConfirmDelivery(BuildContext context) {
    return CustomElevatedButton(
        text: "msg_confirm_delivery".tr,
        margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 21.v),
        onPressed: () {
          onTapConfirmDelivery(context);
        });
  }

  /// Navigates to the previous screen.
  onTapArrowDown(BuildContext context) {
    NavigatorService.goBack();
  }

  /// Navigates to the settingsScreen when the action is triggered.
  onTapConfirmDelivery(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.settingsScreen,
    );
  }
}
