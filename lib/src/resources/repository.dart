import 'dart:async';

import 'package:flutter/services.dart';
import 'package:flutter_skeleton_v2/src/models/home_response_model.dart';
import 'package:flutter_skeleton_v2/src/resources/api_helper.dart';

class Repository {
  ApiHelper apiProvider = ApiHelper();

  //HOME
  static const String HOME = 'home/home/';

  //GET
  Future<HomeResponseModel> getHomeList() async {
    final response = await apiProvider.get(HOME);
    final result = HomeResponseModel.fromJson(response);
    return result;
  }
}