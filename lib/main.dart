import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx_mvp/app/modules/home/controllers/home_controller.dart';
import 'package:getx_mvp/app/modules/splash/controllers/splash_controller.dart';

import 'app/routes/app_pages.dart';

void main() {
  Get.put(HomeController());
    Get.put(SplashController()); 
  runApp(
    
    GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
