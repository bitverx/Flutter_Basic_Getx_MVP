import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx_mvp/app/constants/app_sizes.dart';
import 'package:getx_mvp/app/routes/app_pages.dart';
import 'package:getx_mvp/app/widgets/shadow_container.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ProfileView'),
        centerTitle: true,
      ),
      body:  Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(children: [
          IconButton(onPressed: (){
            Get.offAllNamed(Routes.LOGIN);
          }, icon: Row(children: [
            Icon(Icons.logout_outlined),
            gapW4,
            Text('Logout')
          ],)),
          Obx(() => Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: controller.store.allTransactionList.length,
              itemBuilder: (context,index){
                var news = controller.store.allTransactionList[index];
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ShadowContainer(
                    
                    child: Text(news.title).paddingAll(5)),
                );
            
              }),
          ))
        ],),
      )
    );
  }
}
