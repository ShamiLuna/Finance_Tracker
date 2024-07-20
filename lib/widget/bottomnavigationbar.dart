// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import '../app/modules/add.dart';
// import '../app/modules/onboard/views/onboard_view.dart';
//
//
//
// class BottomController extends GetxController {
//   var indexColor = 0.obs;
//
//   void changeIndexColor(int index) {
//     indexColor.value = index;
//   }
// }
//
// class Bottom extends StatelessWidget {
//   final BottomController controller = Get.put(BottomController());
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Obx(() => IndexedStack(
//         index: controller.indexColor.value,
//         children: [
//           Home(),
//           Transaction(),
//           Statistics(),
//           profile(),
//         ],
//       )),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           Get.to(() => Add_Screen());
//         },
//         child: Icon(Icons.add),
//         backgroundColor: Color(0xff368983),
//       ),
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//       bottomNavigationBar: BottomAppBar(
//         shape: CircularNotchedRectangle(),
//         child: Padding(
//           padding: const EdgeInsets.only(top: 7.5, bottom: 7.5),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: [
//               GestureDetector(
//                 onTap: () {
//                   controller.changeIndexColor(0);
//                 },
//                 child: Obx(() => Icon(
//                   Icons.home,
//                   size: 30,
//                   color: controller.indexColor.value == 0 ? Color(0xff368983) : Colors.grey,
//                 )),
//               ),
//               GestureDetector(
//                 onTap: () {
//                   controller.changeIndexColor(1);
//                 },
//                 child: Obx(() => Icon(
//                   Icons.assistant_direction_sharp,
//                   size: 30,
//                   color: controller.indexColor.value == 1 ? Color(0xff368983) : Colors.grey,
//                 )),
//               ),
//               SizedBox(width: 10),
//               GestureDetector(
//                 onTap: () {
//                   controller.changeIndexColor(2);
//                 },
//                 child: Obx(() => Icon(
//                   Icons.pie_chart,
//                   size: 30,
//                   color: controller.indexColor.value == 2 ? Color(0xff368983) : Colors.grey,
//                 )),
//               ),
//               GestureDetector(
//                 onTap: () {
//                   controller.changeIndexColor(3);
//                 },
//                 child: Obx(() => Icon(
//                   Icons.person_outlined,
//                   size: 30,
//                   color: controller.indexColor.value == 3 ? Color(0xff368983) : Colors.grey,
//                 )),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
