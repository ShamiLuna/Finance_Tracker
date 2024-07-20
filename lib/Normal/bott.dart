// import 'package:financeapp/Normal/person.dart';
// import 'package:flutter/material.dart';
//
// import '../app/modules/onboard/views/onboard_view.dart';
// import 'Add.dart';
// import 'Statistics.dart';
// import 'Trans.dart';
// import 'home.dart';
//
// void main() => runApp(MaterialApp(home: BottomNavBar()));
//
// class BottomNavBar extends StatefulWidget {
//   @override
//   _BottomNavBarState createState() => _BottomNavBarState();
// }
//
// class _BottomNavBarState extends State<BottomNavBar> {
//   int _page = 0; // Define _page to keep track of the selected page
//   final List<Widget> _pages = [
//     // Define a list of pages for the bottom navigation bar
//     Hom(),
//     Trans(),
//     Add_Screen(),
//     Bud(),
//     Person(),
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Bottom Navigation'),
//       ),
//       body: _pages[_page], // Display the selected page
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: _page,
//         onTap: (int index) {
//           setState(() {
//             _page = index; // Update _page when a bottom navigation bar item is tapped
//           });
//         },
//         items: [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.search),
//             label: 'Transaction',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.add),
//             label: 'Add',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.notifications),
//             label: 'Statistics',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.account_circle),
//             label: 'Profile',
//           ),
//         ],
//       ),
//     );
//   }
// }
//
// // Define your page widgets (Home, Transaction, Add, Statistics, Profile) here
