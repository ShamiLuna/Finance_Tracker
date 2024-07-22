import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:get/get.dart';

import '../../routes/app_pages.dart';



class MyDrawerController extends GetxController {
  final advancedDrawerController = AdvancedDrawerController();
}







class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        // borderRadius: BorderRadius.circular(30),
        // borderRadius: BorderRadius.only(topRight: Radius.circular(30),bottomRight: Radius.circular(30)),
        color: Theme.of(context).primaryColorLight,
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 100),
          ListTile(
            leading: Icon(Icons.home, color: Colors.white),
            title: Text('Home', style: TextStyle(color: Colors.white)),
            onTap: () {
              Get.find<MyDrawerController>().advancedDrawerController.hideDrawer();
            },
          ),
          ListTile(
            leading: Icon(Icons.settings, color: Colors.white),
            title: Text('Settings', style: TextStyle(color: Colors.white)),
            onTap: () {
              Get.find<MyDrawerController>().advancedDrawerController.hideDrawer();
              Get.toNamed(Routes.SETTING);
            },
          ),
          // Add more items here
        ],
      ),
    );
  }
}
