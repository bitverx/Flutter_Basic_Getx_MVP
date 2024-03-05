import 'package:get/get.dart';
import 'package:getx_mvp/app/modules/home/controllers/home_controller.dart';
import 'package:getx_mvp/app/modules/profile/controllers/profile_controller.dart';
import 'package:getx_mvp/app/modules/profile/store/news_store.dart';

import '../controllers/main_controller.dart';

class MainBinding extends Bindings {
  @override
  void dependencies() {
    Get
    ..lazyPut<MainController>(
      () => MainController(),
    )
    ..lazyPut<HomeController>(() => HomeController(),)
    ..lazyPut<ProfileController>(() => ProfileController(
      store: NewsStoreFactory().create(),
    ));
  }
}
