import 'today_item_model.dart';
import '../../../core/app_export.dart';

class NotificationModel {
  List<TodayItemModel> todayItemList = [
    TodayItemModel(groupBy: "Today"),
    TodayItemModel(groupBy: "Today"),
    TodayItemModel(groupBy: "Today"),
    TodayItemModel(groupBy: "Yesterday"),
    TodayItemModel(groupBy: "Yesterday"),
    TodayItemModel(groupBy: "Yesterday")
  ];
}
