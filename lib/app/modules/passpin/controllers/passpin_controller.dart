// import 'dart:async';
//
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/gestures.dart';
// import 'package:get/get.dart';
// import 'package:pin_code_fields/pin_code_fields.dart';
//
// class PasspinController extends GetxController {
//   bool hasError = false;
//   //TODO: Implement PasspinController
//   var onTapRecognizer;
//   var context = BuildContext;
//   TextEditingController textEditingController = TextEditingController();
//   late StreamController<ErrorAnimationType> errorController;
//   // late FocusNode _focusNode ;
//   final FocusNode _focusNode = FocusNode();z
//
//   final count = 0.obs;
//   @override
//   void onInit() {
//     onTapRecognizer = TapGestureRecognizer()
//       ..onTap = () {
//         Navigator.pop(context as BuildContext);
//       };
//     errorController = StreamController<ErrorAnimationType>();
//
//     // _focusNode= FocusNode();
//     // FocusScope.of(context as BuildContext).requestFocus(_focusNode);
//     super.onInit();
//   }
//
//   @override
//   void dispose() {
//     errorController.close();
//     _focusNode.dispose();
//     // _focusNode.dispose();
//     super.dispose();
//   }
//
//
//
//   void increment() => count.value++;
// }
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class PasspinController extends GetxController {
  final textEditingController = TextEditingController();
  final errorController = StreamController<ErrorAnimationType>();
  var hasError = false.obs;
}

// class PasspinView extends StatelessWidget {
//   final PasspinController controller = Get.put(PasspinController());
//   final formKey = GlobalKey<FormState>();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               const Padding(
//                 padding: EdgeInsets.all(16.0),
//                 child: Text(
//                   "Set your PIN",
//                   style: TextStyle(fontSize: 24, fontFamily: 'Roboto', fontWeight: FontWeight.w600),
//                 ),
//               ),
//               const SizedBox(height: 40),
//               Form(
//                 key: formKey,
//                 child: Padding(
//                   padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 60),
//                   child: PinCodeTextField(
//                     appContext: context,
//                     length: 4,
//                     obscureText: false,
//                     obscuringCharacter: '*',
//                     animationType: AnimationType.fade,
//                     validator: (v) {
//                       if (v!.length < 4) {
//                         return "Please enter a valid 4-digit PIN";
//                       } else {
//                         return null;
//                       }
//                     },
//                     pinTheme: PinTheme(
//                       shape: PinCodeFieldShape.circle,
//                       fieldHeight: 40,
//                       fieldWidth: 40,
//                       inactiveColor: Colors.grey,
//                       inactiveFillColor: Theme.of(context).scaffoldBackgroundColor,
//                       activeFillColor: Theme.of(context).scaffoldBackgroundColor,
//                     ),
//                     cursorColor: Theme.of(context).primaryColor,
//                     animationDuration: const Duration(milliseconds: 300),
//                     textStyle: TextStyle(fontSize: 20, height: 1.6, color: Theme.of(context).primaryColor),
//                     enableActiveFill: true,
//                     errorAnimationController: controller.errorController,
//                     controller: controller.textEditingController,
//                     keyboardType: TextInputType.number,
//                     boxShadows: const [
//                       BoxShadow(
//                         offset: Offset(0, 1),
//                         color: Colors.black12,
//                         blurRadius: 10,
//                       )
//                     ],
//                     onCompleted: (v) {
//                       Get.toNamed(Routes.AGAINPIN, arguments: v);
//                     },
//                     onChanged: (value) {
//                       print(value);
//                     },
//                     beforeTextPaste: (text) {
//                       print("Allowing to paste $text");
//                       return true;
//                     },
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
