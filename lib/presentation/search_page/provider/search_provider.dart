import 'package:flutter/material.dart';
import 'package:fashionista/core/app_export.dart';
import 'package:fashionista/presentation/search_page/models/search_model.dart';
import '../models/frame6_item_model.dart';
import '../models/frame7_item_model.dart';

/// A provider class for the SearchPage.
///
/// This provider manages the state of the SearchPage, including the
/// current searchModelObj

// ignore_for_file: must_be_immutable
class SearchProvider extends ChangeNotifier {
  TextEditingController searchController = TextEditingController();

  SearchModel searchModelObj = SearchModel();

  @override
  void dispose() {
    super.dispose();
    searchController.dispose();
  }
}
