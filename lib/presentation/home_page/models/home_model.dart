import '../../../core/app_export.dart';
import 'frame2_item_model.dart';
import 'frame3_item_model.dart';

class HomeModel {
  List<Frame2ItemModel> frame2ItemList = [
    Frame2ItemModel(
        casualJeansShoes: ImageConstant.imgUnsplashEmlkhdeydhg,
        casualJeansShoes1: "Casual Jeans Shoes"),
    Frame2ItemModel(
        casualJeansShoes: ImageConstant.imgUnsplashEmlkhdeydhg235x164,
        casualJeansShoes1: "Casual Jeans Shoes"),
    Frame2ItemModel(
        casualJeansShoes: ImageConstant.imgUnsplashEmlkhdeydhg1,
        casualJeansShoes1: "Casual Jeans Shoes")
  ];

  List<Frame3ItemModel> frame3ItemList = [
    Frame3ItemModel(
        blackJacket: ImageConstant.imgUnsplashEmlkhdeydhg2,
        casualJeansShoes: "Black Jacket"),
    Frame3ItemModel(
        blackJacket: ImageConstant.imgUnsplashEmlkhdeydhg3,
        casualJeansShoes: "Casual Jeans Shoes"),
    Frame3ItemModel(
        blackJacket: ImageConstant.imgUnsplashEmlkhdeydhg2,
        casualJeansShoes: "Black Jacket")
  ];
}
