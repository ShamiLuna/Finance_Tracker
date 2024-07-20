import 'package:get/get.dart';

import '../controllers/setupaccount_controller.dart';

class SetupaccountBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SetupaccountController>(
      () => SetupaccountController(),
    );
  }
}
