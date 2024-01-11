import '../../../core/app_export.dart';

/// This class is used in the [frame4_item_widget] screen.
class Frame4ItemModel {
  Frame4ItemModel({
    this.tabs,
    this.isSelected,
  }) {
    tabs = tabs ?? "S";
    isSelected = isSelected ?? false;
  }

  String? tabs;

  bool? isSelected;
}
