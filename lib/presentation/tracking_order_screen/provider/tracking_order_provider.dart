import 'package:flutter/material.dart';
import 'package:fashionista/core/app_export.dart';
import 'package:fashionista/presentation/tracking_order_screen/models/tracking_order_model.dart';

/// A provider class for the TrackingOrderScreen.
///
/// This provider manages the state of the TrackingOrderScreen, including the
/// current trackingOrderModelObj

// ignore_for_file: must_be_immutable
class TrackingOrderProvider extends ChangeNotifier {
  TrackingOrderModel trackingOrderModelObj = TrackingOrderModel();

  @override
  void dispose() {
    super.dispose();
  }
}
