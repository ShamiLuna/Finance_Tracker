import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
// import 'package:your_app_path/signup/controllers/signup_controller.dart';

import '../../../routes/app_pages.dart';
import '../../signup/controllers/signupcontrollersecured.dart';

class LoginController extends GetxController {
  final SignupController signupController = Get.put(SignupController());
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool passToggle = true;
  Rx<bool> isShowPassword = false.obs;
  // final SignupController signupController = Get.find();

  RxString errorMessage = ''.obs;

  Future<void> validateLogin() async {
    String email = emailController.text;
    String password = passwordController.text;

    if (await signupController.checkEmailExists(email)) {
      if (await signupController.checkPassword(email, password)) {
        errorMessage.value = '';
        Get.toNamed(Routes.PASSPIN); // Navigate to the next page
      } else {
        errorMessage.value = 'Invalid password. Please try again.';
      }
    } else {
      errorMessage.value = 'Email does not exist. Please sign up.';
    }
  }
}
