import 'package:get/get.dart';

import '../controllers/tab_controller.dart';

class TabBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TabBarController>(
      () => TabBarController(),
    );
  }
}
