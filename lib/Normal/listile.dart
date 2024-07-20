// import 'package:flutter/material.dart';
//
// import '../app/modules/home/controllers/home_controller.dart';
// import 'package:get/get.dart';
// class CustomListTile extends StatelessWidget {
//   final HomeController controller = Get.put(HomeController());
//
//   final String title;
//   final String subTitle;
//   final String amount;
//   final String time;
//
//   CustomListTile({
//     Key? key,
//     required this.title,
//     required this.subTitle,
//     required this.amount,
//     required this.time,
//   }) : super(key: key);
//
//
//   @override
//   Widget build(BuildContext context) {
//     final item = controller.items[];
//
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
//
//           Text(item.title,
//             style: TextStyle(
//               color: Color(0xFF292B2D),
//               fontSize: 16,
//               fontFamily: 'Roboto',
//               fontWeight: FontWeight.w500,
//             ),
//           ),
//           SizedBox(height: 4),
//           Text(
//             subTitle,
//             style: TextStyle(
//               color: Color(0xFF90909F),
//               fontSize: 13,
//               fontFamily: 'Roboto',
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
//               fontFamily: 'Roboto',
//               fontWeight: FontWeight.w600,
//             ),
//           ),
//           SizedBox(height: 4),
//           Text(
//             time,
//             style: TextStyle(
//               color: Color(0xFF90909F),
//               fontSize: 13,
//               fontFamily: 'Roboto',
//               fontWeight: FontWeight.w500,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
