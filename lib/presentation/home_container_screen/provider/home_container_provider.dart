import 'package:flutter/material.dart';
import 'package:fashionista/core/app_export.dart';
import 'package:fashionista/presentation/home_container_screen/models/home_container_model.dart';

/// A provider class for the HomeContainerScreen.
///
/// This provider manages the state of the HomeContainerScreen, including the
/// current homeContainerModelObj

// ignore_for_file: must_be_immutable
class HomeContainerProvider extends ChangeNotifier {
  HomeContainerModel homeContainerModelObj = HomeContainerModel();

  @override
  void dispose() {
    super.dispose();
  }
}
