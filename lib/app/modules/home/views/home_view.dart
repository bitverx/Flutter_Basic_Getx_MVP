import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx_mvp/app/theme/theme.dart';
import 'package:getx_mvp/app/widgets/x_loading_overlay.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
void _showBackDialog(context) {
    showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Are you sure?'),
          content: const Text(
            'Are you sure you want to leave this page?',
          ),
          actions: <Widget>[
            TextButton(
   style: TextButton.styleFrom(
                textStyle: Theme.of(context).textTheme.labelLarge,
              ),
              child: const Text('Nevermind'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            TextButton(
              style: TextButton.styleFrom(
                textStyle: Theme.of(context).textTheme.labelLarge,
              ),
              child: const Text('Leave'),
              onPressed: () {
                Navigator.pop(context);
                Navigator.pop(context);
              },
            ),
          ],
        );
      },
    );
  }
  @override
  Widget build(BuildContext context) {
      final authService = Get.find<HomeController>();

    return PopScope(
      canPop: false,
              onPopInvoked: (bool didPop) {
                if (didPop) {
                  return;
                }
                _showBackDialog(context);
              },
      child: Scaffold(
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
                  style: Get.textTheme.headline2Bold,
                ),
              ),
            
            ),
            TextButton(onPressed: controller.increment, child: Text('press'))
          ],
        ),
      ),
    );
  }
}
