import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_mvp/app/routes/app_pages.dart';

class SplashController extends GetxController {
  //TODO: Implement SplashController

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();

  }

  @override
  void onReady() {

    super.onReady();
        Future.delayed(Duration(seconds: 5), () {
      Get.offAndToNamed(Routes.LOGIN); // Replace '/home' with the actual route name of your home screen
    });
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
