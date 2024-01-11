import 'unsplashvfrcrteqkleight_item_model.dart';
import '../../../core/app_export.dart';
import 'orderstatus_item_model.dart';

class OrderStatusModel {
  List<UnsplashvfrcrteqkleightItemModel> unsplashvfrcrteqkleightItemList =
      List.generate(1, (index) => UnsplashvfrcrteqkleightItemModel());

  List<OrderstatusItemModel> orderstatusItemList = [
    OrderstatusItemModel(
        orderReceived: ImageConstant.imgSettings,
        orderReceived1: "Order Received",
        time: "05:48 PM, 7 June 2021"),
    OrderstatusItemModel(
        orderReceived: ImageConstant.imgSettings,
        orderReceived1: "On The Way",
        time: "05:55 PM, 7 June 2021"),
    OrderstatusItemModel(
        orderReceived: ImageConstant.imgUserLime900,
        orderReceived1: "Delivered",
        time: "Finish Time In 25 Min")
  ];
}
