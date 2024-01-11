import 'package:flutter/material.dart';
import 'package:fashionista/core/app_export.dart';
import 'package:fashionista/presentation/my_cart_page/models/my_cart_model.dart';
import '../models/mycart_item_model.dart';

/// A provider class for the MyCartPage.
///
/// This provider manages the state of the MyCartPage, including the
/// current myCartModelObj

// ignore_for_file: must_be_immutable
class MyCartProvider extends ChangeNotifier {
  MyCartModel myCartModelObj = MyCartModel();

  @override
  void dispose() {
    super.dispose();
  }
}
