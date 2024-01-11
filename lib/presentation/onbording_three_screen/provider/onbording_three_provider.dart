import 'package:flutter/material.dart';
import 'package:fashionista/core/app_export.dart';
import 'package:fashionista/presentation/onbording_three_screen/models/onbording_three_model.dart';

/// A provider class for the OnbordingThreeScreen.
///
/// This provider manages the state of the OnbordingThreeScreen, including the
/// current onbordingThreeModelObj

// ignore_for_file: must_be_immutable
class OnbordingThreeProvider extends ChangeNotifier {
  OnbordingThreeModel onbordingThreeModelObj = OnbordingThreeModel();

  @override
  void dispose() {
    super.dispose();
  }
}
