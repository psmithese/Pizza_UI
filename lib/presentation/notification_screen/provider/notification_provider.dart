import 'package:flutter/material.dart';
import 'package:fashionista/core/app_export.dart';
import 'package:fashionista/presentation/notification_screen/models/notification_model.dart';
import '../models/today_item_model.dart';

/// A provider class for the NotificationScreen.
///
/// This provider manages the state of the NotificationScreen, including the
/// current notificationModelObj

// ignore_for_file: must_be_immutable
class NotificationProvider extends ChangeNotifier {
  NotificationModel notificationModelObj = NotificationModel();

  @override
  void dispose() {
    super.dispose();
  }
}
