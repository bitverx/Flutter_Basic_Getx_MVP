import 'package:get/get.dart';
import 'package:getx_mvp/app/mixins/loading_mixin.dart';
import 'package:getx_mvp/app/modules/profile/controllers/profile_controller.dart';

enum SelectedTab { home, profile, notification, other }
class MainController extends GetxController with LoadingMixin{


  final count = 0.obs;
  final selectedTab = SelectedTab.home.obs;
  @override
  void onInit() {
    super.onInit();
    makeNetworkCalls();
  }

  @override
  void onReady() {
    super.onReady();
  }
 Future<void> makeNetworkCalls() async {

    Get.find<ProfileController>().getTransactionList();
  }
    void onHomePressed() => selectedTab.value = SelectedTab.home;
      void onMyProfilePressed() => selectedTab.value = SelectedTab.profile;

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
