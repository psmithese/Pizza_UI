import '../../../core/app_export.dart';

/// This class is used in the [popularitems_item_widget] screen.
class PopularitemsItemModel {
  PopularitemsItemModel({
    this.blackJacket,
    this.casualJeansShoes,
    this.id,
  }) {
    blackJacket = blackJacket ?? ImageConstant.imgUnsplashEmlkhdeydhg4;
    casualJeansShoes = casualJeansShoes ?? "Black Jacket";
    id = id ?? "";
  }

  String? blackJacket;

  String? casualJeansShoes;

  String? id;
}
