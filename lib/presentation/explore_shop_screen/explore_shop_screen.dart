import '../explore_shop_screen/widgets/frame_item_widget.dart';
import 'models/explore_shop_model.dart';
import 'models/frame_item_model.dart';
import 'package:fashionista/core/app_export.dart';
import 'package:fashionista/widgets/app_bar/appbar_title.dart';
import 'package:fashionista/widgets/app_bar/custom_app_bar.dart';
import 'package:fashionista/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'provider/explore_shop_provider.dart';

class ExploreShopScreen extends StatefulWidget {
  const ExploreShopScreen({Key? key})
      : super(
          key: key,
        );

  @override
  ExploreShopScreenState createState() => ExploreShopScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ExploreShopProvider(),
      child: ExploreShopScreen(),
    );
  }
}

class ExploreShopScreenState extends State<ExploreShopScreen> {
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
          padding: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 8.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 304.h,
                margin: EdgeInsets.only(right: 38.h),
                child: Text(
                  "msg_choose_which_you".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.bodyLarge!.copyWith(
                    height: 1.50,
                  ),
                ),
              ),
              SizedBox(height: 28.v),
              _buildFrame(context),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildExploreShop(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 86.v,
      title: AppbarTitle(
        text: "msg_what_products_you".tr,
        margin: EdgeInsets.only(left: 16.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Consumer<ExploreShopProvider>(
      builder: (context, provider, child) {
        return Wrap(
          runSpacing: 12.v,
          spacing: 12.h,
          children: List<Widget>.generate(
            provider.exploreShopModelObj.frameItemList.length,
            (index) {
              FrameItemModel model =
                  provider.exploreShopModelObj.frameItemList[index];

              return FrameItemWidget(
                model,
                onSelectedChipView1: (value) {
                  provider.onSelectedChipView1(index, value);
                },
              );
            },
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildExploreShop(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl_explore_shop".tr,
      margin: EdgeInsets.only(
        left: 16.h,
        right: 16.h,
        bottom: 36.v,
      ),
    );
  }
}
