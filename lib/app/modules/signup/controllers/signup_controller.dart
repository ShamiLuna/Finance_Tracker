// import 'package:flutter/cupertino.dart';
// import 'package:flutter_secure_storage/flutter_secure_storage.dart';
// import 'package:get/get.dart';
//
// class SignupController extends GetxController {
//   //TODO: Implement SignupController
//   bool passToggle = true;
//   late final nameController = TextEditingController();
//   late final emailController = TextEditingController();
//   late final passwordController = TextEditingController();
//   Rx<bool> isShowPassword = true.obs;
//   final storage = FlutterSecureStorage();
//   final RxString name = ''.obs;
//
//   @override
//   void onInit() {
//     super.onInit();
//     getName();
//   }
//
//   // Method to get the name from secure storage
//   void getName() async {
//     final storedName = await storage.read(key: 'name');
//     if (storedName != null) {
//       name.value = storedName;
//       print('Name retrieved: $storedName');
//     }
//   }
//
//   // Method to store the name in secure storage
//    storeName(String value) async {
//     await storage.write(key: 'name', value: value);
//     print('Name stored: $value');
//     getName(); // Fetch name again after storing
//   }
//
//   // bool isCheck = false;
//   final count = 0.obs;
//   var isCheck = false.obs;
//   void toggleCheckbox() {
//     isCheck.value = !isCheck.value;
//   }
//
//
//
//   void increment() => count.value++;
//
//   @override
//   void onClose() {
//     nameController.dispose();
//     emailController.dispose();
//     passwordController.dispose();
//     super.onClose();
//   }
// }
