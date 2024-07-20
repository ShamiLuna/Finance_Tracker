import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../onboard/views/onboard_view.dart';
import '../controllers/setupaccount_controller.dart';

class SetupaccountView extends GetView<SetupaccountController> {
  const SetupaccountView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('SetupaccountView'),
      //   centerTitle: true,
      // ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
                  child: Row(
            children: [
              Expanded(
                child: Text(
                  "Let’s setup your account!",
                  style: TextStyle(fontSize: 34,fontFamily: 'Roboto',fontWeight: FontWeight.w600),
                ),
              ),
            ],
                  ),
                ),
            const SizedBox(
              height: 16,
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text("Account can be your bank, credit card or your wallet.",style: TextStyle(fontFamily: 'Roboto',fontSize: 16,fontWeight: FontWeight.w600),),
            ),
            const Expanded(
              child: SizedBox(
                height: 38,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    backgroundColor: Theme.of(context).primaryColorDark,
                  ),
                  onPressed: (){
                    addac();
                    // Navigator.push(context, MaterialPageRoute(builder: (context)=> login()));
                  }, child: const SizedBox(
                  height: 56,
                  width: double.infinity,
                  child: Center(child: Text("Let's go",style: TextStyle(color: Colors.white,fontSize: 16,fontFamily: 'Roboto',fontWeight: FontWeight.bold),)))),
            ),
            const SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}
