import 'package:get/get.dart';
// import '../../services/secure_storage_service.dart';
import '../../routes/app_pages.dart';
import '../Againpin/controllers/againpin_controller.dart';

class SplashController extends GetxController {
  final SecureStorageServicepin _storageService = SecureStorageServicepin();

  @override
  void onInit() {
    super.onInit();
    checkForPin();
  }

  Future<void> checkForPin() async {
    print("Starting app and checking for stored PIN..."); // Debugging
    await Future.delayed(const Duration(seconds: 1)); // Simulate a delay for splash screen
    final pin = await _storageService.getPin();
    if (pin != null) {
      print("PIN exists, navigating to ENTERPIN"); // Debugging
      Get.offAllNamed(Routes.ENTERPIN); // Navigate to PIN entry screen
    } else {
      print("PIN does not exist, navigating to ONBOARD"); // Debugging
      Get.offAllNamed(Routes.ONBOARD); // Navigate to onboarding screen
    }
  }
}
