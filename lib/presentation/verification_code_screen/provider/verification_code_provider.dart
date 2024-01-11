import 'package:flutter/material.dart';
import 'package:fashionista/core/app_export.dart';
import 'package:fashionista/presentation/verification_code_screen/models/verification_code_model.dart';

/// A provider class for the VerificationCodeScreen.
///
/// This provider manages the state of the VerificationCodeScreen, including the
/// current verificationCodeModelObj

// ignore_for_file: must_be_immutable
class VerificationCodeProvider extends ChangeNotifier {
  TextEditingController otpController = TextEditingController();

  VerificationCodeModel verificationCodeModelObj = VerificationCodeModel();

  @override
  void dispose() {
    super.dispose();
  }
}
