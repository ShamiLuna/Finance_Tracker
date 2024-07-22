import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:financeapp/app/modules/Tab/views/tab_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../provider/theme_provider.dart';
import '../../Budget/views/budget_view.dart';
import '../../Transactions/views/transactions_view.dart';
import '../../home/views/home_view.dart';
import '../../profile/views/profile_view.dart';
import '../controllers/bottom_controller.dart';

class BottomNavBar extends StatelessWidget {
  final BottomController _controller = Get.put(BottomController());

  BottomNavBar({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Obx(
              () => IndexedStack(
            index: _controller.tabIndex.value,
            children: [
              HomeView(),
              const TransactionsView(),
              Tabn(),
              BudgetView(),
              ProfileView(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Obx(
            () {
          print('TabIndex: ${_controller.tabIndex.value}');
          return CurvedNavigationBar(
            index: _controller.tabIndex.value,
            onTap: (index) {
              _controller.changeTabIndex(index);
            },
            color: Theme.of(context).primaryColorLight, // Light theme color
            backgroundColor: Theme.of(context).scaffoldBackgroundColor, // Background color of the navigation bar
            buttonBackgroundColor: Theme.of(context).secondaryHeaderColor, // Color for the active button
            items: [
              Icon(
                Icons.home_work_outlined,
                color: Theme.of(context).primaryColorDark, // Dark theme color for icon
                size: 30,
              ),
              Icon(
                Icons.compare_arrows,
                color: Theme.of(context).primaryColorDark, // Dark theme color for icon
                size: 30,
              ),
              MyAnimatedIcon( // Use MyAnimatedIcon here
                animationPath: 'assets/images/adds.json',
                height: 60,
                reverse: true,
                repeat: true,
                fit: BoxFit.cover,
                themeProvider: ThemeProvider(), // Pass your theme provider instance
                iconData: Icons.add, // Pass icon data here
              ),
              Icon(
                Icons.nature_people_outlined,
                color: Theme.of(context).primaryColorDark, // Dark theme color for icon
                size: 30,
              ),
              Icon(
                Icons.person_4_outlined,
                color: Theme.of(context).primaryColorDark, // Dark theme color for icon
                size: 30,
              ),
            ],
          );
        },
      ),
    );
  }
}
