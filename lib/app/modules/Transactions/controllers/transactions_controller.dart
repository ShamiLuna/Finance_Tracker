import 'package:get/get.dart';

import '../../home/controllers/home_controller.dart';

class TransactionsController extends GetxController {
  //TODO: Implement TransactionsController
  final HomeController controller = Get.put(HomeController());
  final count = 0.obs;


  @override
  void onInit() {
    super.onInit();
    controller.deleteTitleFromStorage;
    controller.updateSelectedDate2;
    controller.updateSelectedDate;

  }





}


//items are future added one fetched data should explain then do filter in bottom sheet