import '../../../core/app_export.dart';

/// This class is used in the [frame_item_widget] screen.
class FrameItemModel {
  FrameItemModel({
    this.tabs,
    this.isSelected,
  }) {
    tabs = tabs ?? "Electonics";
    isSelected = isSelected ?? false;
  }

  String? tabs;

  bool? isSelected;
}
