import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import '../modules/home/controllers/home_controller.dart';

class SecureStorageService {
  final FlutterSecureStorage _storage = const FlutterSecureStorage();
  final HomeController controller = Get.put(HomeController());
  static const String _keyIsLoggedIn = 'isLoggedIn';

  Future<void> setLoggedIn(bool isLoggedIn) async {
    await _storage.write(key: _keyIsLoggedIn, value: isLoggedIn.toString());
  }

  Future<bool> isLoggedIn() async {
    String? value = await _storage.read(key: _keyIsLoggedIn);
    return value == 'true';
  }

  Future<void> logout() async {
    await _storage.deleteAll();
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
