// import 'package:financeapp/Normal/person.dart';
import 'package:flutter/material.dart';
import 'Budget/budget.dart';
import 'Expenses/Expenses.dart';
import 'Profile/User profile.dart';
import 'Trans.dart';

class Bot extends StatefulWidget {
  const Bot({super.key});

  @override
  State<Bot> createState() => _BotState();
}

class _BotState extends State<Bot> {
  int big = 0 ;
  final eyes=[
    // const Hom(),
    const Trans(),
     Cums(),
    const Bud1(),
    const Pro(),
  ];

  // Bow(),
  void ears(mowth)
  {
    setState(() {
      big = mowth ;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: eyes[big],
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: true,
        selectedItemColor: Theme.of(context).cardColor,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem( icon: Icon(Icons.home,),label: "Home",),
          BottomNavigationBarItem(icon: Icon(Icons.compare_arrows,),label: "Transaction"),
          BottomNavigationBarItem(icon: Image(image: AssetImage("assets/images/icons8-plus-64 1.png"),),label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.pie_chart),label: "Budget"),
          BottomNavigationBarItem(icon: Icon(Icons.people, ),label: "People"),
        ],
        currentIndex: big,
        onTap: ears,
      ),
    );
  }
}


// main
// import 'package:financeapp/app/modules/onboard/views/onboard_view.dart';
// import 'package:flutter/material.dart';
// import 'package:curved_navigation_bar/curved_navigation_bar.dart';
//
// void main() => runApp(MaterialApp(home: BottomNavBar()));
//
// class BottomNavBar extends StatefulWidget {
//   @override
//   _BottomNavBarState createState() => _BottomNavBarState();
// }
//
// class _BottomNavBarState extends State<BottomNavBar> {
//   int _page = 0;
//   final List<Widget> _pages = [ // Define a list of pages for the bottom navigation bar
//     Home(),
//     Statistics(),
//     // Add other pages here as needed
//   ];
//   GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         bottomNavigationBar: CurvedNavigationBar(
//           key: _bottomNavigationKey,
//           index: 0,
//           height: 60.0,
//           items: <Widget>[
//             Icon(Icons.add, size: 30),
//             Icon(Icons.list, size: 30),
//             Icon(Icons.compare_arrows, size: 30),
//             Icon(Icons.call_split, size: 30),
//             Icon(Icons.perm_identity, size: 30),
//           ],
//           color: Colors.white,
//           buttonBackgroundColor: Colors.white,
//           backgroundColor: Colors.blueAccent,
//           animationCurve: Curves.easeInOut,
//           animationDuration: Duration(milliseconds: 600),
//           onTap: (index) {
//             setState(() {
//               _page = index;
//             });
//           },
//           letIndexChange: (index) => true,
//         ),
//         body: _pages[_page],);
//   }
// }
// main
// import 'package:flutter/material.dart';
// import 'package:financeapp/app/modules/onboard/views/onboard_view.dart'; // Import the necessary file(s)
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
//   final List<Widget> _pages = [ // Define a list of pages for the bottom navigation bar
//     Home(),
//     Statistics(),
//     // Add other pages here as needed
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: _page, // Set the currentIndex to _page
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
//             icon: Icon(Icons.pie_chart),
//             label: 'Statistics',
//           ),
//           // Add other BottomNavigationBarItems here as needed
//         ],
//       ),
//       body: _pages[_page], // Display the selected page
//     );
//   }
// }
