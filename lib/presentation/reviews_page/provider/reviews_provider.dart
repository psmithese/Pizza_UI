import 'package:flutter/material.dart';
import 'package:fashionista/core/app_export.dart';
import 'package:fashionista/presentation/reviews_page/models/reviews_model.dart';

/// A provider class for the ReviewsPage.
///
/// This provider manages the state of the ReviewsPage, including the
/// current reviewsModelObj

// ignore_for_file: must_be_immutable
class ReviewsProvider extends ChangeNotifier {
  ReviewsModel reviewsModelObj = ReviewsModel();

  @override
  void dispose() {
    super.dispose();
  }
}
