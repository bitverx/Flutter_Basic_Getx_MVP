import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_mvp/app/mixins/loading_mixin.dart';
import 'package:getx_mvp/app/routes/app_pages.dart';
import 'package:getx_mvp/app/utils/validators.dart';
import 'package:getx_mvp/app/widgets/x_text_field.dart';

class LoginController extends GetxController with LoadingMixin {
  final formKey = GlobalKey<FormState>();
  final emailFieldData = TextFieldData(
    validator: Validator.emailValidator,
    keyboardType: TextInputType.emailAddress,
  );
  final passwordFieldData =
      TextFieldData(validator: Validator.passwordValidator, isPassword: true);

  void onForgotPasswordClicked() =>
      print('Forgot Password'); //Get.toNamed(Routes.FORGOT_PASSWORD);

  Future<void> onActionLoginClicked() async {
    if (!formKey.currentState!.validate()) {
      return;
    }
    loading.value = true;

    Get.offNamed(Routes.MAIN);
    loading.value = false;
  }
}
