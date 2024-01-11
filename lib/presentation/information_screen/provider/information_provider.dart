import 'package:flutter/material.dart';
import 'package:fashionista/core/app_export.dart';
import 'package:fashionista/presentation/information_screen/models/information_model.dart';

/// A provider class for the InformationScreen.
///
/// This provider manages the state of the InformationScreen, including the
/// current informationModelObj

// ignore_for_file: must_be_immutable
class InformationProvider extends ChangeNotifier {
  TextEditingController nameController = TextEditingController();

  TextEditingController dateOfBirthController = TextEditingController();

  TextEditingController addressController = TextEditingController();

  TextEditingController mobileNumberController = TextEditingController();

  InformationModel informationModelObj = InformationModel();

  @override
  void dispose() {
    super.dispose();
    nameController.dispose();
    dateOfBirthController.dispose();
    addressController.dispose();
    mobileNumberController.dispose();
  }
}
