import 'package:get/get.dart';
import 'package:getx_mvp/app/modules/profile/store/news_store.dart';

import '../controllers/profile_controller.dart';

class ProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProfileController>(
      () => ProfileController(
        store: NewsStoreFactory().create(),
      ),
    );
  }
}
