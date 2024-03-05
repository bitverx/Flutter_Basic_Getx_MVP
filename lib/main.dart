import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx_mvp/app/modules/home/controllers/home_controller.dart';
import 'package:getx_mvp/app/modules/splash/controllers/splash_controller.dart';
import 'package:getx_mvp/xapp.dart';


void main() {
  Get.put(HomeController());
    Get.put(SplashController()); 
  runApp(
    const XApp(),
  );
}
