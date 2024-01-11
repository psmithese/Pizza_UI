import '../popular_items_screen/widgets/popularitems_item_widget.dart';
import 'models/popular_items_model.dart';
import 'models/popularitems_item_model.dart';
import 'package:fashionista/core/app_export.dart';
import 'package:fashionista/widgets/app_bar/appbar_leading_iconbutton_one.dart';
import 'package:fashionista/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:fashionista/widgets/app_bar/appbar_trailing_image.dart';
import 'package:fashionista/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'provider/popular_items_provider.dart';

class PopularItemsScreen extends StatefulWidget {
  const PopularItemsScreen({Key? key}) : super(key: key);

  @override
  PopularItemsScreenState createState() => PopularItemsScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => PopularItemsProvider(),
        child: PopularItemsScreen());
  }
}

class PopularItemsScreenState extends State<PopularItemsScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Padding(
                padding: EdgeInsets.only(left: 16.h, top: 24.v, right: 16.h),
                child: Consumer<PopularItemsProvider>(
                    builder: (context, provider, child) {
                  return GridView.builder(
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          mainAxisExtent: 293.v,
                          crossAxisCount: 2,
                          mainAxisSpacing: 15.h,
                          crossAxisSpacing: 15.h),
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: provider
                          .popularItemsModelObj.popularitemsItemList.length,
                      itemBuilder: (context, index) {
                        PopularitemsItemModel model = provider
                            .popularItemsModelObj.popularitemsItemList[index];
                        return PopularitemsItemWidget(model, onTapCard: () {
                          onTapCard(context);
                        });
                      });
                }))));
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
        title: AppbarSubtitleOne(text: "lbl_popular_items".tr),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgSearch,
              margin: EdgeInsets.symmetric(horizontal: 16.h, vertical: 13.v))
        ]);
  }

  /// Navigates to the productViewScreen when the action is triggered.
  onTapCard(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.productViewScreen);
  }

  /// Navigates to the previous screen.
  onTapArrowDown(BuildContext context) {
    NavigatorService.goBack();
  }
}
