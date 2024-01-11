import '../../../core/app_export.dart';
import 'checkout_item_model.dart';

class CheckoutModel {
  List<CheckoutItemModel> checkoutItemList = [
    CheckoutItemModel(
        creditCard: ImageConstant.imgUser, creditCard1: "Credit Card"),
    CheckoutItemModel(
        creditCard: ImageConstant.imgFlatcoloriconsgoogle,
        creditCard1: "Google Pay"),
    CheckoutItemModel(
        creditCard: ImageConstant.imgUimapple, creditCard1: "Apple Pay"),
    CheckoutItemModel(
        creditCard: ImageConstant.imgTelevision, creditCard1: "Paypal")
  ];
}
