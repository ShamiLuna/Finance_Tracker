import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';


class BudgetController extends GetxController {
  // final HomeController homeController = Get.find<HomeController>();
  //
  // @override
  // void onInit() {
  //   super.onInit();
  //   homeController.fetchbudTitlesFromStorage();
  // }
  final FlutterSecureStorage _secureStorage = const FlutterSecureStorage();
   // final SharedService sharedService = Get.find<SharedService>();
  //  final HomeController controllerr = Get.find();// Replace with your actual controller
  // Future<void> fetchbudTitlesFromStorage() async {
  //   try {
  //     // Fetch keys from secured storage
  //     List<String> keys = await _secureStorage.readAll().then((value) => value.keys.toList());
  //     bitems.clear();
  //     // Iterate through keys and add titles to the list
  //     for (String key in keys) {
  //       String? title = await _secureStorage.read(key: key);
  //       String? subTitle = await _secureStorage.read(key: "${key}_subTitle");
  //       String? amount = await _secureStorage.read(key: "${key}_amount");
  //       String? time = await _secureStorage.read(key: "${key}_time");
  //       String? category = await _secureStorage.read(key: "${key}_category");
  //       if (title != null && amount != null) {
  //         bitems.add(CustombudListItem1(
  //           key: key,
  //           title: title,
  //           subTitle: subTitle ??'',
  //           amount: amount,
  //           time: time ??'',
  //           category: category ??'',
  //         ));
  //       }
  //     }
  //     // sharedService.calculateAndSetDifference('');
  //     updateTotalAmount();
  //   } catch (e) {
  //     print('Error fetching titles: $e');
  //   }
  // }
  // void addbItem({required String key,required String title, required String subTitle,required String amount,required String time,required String category,}) {
  //   bitems.add(CustombudListItem1(key: key,title: title, subTitle: subTitle, amount: amount, time: time,category: category,));
  //   updateTotalAmount();
  // }
  // Future<void> writebudTitleToStorage(String title,String subTitle, String amount, String time,String category) async {
  //   // await _secureStorage.deleteAll();
  //   // Generate a unique key for the title
  //   try {
  //     String currentTime = DateTime.now().toString();
  //     // Generate a unique key for the title
  //     String key = DateTime.now().millisecondsSinceEpoch.toString();
  //     // Write the title and other details to secured storage
  //     await _secureStorage.write(key: key, value: title);
  //     await _secureStorage.write(key: "${key}_subTitle", value: subTitle);
  //     await _secureStorage.write(key: "${key}_amount", value: amount);
  //     await _secureStorage.write(key: "${key}_time", value: currentTime);
  //     await _secureStorage.write(key: "${key}_category", value: category);
  //     // Add the title and details to the list
  //     addbItem(
  //       key: key,
  //       title: title, subTitle: subTitle, amount: amount, time: currentTime,category: category,);
  //   } catch (e) {
  //     print('Error writing title to storage: $e');
  //   }
  // }
  // Future<void> deleteTitleFromStorage(String key) async {
  //   try {
  //     await _secureStorage.delete(key: key);
  //     await _secureStorage.delete(key: "${key}_subTitle");
  //     await _secureStorage.delete(key: "${key}_amount");
  //     await _secureStorage.delete(key: "${key}_time");
  //     await _secureStorage.delete(key: "${key}_category" );
  //     bitems.removeWhere((item) => item.key == key);
  //     updateTotalAmount();
  //   } catch (e) {
  //     print('Error deleting title from storage: $e');
  //   }
  // }
  // void updateTotalAmount() {
  //   double sum = bitems.fold(0, (sum, item) => sum + double.parse(item.amount));
  //   // totalAmount.value = sum;
  //
  // }
  //
  //
  // var bitems = <CustombudListItem1>[].obs;
  // final count = 0.obs;




}
// class CustombudListItem1 {
//   final String key;
//   final String title;
//   final String subTitle;
//   final String amount;
//   final String time;
//   final String category;
//
//   CustombudListItem1({
//     required this.key,
//     required this.title,
//     required this.subTitle,
//     required this.amount,
//     required this.time,
//     required this.category,
//   });
// }

