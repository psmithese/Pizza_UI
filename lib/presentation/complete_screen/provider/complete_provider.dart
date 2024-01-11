import 'package:flutter/material.dart';
import 'package:fashionista/core/app_export.dart';
import 'package:fashionista/presentation/complete_screen/models/complete_model.dart';

/// A provider class for the CompleteScreen.
///
/// This provider manages the state of the CompleteScreen, including the
/// current completeModelObj

// ignore_for_file: must_be_immutable
class CompleteProvider extends ChangeNotifier {
  CompleteModel completeModelObj = CompleteModel();

  @override
  void dispose() {
    super.dispose();
  }
}
