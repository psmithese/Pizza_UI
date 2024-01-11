import '../../../core/app_export.dart';

/// This class is used in the [frame2_item_widget] screen.
class Frame2ItemModel {
  Frame2ItemModel({
    this.casualJeansShoes,
    this.casualJeansShoes1,
    this.id,
  }) {
    casualJeansShoes = casualJeansShoes ?? ImageConstant.imgUnsplashEmlkhdeydhg;
    casualJeansShoes1 = casualJeansShoes1 ?? "Casual Jeans Shoes";
    id = id ?? "";
  }

  String? casualJeansShoes;

  String? casualJeansShoes1;

  String? id;
}
