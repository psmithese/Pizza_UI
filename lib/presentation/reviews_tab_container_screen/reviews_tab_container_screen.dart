import 'models/reviews_tab_container_model.dart';
import 'package:fashionista/core/app_export.dart';
import 'package:fashionista/presentation/reviews_page/reviews_page.dart';
import 'package:fashionista/widgets/app_bar/appbar_leading_iconbutton_one.dart';
import 'package:fashionista/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:fashionista/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'provider/reviews_tab_container_provider.dart';

class ReviewsTabContainerScreen extends StatefulWidget {
  const ReviewsTabContainerScreen({Key? key}) : super(key: key);

  @override
  ReviewsTabContainerScreenState createState() =>
      ReviewsTabContainerScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => ReviewsTabContainerProvider(),
        child: ReviewsTabContainerScreen());
  }
}

// ignore_for_file: must_be_immutable
class ReviewsTabContainerScreenState extends State<ReviewsTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 24.v),
                  _buildTabview(context),
                  SizedBox(
                      height: 642.v,
                      child: TabBarView(
                          controller: tabviewController,
                          children: [ReviewsPage(), ReviewsPage()]))
                ]))));
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
        title: AppbarSubtitleOne(text: "lbl_reviews".tr));
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
        height: 52.v,
        width: 343.h,
        decoration: BoxDecoration(
            color: appTheme.gray200, borderRadius: BorderRadius.circular(10.h)),
        child: TabBar(
            controller: tabviewController,
            labelPadding: EdgeInsets.zero,
            labelColor: appTheme.whiteA700,
            labelStyle: TextStyle(
                fontSize: 16.fSize,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500),
            unselectedLabelColor: theme.colorScheme.primary,
            unselectedLabelStyle: TextStyle(
                fontSize: 16.fSize,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500),
            indicator: BoxDecoration(
                color: theme.colorScheme.primary,
                borderRadius: BorderRadius.circular(10.h)),
            tabs: [
              Tab(child: Text("lbl_positive".tr)),
              Tab(child: Text("lbl_negetive".tr))
            ]));
  }

  /// Navigates to the previous screen.
  onTapArrowDown(BuildContext context) {
    NavigatorService.goBack();
  }
}
