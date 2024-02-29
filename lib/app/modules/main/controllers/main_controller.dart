import 'package:get/get.dart';

enum SelectedTab { home, profile, notification, other }
class MainController extends GetxController {
  //TODO: Implement MainController

  final count = 0.obs;
  final selectedTab = SelectedTab.home.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

    void onHomePressed() => selectedTab.value = SelectedTab.home;
      void onMyProfilePressed() => selectedTab.value = SelectedTab.profile;

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
