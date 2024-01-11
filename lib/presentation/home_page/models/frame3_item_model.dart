import '../../../core/app_export.dart';

/// This class is used in the [frame3_item_widget] screen.
class Frame3ItemModel {
  Frame3ItemModel({
    this.blackJacket,
    this.casualJeansShoes,
    this.id,
  }) {
    blackJacket = blackJacket ?? ImageConstant.imgUnsplashEmlkhdeydhg2;
    casualJeansShoes = casualJeansShoes ?? "Black Jacket";
    id = id ?? "";
  }

  String? blackJacket;

  String? casualJeansShoes;

  String? id;
}
