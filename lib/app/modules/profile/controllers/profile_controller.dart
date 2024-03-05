import 'package:get/get.dart';
import 'package:getx_mvp/app/mixins/loading_mixin.dart';
import 'package:getx_mvp/app/modules/profile/store/news_store.dart';

class ProfileController extends GetxController with LoadingMixin {
  ProfileController({required this.store});

  final NewsStore store;

  final count = 0.obs;

   Future<void> getTransactionList() async {
   isLoading = true;

    await store.getTransactionList();

    isLoading = false;
  }
  @override
  void onInit() {
     print('ohh helloooo');
     store.allTransactionList.clear();
    super.onInit();
   
  }

  @override
  void onReady() {
    super.onReady();
      print('ohh rradyyyy');
  }

  @override
  void onClose() {
    super.onClose();
      print('ohh closeeee');

  }

  void increment() => count.value++;
}
