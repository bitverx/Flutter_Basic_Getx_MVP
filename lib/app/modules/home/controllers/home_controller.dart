import 'package:get/get.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  final count = 0.obs;
  @override
  void onInit() {
    print('onint call');
    super.onInit();
  }

  @override
  void onReady() {
     print('on ready call');
    super.onReady();
  }

  @override
  void onClose() {
     print('on close call');
    super.onClose();
  }

  void increment() => count.value++;
}
