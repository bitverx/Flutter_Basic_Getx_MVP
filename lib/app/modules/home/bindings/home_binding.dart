import 'package:get/get.dart';
import 'package:getx_mvp/app/modules/home/controllers/home_controller.dart';


class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
  }
}
