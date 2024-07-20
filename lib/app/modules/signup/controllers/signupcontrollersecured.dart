import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SignupController extends GetxController {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final isShowPassword = false.obs;
  final isCheck = false.obs;
  final name = ''.obs;
  void togglePasswordVisibility() {
    isShowPassword.value = !isShowPassword.value;
  }
  final FlutterSecureStorage _secureStorage = const FlutterSecureStorage();

  Future<void> storeUserData(String name, String email, String password) async {
    await _secureStorage.write(key: 'name', value: name);
    await _secureStorage.write(key: 'email', value: email);
    await _secureStorage.write(key: 'password', value: password);
    print('User data stored: $name, $email, [password]');
  }

  Future<void> getUserData() async {
    name.value = await _secureStorage.read(key: 'name') ?? '';
    String? email = await _secureStorage.read(key: 'email');
    String? password = await _secureStorage.read(key: 'password');
    print('User data retrieved: ${name.value}, $email, [password]');
  }

  Future<bool> checkEmailExists(String email) async {
    String? storedEmail = await _secureStorage.read(key: 'email');
    return storedEmail == email;
  }

  Future<bool> checkPassword(String email, String password) async {
    String? storedEmail = await _secureStorage.read(key: 'email');
    String? storedPassword = await _secureStorage.read(key: 'password');
    return storedEmail == email && storedPassword == password;
  }

  void toggleCheckbox() {
    isCheck.value = !isCheck.value;
  }
}
