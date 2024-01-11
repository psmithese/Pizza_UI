import '../search_page/widgets/frame6_item_widget.dart';
import '../search_page/widgets/frame7_item_widget.dart';
import 'models/frame6_item_model.dart';
import 'models/frame7_item_model.dart';
import 'models/search_model.dart';
import 'package:fashionista/core/app_export.dart';
import 'package:fashionista/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:fashionista/widgets/app_bar/custom_app_bar.dart';
import 'package:fashionista/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';
import 'provider/search_provider.dart';

// ignore_for_file: must_be_immutable
class SearchPage extends StatefulWidget {
  const SearchPage({Key? key})
      : super(
          key: key,
        );

  @override
  SearchPageState createState() => SearchPageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SearchProvider(),
      child: SearchPage(),
    );
  }
}

class SearchPageState extends State<SearchPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 23.v),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.h),
                child: Selector<SearchProvider, TextEditingController?>(
                  selector: (
                    context,
                    provider,
                  ) =>
                      provider.searchController,
                  builder: (context, searchController, child) {
                    return CustomSearchView(
                      controller: searchController,
                      hintText: "lbl_search".tr,
                    );
                  },
                ),
              ),
              SizedBox(height: 23.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 16.h),
                  child: Text(
                    "lbl_recent_search".tr,
                    style: theme.textTheme.titleMedium,
                  ),
                ),
              ),
              SizedBox(height: 12.v),
              _buildFrame(context),
              SizedBox(height: 25.v),
              _buildFrame1(context),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      centerTitle: true,
      title: AppbarSubtitleOne(
        text: "lbl_search".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return SizedBox(
      height: 58.v,
      child: Consumer<SearchProvider>(
        builder: (context, provider, child) {
          return ListView.separated(
            padding: EdgeInsets.only(left: 16.h),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                width: 24.h,
              );
            },
            itemCount: provider.searchModelObj.frame6ItemList.length,
            itemBuilder: (context, index) {
              Frame6ItemModel model =
                  provider.searchModelObj.frame6ItemList[index];
              return Frame6ItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame1(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "msg_items_that_you_may".tr,
            style: theme.textTheme.titleMedium,
          ),
          SizedBox(height: 10.v),
          Padding(
            padding: EdgeInsets.only(right: 16.h),
            child: Consumer<SearchProvider>(
              builder: (context, provider, child) {
                return ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  separatorBuilder: (
                    context,
                    index,
                  ) {
                    return SizedBox(
                      height: 14.v,
                    );
                  },
                  itemCount: provider.searchModelObj.frame7ItemList.length,
                  itemBuilder: (context, index) {
                    Frame7ItemModel model =
                        provider.searchModelObj.frame7ItemList[index];
                    return Frame7ItemWidget(
                      model,
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
