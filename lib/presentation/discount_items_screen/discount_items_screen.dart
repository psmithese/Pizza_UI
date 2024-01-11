import '../discount_items_screen/widgets/discountitems_item_widget.dart';
import 'models/discount_items_model.dart';
import 'models/discountitems_item_model.dart';
import 'package:fashionista/core/app_export.dart';
import 'package:fashionista/widgets/app_bar/appbar_leading_iconbutton_one.dart';
import 'package:fashionista/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:fashionista/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'provider/discount_items_provider.dart';

class DiscountItemsScreen extends StatefulWidget {
  const DiscountItemsScreen({Key? key}) : super(key: key);

  @override
  DiscountItemsScreenState createState() => DiscountItemsScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => DiscountItemsProvider(),
        child: DiscountItemsScreen());
  }
}

class DiscountItemsScreenState extends State<DiscountItemsScreen> {
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
                child: Consumer<DiscountItemsProvider>(
                    builder: (context, provider, child) {
                  return ListView.separated(
                      physics: BouncingScrollPhysics(),
                      shrinkWrap: true,
                      separatorBuilder: (context, index) {
                        return SizedBox(height: 14.v);
                      },
                      itemCount: provider
                          .discountItemsModelObj.discountitemsItemList.length,
                      itemBuilder: (context, index) {
                        DiscountitemsItemModel model = provider
                            .discountItemsModelObj.discountitemsItemList[index];
                        return DiscountitemsItemWidget(model);
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
        title: AppbarSubtitleOne(text: "lbl_discount_items".tr));
  }

  /// Navigates to the previous screen.
  onTapArrowDown(BuildContext context) {
    NavigatorService.goBack();
  }
}
