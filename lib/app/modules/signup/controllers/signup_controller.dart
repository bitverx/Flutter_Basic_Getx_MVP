import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_mvp/app/mixins/loading_mixin.dart';
import 'package:getx_mvp/app/routes/app_pages.dart';
import 'package:getx_mvp/app/utils/validators.dart';
import 'package:getx_mvp/app/widgets/x_text_field.dart';

class SignupController extends GetxController with LoadingMixin {
  final formKeySignUp = GlobalKey<FormState>();
final nameFieldData = TextFieldData(
    validator: Validator.alphanumericNotEmptyValidator,
    keyboardType: TextInputType.name,
  );

  final emailFieldData = TextFieldData(
    validator: Validator.emailValidator,
    keyboardType: TextInputType.emailAddress,
  );

  final passwordFieldData =
      TextFieldData(validator: Validator.passwordValidator, isPassword: true);
  
  final numberFieldData =
      TextFieldData(validator: Validator.phoneNumberFormatValidator);
  
  void onSignInClicked() => Get.offAllNamed(Routes.LOGIN);

  Future<void> onActionLoginClicked() async {
    if (!formKeySignUp.currentState!.validate()) {
      return;
    }
    loading.value = true;

    Get.offNamed(Routes.LOGIN);
    loading.value = false;
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
