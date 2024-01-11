import 'package:flutter/material.dart';
import 'package:fashionista/core/app_export.dart';
import 'package:fashionista/presentation/explore_shop_screen/models/explore_shop_model.dart';
import '../models/frame_item_model.dart';

/// A provider class for the ExploreShopScreen.
///
/// This provider manages the state of the ExploreShopScreen, including the
/// current exploreShopModelObj

// ignore_for_file: must_be_immutable
class ExploreShopProvider extends ChangeNotifier {
  ExploreShopModel exploreShopModelObj = ExploreShopModel();

  @override
  void dispose() {
    super.dispose();
  }

  void onSelectedChipView1(
    int index,
    bool value,
  ) {
    exploreShopModelObj.frameItemList.forEach((element) {
      element.isSelected = false;
    });
    exploreShopModelObj.frameItemList[index].isSelected = value;
    notifyListeners();
  }
}
