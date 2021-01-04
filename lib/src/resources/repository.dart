import 'dart:async';

import 'package:flutter/services.dart';
import 'package:flutter_skeleton_v2/src/models/home/home_list_response_model.dart';
import 'package:flutter_skeleton_v2/src/models/notification/notification_list_response_model.dart';
import 'package:flutter_skeleton_v2/src/resources/api_helper.dart';

class Repository {
  ApiHelper apiProvider = ApiHelper();

  //HOME
  static const String HOME_LIST = 'ea467f7a-a7b9-4627-99d9-38636ba2adb9/';

  //NOTIFICATION
  static const String NOTIFICATION_LIST =
      '93212703-1e83-4200-adb0-2138efe9ca9c/';

  //GET
  Future<HomeListResponseModel> getHomeList() async {
    final response = await apiProvider.get(HOME_LIST);
    final result = HomeListResponseModel.fromJson(response);
    return result;
  }

  //GET
  Future<NotificationListResponseModel> getNotificationList() async {
    final response = await apiProvider.get(NOTIFICATION_LIST);
    final result = NotificationListResponseModel.fromJson(response);
    return result;
  }
}
