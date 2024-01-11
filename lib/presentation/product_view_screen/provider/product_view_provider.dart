import 'package:flutter/material.dart';
import 'package:fashionista/core/app_export.dart';
import 'package:fashionista/presentation/product_view_screen/models/product_view_model.dart';
import '../models/frame4_item_model.dart';

/// A provider class for the ProductViewScreen.
///
/// This provider manages the state of the ProductViewScreen, including the
/// current productViewModelObj

// ignore_for_file: must_be_immutable
class ProductViewProvider extends ChangeNotifier {
  ProductViewModel productViewModelObj = ProductViewModel();

  @override
  void dispose() {
    super.dispose();
  }

  void onSelectedChipView1(
    int index,
    bool value,
  ) {
    productViewModelObj.frame4ItemList.forEach((element) {
      element.isSelected = false;
    });
    productViewModelObj.frame4ItemList[index].isSelected = value;
    notifyListeners();
  }
}
