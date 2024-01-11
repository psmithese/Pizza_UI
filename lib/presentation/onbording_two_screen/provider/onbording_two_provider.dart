import 'package:flutter/material.dart';
import 'package:fashionista/core/app_export.dart';
import 'package:fashionista/presentation/onbording_two_screen/models/onbording_two_model.dart';

/// A provider class for the OnbordingTwoScreen.
///
/// This provider manages the state of the OnbordingTwoScreen, including the
/// current onbordingTwoModelObj

// ignore_for_file: must_be_immutable
class OnbordingTwoProvider extends ChangeNotifier {
  OnbordingTwoModel onbordingTwoModelObj = OnbordingTwoModel();

  @override
  void dispose() {
    super.dispose();
  }
}
