import 'package:flutter/material.dart';
import 'package:fashionista/core/app_export.dart';
import 'package:fashionista/presentation/discount_items_screen/models/discount_items_model.dart';
import '../models/discountitems_item_model.dart';

/// A provider class for the DiscountItemsScreen.
///
/// This provider manages the state of the DiscountItemsScreen, including the
/// current discountItemsModelObj

// ignore_for_file: must_be_immutable
class DiscountItemsProvider extends ChangeNotifier {
  DiscountItemsModel discountItemsModelObj = DiscountItemsModel();

  @override
  void dispose() {
    super.dispose();
  }
}
