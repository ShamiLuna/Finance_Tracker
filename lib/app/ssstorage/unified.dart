import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import '../modules/home/controllers/home_controller.dart';

class UnifiedSecureStorageService {
  final FlutterSecureStorage _storage = const FlutterSecureStorage();
  final HomeController controller = Get.put(HomeController());

  static const String _keyIsLoggedIn = 'isLoggedIn';
  static const String _keyUserPin = 'user_pin';

  Future<void> setLoggedIn(bool isLoggedIn) async {
    await _storage.write(key: _keyIsLoggedIn, value: isLoggedIn.toString());
    print("Stored login status: $isLoggedIn");
  }

  Future<bool> isLoggedIn() async {
    String? value = await _storage.read(key: _keyIsLoggedIn);
    print("Retrieved login status: $value");
    return value == 'true';
  }

  Future<void> storePin(String pin) async {
    await _storage.write(key: _keyUserPin, value: pin);
    print("Stored PIN: $pin");
  }

  Future<String?> getPin() async {
    final pin = await _storage.read(key: _keyUserPin);
    print("Retrieved PIN: $pin");
    return pin;
  }

  Future<void> deletePin() async {
    await _storage.delete(key: _keyUserPin);
    print("Deleted PIN");
  }

  Future<void> logout() async {
    await _storage.delete(key: _keyIsLoggedIn);
    await _storage.delete(key: _keyUserPin);
    print("Deleted login status and PIN");

    for (var item in controller.items) {
      await controller.deleteTitleFromStorage(item.key);
    }
    for (var item in controller.items1) {
      await controller.deleteTitleFromStorage1(item.key);
    }
    for (var item in controller.bitems) {
      await controller.deletebTitleFromStorage(item.key);
    }
  }
}
