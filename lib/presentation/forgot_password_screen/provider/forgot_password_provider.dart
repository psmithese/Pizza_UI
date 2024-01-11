import 'package:flutter/material.dart';
import 'package:fashionista/core/app_export.dart';
import 'package:fashionista/presentation/forgot_password_screen/models/forgot_password_model.dart';

/// A provider class for the ForgotPasswordScreen.
///
/// This provider manages the state of the ForgotPasswordScreen, including the
/// current forgotPasswordModelObj

// ignore_for_file: must_be_immutable
class ForgotPasswordProvider extends ChangeNotifier {
  TextEditingController emailController = TextEditingController();

  ForgotPasswordModel forgotPasswordModelObj = ForgotPasswordModel();

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
  }
}
