import '../../../core/app_export.dart';

/// This class is used in the [mycart_item_widget] screen.
class MycartItemModel {
  MycartItemModel({
    this.jacket,
    this.jacket1,
    this.blackJacket,
    this.sizeXL,
    this.one,
    this.id,
  }) {
    jacket = jacket ?? ImageConstant.imgUnsplash8hqpxttomn0;
    jacket1 = jacket1 ?? "Jacket";
    blackJacket = blackJacket ?? "Black Jacket";
    sizeXL = sizeXL ?? "Size: XL";
    one = one ?? "1";
    id = id ?? "";
  }

  String? jacket;

  String? jacket1;

  String? blackJacket;

  String? sizeXL;

  String? one;

  String? id;
}
