import 'package:flutter/material.dart';
import 'package:fashionista/core/app_export.dart';
import 'package:fashionista/presentation/social_account_link_screen/models/social_account_link_model.dart';
import '../models/socialaccountlink_item_model.dart';

/// A provider class for the SocialAccountLinkScreen.
///
/// This provider manages the state of the SocialAccountLinkScreen, including the
/// current socialAccountLinkModelObj

// ignore_for_file: must_be_immutable
class SocialAccountLinkProvider extends ChangeNotifier {
  SocialAccountLinkModel socialAccountLinkModelObj = SocialAccountLinkModel();

  @override
  void dispose() {
    super.dispose();
  }
}
