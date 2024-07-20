import 'package:get/get.dart';

import '../views/customlsecured_view.dart';

class CustomlsecuredBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CustomList2Controller>(
      () => CustomList2Controller(),
    );
  }
}
