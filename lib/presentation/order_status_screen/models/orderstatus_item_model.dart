import '../../../core/app_export.dart';

/// This class is used in the [orderstatus_item_widget] screen.
class OrderstatusItemModel {
  OrderstatusItemModel({
    this.orderReceived,
    this.orderReceived1,
    this.time,
    this.id,
  }) {
    orderReceived = orderReceived ?? ImageConstant.imgSettings;
    orderReceived1 = orderReceived1 ?? "Order Received";
    time = time ?? "05:48 PM, 7 June 2021";
    id = id ?? "";
  }

  String? orderReceived;

  String? orderReceived1;

  String? time;

  String? id;
}
