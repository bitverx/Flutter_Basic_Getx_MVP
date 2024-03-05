import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx_mvp/app/data/news/news_network_service.dart';
import 'package:getx_mvp/app/data/news/news_repositry.dart';
import 'package:getx_mvp/app/modules/home/controllers/home_controller.dart';
import 'package:getx_mvp/app/modules/splash/controllers/splash_controller.dart';
import 'package:getx_mvp/xapp.dart';


void main() {
 final dio = Dio(BaseOptions(
      // baseUrl: Config.baseUrl,
      headers: {
        'Content-Type': 'application/json',
        'Accept-Charset': 'utf-8',
      },
    ));
    Get
    ..put(SplashController())
    ..put(NewsRepository(newsNetworkService: NewsNetworkService(dio: dio)));
  runApp(
    const XApp(),
  );
}
