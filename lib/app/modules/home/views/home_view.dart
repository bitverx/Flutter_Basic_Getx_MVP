import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
      final authService = Get.find<HomeController>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body:  Column(
        children: [
          Center(
            child: Obx( 
              ()=>
               Text(
                'HomeView is working ${controller.count}',
                style: TextStyle(fontSize: 20),
              ),
            ),
          
          ),
          TextButton(onPressed: controller.increment, child: Text('press'))
        ],
      ),
    );
  }
}
