import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx_mvp/app/constants/app_sizes.dart';
import 'package:getx_mvp/app/constants/string_constants.dart';
import 'package:getx_mvp/app/modules/signup/widgets/already_account.dart';
import 'package:getx_mvp/app/theme/colors.dart';
import 'package:getx_mvp/app/widgets/button.dart';
import 'package:getx_mvp/app/widgets/x_loading_overlay.dart';
import 'package:getx_mvp/app/widgets/x_text_field.dart';

import '../controllers/signup_controller.dart';

class SignupView extends GetView<SignupController> {
  const SignupView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return XLoadingOverlay(
      loading: controller.loading,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              gapH120,
             
              Form(
                key: controller.formKeySignUp,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      NameConstant.kSignUp,
                      style: Get.textTheme.headlineMedium?.copyWith(
                          color: XColors.xenBlack, fontWeight: FontWeight.w700),
                    ),
                    gapH16,
                    Text(
                      NameConstant.kPleaseSignup,
                      style: Get.textTheme.titleSmall?.copyWith(
                          color: XColors.xenGrey[800],
                          fontWeight: FontWeight.w400),
                    ),
                    
                    gapH32,
                 
                    MTextField(
                      fieldData: controller.nameFieldData,
                      hintText: 'Name',
                    ),
                    gapH16,
                    MTextField(
                      fieldData: controller.emailFieldData,
                      hintText: 'Email',
                    ),
                      gapH16,
                    MTextField(
                      fieldData: controller.passwordFieldData,
                      hintText: 'Password',
                    ),
                    gapH16,
                    MTextField(
                      fieldData: controller.numberFieldData,
                      hintText: 'Phone',
                    ),
                    gapH32,
                    Button.primary(
                      color: XColors.xenGreen[500],
                      onPressed: controller.onActionLoginClicked,
                      child: const Text(NameConstant.kSignUp),
                    ),
                    gapH32,
                    Align(
                      child: AlreadyAcount(
                        clickActionHandle: controller.onSignInClicked,
                      ),
                    ),
                    
                    
                  
                  ],
                ),
              ).paddingSymmetric(horizontal: 24),
            ],
          ),
        ),
      ),
    );
  }
}
