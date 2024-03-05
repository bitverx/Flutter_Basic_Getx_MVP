import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx_mvp/app/modules/home/controllers/home_controller.dart';
import 'package:getx_mvp/app/theme/theme.dart';


class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body:  Column(
        children: [
          Center(
            child: 
               Text(
                'HomeView is working ',
                style: Get.textTheme.headline2Bold,
              ),
            
          
          ),
        
        ],
      ),
    );
  }
}
