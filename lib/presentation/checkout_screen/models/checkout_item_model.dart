import '../../../core/app_export.dart';

/// This class is used in the [checkout_item_widget] screen.
class CheckoutItemModel {
  CheckoutItemModel({
    this.creditCard,
    this.creditCard1,
    this.id,
  }) {
    creditCard = creditCard ?? ImageConstant.imgUser;
    creditCard1 = creditCard1 ?? "Credit Card";
    id = id ?? "";
  }

  String? creditCard;

  String? creditCard1;

  String? id;
}
