// import 'package:flutter/material.dart';
// import 'package:hive/hive.dart';
// import 'package:lottie/lottie.dart';
// import '../model/add_date.dart';
// import '../utlity.dart';
// import '../widget/chart.dart';
//
// class Hom extends StatefulWidget {
//   const Hom({super.key});
//
//
//   @override
//   State<Hom> createState() => _HomState();
// }
//
// class _HomState extends State<Hom> {
//   // var history;
//   // final box = Hive.box<Add_data>('data');
//   // final List<String> day = [
//   //   'Monday',
//   //   "Tuesday",
//   //   "Wednesday",
//   //   "Thursday",
//   //   'friday',
//   //   'saturday',
//   //   'sunday'
//   // ];
//   // List days = ['Day', 'Week', 'Month', 'Year'];
//   // List f = [today(), week(), month(), year()];
//   // List<Add_data> a = [];
//   // int indexcolor = 0;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body:  Center(
//         child:
//         Column(
//           children: [
//             Container(
//               height: 270,
//               decoration: const BoxDecoration(
//                 borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30),bottomRight: Radius.circular(30)),
//                 gradient: LinearGradient(
//                     begin: Alignment.topCenter,
//                     end: Alignment.bottomCenter,
//                     colors: [Color(0xFF6492C3),Color(0xFFC5DAF1),]),
//               ),
//               child: Column(
//                 children: [
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceAround,
//                     children: [
//                       const Padding(
//                         padding: EdgeInsets.only(top: 8.0,right: 8.0),
//                         child: Icon(Icons.radio_button_off),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.only(top: 16.0,right: 16,bottom: 9.0,left: 16),
//                         child: Container(
//                           child:
//                           ElevatedButton(
//                             onPressed: () {
//                              // chooseDate();
//                             },
//                             child: const Text(""),
//
//                           ),
//                         ),
//                       ),
//                       const Padding(
//                         padding: EdgeInsets.only(top: 8.0,right: 8.0),
//                         child: Icon(Icons.notifications_active),
//                       ),
//
//                     ],
//                   ),
//                   const SizedBox(
//                     height: 30,
//                   ),
//                   const Text(
//                     'Account Balance',
//                     style: TextStyle(fontSize: 20,fontFamily: 'Roboto',fontWeight: FontWeight.w500),
//                   ),
//                   Text(
//                     '\$ ${total()}',
//                     style: const TextStyle(
//                       fontWeight: FontWeight.bold,
//                       fontSize: 25,
//                       color: Colors.white,
//                     ),
//                   ),
//                   const SizedBox(
//                     height: 30,
//                   ),
//                   Center(
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceAround,
//                       children: [
//                         Container(
//                           decoration: BoxDecoration(
//                             color: Theme.of(context).primaryColorLight,
//                             borderRadius: BorderRadius.circular(20),
//                           ),
//
//                           child:  Padding(
//                             padding: const EdgeInsets.all(8.0),
//                             child: Row(
//                               children: [
//                                 Lottie.asset('assets/Tick.json',
//                                   height: 25 ,
//                                   reverse: true,
//                                   repeat: true,
//                                   fit: BoxFit.cover,
//                                 ),
//                                 Column(
//                                   children: [
//                                     const Text("Income",style: TextStyle(
//                                       fontWeight: FontWeight.w500,
//                                       fontSize: 17,
//                                       color: Color(0xFF0E7A53),
//                                     ),),
//                                     Text(
//                                       '\u{20B9} ${income()}',
//                                       style: const TextStyle(
//                                         fontWeight: FontWeight.w600,
//                                         fontSize: 17,
//                                         color: Color(0xFF0E7A53),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                         Container(
//                           decoration: BoxDecoration(
//                             color: Theme.of(context).primaryColorLight,
//                             borderRadius: BorderRadius.circular(20),
//                           ),
//                           child:  Padding(
//                             padding: const EdgeInsets.all(8.0),
//                             child: Row(
//                               children: [
//                                 Lottie.asset('assets/Tick.json',
//                                   height: 25 ,
//                                   reverse: true,
//                                   repeat: true,
//                                   fit: BoxFit.cover,
//                                 ),
//                                 Column(
//                                   children: [
//                                     const Text("Expenses",style: TextStyle(
//                                       fontWeight: FontWeight.w500,
//                                       fontSize: 17,
//                                       color: Color(0xFFC22727),
//                                     ),),
//                                     Text(
//                                       '\u{20B9} ${expenses()}',
//                                       style: const TextStyle(
//                                         fontWeight: FontWeight.w600,
//                                         fontSize: 17,
//                                         color: Color(0xFFC22727),
//                                       ),
//                                     ),
//                                   ],
//                                 )
//                               ],
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             const SizedBox(height: 10,),
//             const Row(
//               children: [
//                 SizedBox(width: 8,),
//                 Text("Spend Frequency",style: TextStyle(fontFamily: 'Roboto',fontSize: 16,fontWeight: FontWeight.w600)),
//               ],
//             ),
//             const SizedBox(height: 20),
//             Chart(
//             indexx: indexcolor,
//              ),
//             const SizedBox(height: 20),
//             const SizedBox(height: 20),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//
//                 const Padding(
//                   padding: EdgeInsets.only(left: 8.0),
//                   child: Text("Recent Transtion",style: TextStyle(fontFamily: 'Roboto',fontSize: 16,fontWeight: FontWeight.w600),),
//                 ),
//                 Container(
//                     decoration: BoxDecoration(
//                         color: Theme.of(context).cardColor,
//                         borderRadius: BorderRadius.circular(30)
//                     ),
//                     child: const Padding(
//                       padding: EdgeInsets.all(8.0),
//                       child: Text("See All"),
//
//                     )),
//               ],
//             ),
//             SliverList(
//               delegate: SliverChildBuilderDelegate(
//                     (context, index) {
//                   history = box.values.toList()[index];
//                   return getList(history, index);
//                 },
//                 childCount: box.length,
//               ),
//             )
//
//           ],
//         ),
//       ),
//     );
//   }
// }
// Widget getList(Add_data history, int index) {
//   return Dismissible(
//       key: UniqueKey(),
//       onDismissed: (direction) {
//         history.delete();
//       },
//       child: get(index, history));
// }
//
// ListTile get(int index, Add_data history) {
//   final List<String> day = [
//     'Monday',
//     "Tuesday",
//     "Wednesday",
//     "Thursday",
//     'friday',
//     'saturday',
//     'sunday'
//   ];
//   return ListTile(
//     leading: ClipRRect(
//       borderRadius: BorderRadius.circular(5),
//       child: Image.asset('images/${history.name}.png', height: 40),
//     ),
//     title: Text(
//       history.name,
//       style: const TextStyle(
//         fontSize: 17,
//         fontWeight: FontWeight.w600,
//       ),
//     ),
//     subtitle: Text(
//       '${day[history.datetime.weekday - 1]}  ${history.datetime.year}-${history.datetime.day}-${history.datetime.month}',
//       style: const TextStyle(
//         fontWeight: FontWeight.w600,
//       ),
//     ),
//     trailing: Text(
//       history.amount,
//       style: TextStyle(
//         fontWeight: FontWeight.w600,
//         fontSize: 19,
//         color: history.IN == 'Income' ? Colors.green : Colors.red,
//       ),
//     ),
//   );
// }
