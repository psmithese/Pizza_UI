import 'package:flutter/material.dart';
import 'package:fashionista/core/app_export.dart';
import 'package:fashionista/presentation/onbording_one_screen/models/onbording_one_model.dart';

/// A provider class for the OnbordingOneScreen.
///
/// This provider manages the state of the OnbordingOneScreen, including the
/// current onbordingOneModelObj

// ignore_for_file: must_be_immutable
class OnbordingOneProvider extends ChangeNotifier {
  OnbordingOneModel onbordingOneModelObj = OnbordingOneModel();

  @override
  void dispose() {
    super.dispose();
  }
}
