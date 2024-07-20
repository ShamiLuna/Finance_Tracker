import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class CustomSecureStorageService {
  final FlutterSecureStorage _storage = const FlutterSecureStorage();

  Future<void> writeData(String key, String value) async {
    await _storage.write(key: key, value: value);
  }

  Future<String?> readData(String key) async {
    return await _storage.read(key: key);
  }

  Future<void> deleteData(String key) async {
    await _storage.delete(key: key);
  }

  Future<void> deleteAllData() async {
    await _storage.deleteAll();
  }

  Future<void> logout() async {
    await deleteAllData();

  }
}