// class CustombudListItem1 extends StatelessWidget {
//   // final String key;
//   final String title;
//   final String subTitle;
//   final String amount;
//   final String time;
//
//   CustombudListItem1({
//     super.key,
//     // required this.key,
//     required this.title,
//     required this.subTitle,
//     required this.amount,
//     required this.time,
//   });
//   final totalAmount1 = 0.0.obs;
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 343,
//       height: 187,
//       padding: const EdgeInsets.all(16),
//       decoration: ShapeDecoration(
//         color: Colors.white,
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(16),
//         ),
//       ),
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         mainAxisAlignment: MainAxisAlignment.start,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Container(
//             height: 150,
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               mainAxisAlignment: MainAxisAlignment.start,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Container(
//                   width: double.infinity,
//                   child: Row(
//                     mainAxisSize: MainAxisSize.min,
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                       Container(
//                         width: 109,
//                         padding: const EdgeInsets.only(top: 8, left: 8, right: 16, bottom: 8),
//                         decoration: ShapeDecoration(
//                           color: Color(0xFFFBFBFB),
//                           shape: RoundedRectangleBorder(
//                             side: BorderSide(width: 1, color: Color(0xFFF1F1FA)),
//                             borderRadius: BorderRadius.circular(32),
//                           ),
//                         ),
//                         child: Row(
//                           mainAxisSize: MainAxisSize.min,
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Container(
//                               width: 14,
//                               height: 14,
//                               decoration: ShapeDecoration(
//                                 color: Color(0xFFFCAC12),
//                                 shape: OvalBorder(),
//                               ),
//                             ),
//                             const SizedBox(width: 7),
//                             Text(
//                               title,
//                               style: TextStyle(
//                                 color: Color(0xFF212224),
//                                 fontSize: 14,
//                                 fontFamily: 'Roboto',
//                                 fontWeight: FontWeight.w500,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                       const SizedBox(width: 16),
//                       Container(
//                         width: 32,
//                         height: 32,
//                         padding: const EdgeInsets.all(4),
//                         decoration: BoxDecoration(),
//                         child: Icon(Icons.notifications, color: Colors.grey),
//                       ),
//                     ],
//                   ),
//                 ),
//                 const SizedBox(height: 8),
//                 Container(
//                   child: Column(
//                     mainAxisSize: MainAxisSize.min,
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Obx(() => Text(
//                         'Remaining \$${totalAmount1.value.toStringAsFixed(2)}',
//                         style: TextStyle(
//                           color: Color(0xFF0D0E0F),
//                           fontSize: 24,
//                           fontFamily: 'Roboto',
//                           fontWeight: FontWeight.w600,
//                         ),
//                       )),
//                       const SizedBox(height: 16),
//                       Container(
//                         width: double.infinity,
//                         decoration: ShapeDecoration(
//                           shape: RoundedRectangleBorder(
//                             side: BorderSide(
//                               width: 12,
//                               strokeAlign: BorderSide.strokeAlignCenter,
//                               color: Color(0xFFF1F1FA),
//                             ),
//                           ),
//                         ),
//                       ),
//                       Container(
//                         width: double.infinity,
//                         decoration: ShapeDecoration(
//                           shape: RoundedRectangleBorder(
//                             side: BorderSide(
//                               width: 12,
//                               strokeAlign: BorderSide.strokeAlignCenter,
//                               color: Color(0xFFFCAC12),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 const SizedBox(height: 8),
//                 Obx(() => Text(
//                   '\$${totalAmount1.value.toStringAsFixed(2)} of \$1000',
//                   style: TextStyle(
//                     color: Color(0xFF90909F),
//                     fontSize: 16,
//                     fontFamily: 'Inter',
//                     fontWeight: FontWeight.w500,
//                   ),
//                 )),
//               ],
//             ),
//           ),
//           Text(
//             'You’ve exceed the limit!',
//             style: TextStyle(
//               color: Color(0xFFFD3C4A),
//               fontSize: 14,
//               fontFamily: 'Inter',
//               fontWeight: FontWeight.w400,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

