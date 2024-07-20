// import 'package:flutter/material.dart';
// import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
//
// void main() => runApp(MaterialApp(home: BottomNavBar()));
//
// class BottomNavBar extends StatefulWidget {
//   @override
//   _BottomNavBarState createState() => _BottomNavBarState();
// }
//
// class _BottomNavBarState extends State<BottomNavBar> {
//   int _selectedIndex = 0;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Fancy Bottom Navigation'),
//       ),
//       body: Center(
//         child: _getPage(_selectedIndex),
//       ),
//       bottomNavigationBar: FancyBottomNavigation(
//         tabs: [
//           TabData(iconData: Icons.home, title: "Home"),
//           TabData(iconData: Icons.search, title: "Transaction"),
//           TabData(iconData: Icons.add, title: "Add"),
//           TabData(iconData: Icons.notifications, title: "Statistics"),
//           TabData(iconData: Icons.account_circle, title: "Profile"),
//         ],
//         onTabChangedListener: (int index) {
//           setState(() {
//             _selectedIndex = index;
//           });
//         },
//         initialSelection: _selectedIndex,
//       ),
//     );
//   }
//
//   Widget _getPage(int index) {
//     switch (index) {
//       case 0:
//         return Text('Home Page');
//       case 1:
//         return Text('Transaction Page');
//       case 2:
//         return Text('Add Page');
//       case 3:
//         return Text('Statistics Page');
//       case 4:
//         return Text('Profile Page');
//       default:
//         return Text('Invalid Page');
//     }
//   }
// }
