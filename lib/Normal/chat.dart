// import 'package:flutter/material.dart';
// import 'package:curved_navigation_bar/curved_navigation_bar.dart';
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
//     Add(),
//     Bud(),
//
//
//
//     // Placeholder pages, replace with your actual pages
//     // Transaction(),
//     // Statistics(),
//     // profile()
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Curved Bottom Navigation'),
//       ),
//       body: _pages[_page], // Display the selected page
//       bottomNavigationBar: CurvedNavigationBar(
//
//         backgroundColor: Colors.blueAccent,
//         buttonBackgroundColor: Colors.white,
//         color: Colors.white,
//         height: 50,
//         items: <Widget>[
//           Icon(Icons.home, size: 30),
//           Icon(Icons.search, size: 30),
//           Icon(Icons.add, size: 30),
//           Icon(Icons.notifications, size: 30),
//           Icon(Icons.account_circle, size: 30),
//         ],
//         animationCurve: Curves.easeInOut,
//         animationDuration: Duration(milliseconds: 300),
//         index: _page,
//         onTap: (index) {
//           setState(() {
//             _page = index; // Update _page when a bottom navigation bar item is tapped
//           });
//         },
//       ),
//     );
//   }
// }
