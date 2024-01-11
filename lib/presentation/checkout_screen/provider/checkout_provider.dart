import 'package:flutter/material.dart';
import 'package:fashionista/core/app_export.dart';
import 'package:fashionista/presentation/checkout_screen/models/checkout_model.dart';
import '../models/checkout_item_model.dart';

/// A provider class for the CheckoutScreen.
///
/// This provider manages the state of the CheckoutScreen, including the
/// current checkoutModelObj

// ignore_for_file: must_be_immutable
class CheckoutProvider extends ChangeNotifier {
  CheckoutModel checkoutModelObj = CheckoutModel();

  @override
  void dispose() {
    super.dispose();
  }
}
