// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// class CustomListController extends GetxController {
//   var items = <CustomListItem>[].obs;
//
//   @override
//   void onInit() {
//     super.onInit();
//     // Fetch initial data or add initial items if any
//     fetchInitialData();
//   }
//
//   void fetchInitialData() {
//     //Add initial items to the list
//     //list of titles from Secured and display here
//     //Subtitle
//     for (int i = 0; i < 10; i++) {
//       addItem(
//         title: 'Shopping $i',
//         subTitle: 'Buy some grocery $i',
//         amount: (i * 10).toString(),
//         time: '10:00 AM',
//       );
//     }
//   }
//
//   void addItem({
//     required String title,
//     required String subTitle,
//     required String amount,
//     required String time,
//   }) {
//     items.add(CustomListItem(
//       title: title,
//       subTitle: subTitle,
//       amount: amount,
//       time: time,
//     ));
//   }
// }
//
// class CustomListItem {
//   final String title;
//   final String subTitle;
//   final String amount;
//   final String time;
//
//   CustomListItem({
//     required this.title,
//     required this.subTitle,
//     required this.amount,
//     required this.time,
//   });
// }
//
// class CustomListView2 extends StatelessWidget {
//   final CustomListController controller = Get.put(CustomListController());
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Custom ListView'),
//       ),
//       body: Obx(
//             () => ListView.builder(
//           itemCount: controller.items.length + 1, // Add 1 for loading indicator
//           itemBuilder: (context, index) {
//             if (index < controller.items.length) {
//               final item = controller.items[index];
//               return CustomListTile(
//                 title: item.title,
//                 subTitle: item.subTitle,
//                 amount: item.amount,
//                 time: item.time,
//               );
//             } else {
//               // Show loading indicator at the end of the list
//               return ListTile(
//                 title: Center(
//                   child: CircularProgressIndicator(),
//                 ),
//               );
//             }
//           },
//         ),
//       ),
//     );
//   }
// }
//
// class CustomListTile extends StatelessWidget {
//   final String title;
//   final String subTitle;
//   final String amount;
//   final String time;
//
//   const CustomListTile({
//     Key? key,
//     required this.title,
//     required this.subTitle,
//     required this.amount,
//     required this.time,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return ListTile(
//       contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
//       leading: Container(
//         width: 60,
//         height: 60,
//         decoration: BoxDecoration(
//           color: Color(0xFFFCEED3),
//           borderRadius: BorderRadius.circular(16),
//         ),
//         child: Icon(Icons.shopping_bag, size: 30, color: Colors.white),
//       ),
//       title: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             title,
//             style: TextStyle(
//               color: Color(0xFF292B2D),
//               fontSize: 16,
//               fontFamily: 'Inter',
//               fontWeight: FontWeight.w500,
//             ),
//           ),
//           SizedBox(height: 4),
//           Text(
//             subTitle,
//             style: TextStyle(
//               color: Color(0xFF90909F),
//               fontSize: 13,
//               fontFamily: 'Inter',
//               fontWeight: FontWeight.w500,
//             ),
//           ),
//         ],
//       ),
//       trailing: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.end,
//         children: [
//           Text(
//             '- \$$amount',
//             style: TextStyle(
//               color: Color(0xFFFD3C4A),
//               fontSize: 16,
//               fontFamily: 'Inter',
//               fontWeight: FontWeight.w600,
//             ),
//           ),
//           SizedBox(height: 4),
//           Text(
//             time,
//             style: TextStyle(
//               color: Color(0xFF90909F),
//               fontSize: 13,
//               fontFamily: 'Inter',
//               fontWeight: FontWeight.w500,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
