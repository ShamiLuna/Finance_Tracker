// import 'package:financeapp/app/routes/app_pages.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import '../../onboard/views/onboard_view.dart';
// import '../controllers/signup_controller.dart';
// class SignupView extends GetView<SignupController> {
//   const SignupView({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         appBar: AppBar(
//           backgroundColor: Theme.of(context).primaryColorLight,
//           leading: const Icon(Icons.arrow_back),
//           title: const Text('Sign Up',style: TextStyle(fontSize: 20,fontFamily: 'Roboto',fontWeight: FontWeight.w700)),
//           centerTitle: true,
//         ),
//         body:  Center(
//           child: ListView(
//             physics: const AlwaysScrollableScrollPhysics(),
//             children: [
//               const SizedBox(
//                 height: 80,
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: TextFormField(
//                   controller: controller.nameController,
//                  decoration: InputDecoration(
//                    icon: const Icon(Icons.person),
//                  border: OutlineInputBorder(
//                    borderRadius: BorderRadius.circular(10),
//                  ),
//                      focusedBorder: OutlineInputBorder(
//                          borderSide:
//                          BorderSide(color: Theme.of(context).cardColor,),
//                          borderRadius: BorderRadius.circular(10)),
//                  // icon: Icon(Icons.person),
//                  hintText: 'Name'
//                 ),
//                       ),
//               ),
//               const SizedBox(
//                 height: 20,
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: TextFormField(
//                   controller: controller.emailController,
//                   validator: (value) {
//                     if (value == null || value.isEmpty) {
//                       return "Please enter email address";
//                     } else if (!value.contains("@")) {
//                       return "Please Enter Valid Email";
//                     } else if (!value.contains(".com")) {
//                       return "Please Enter Valid Email";
//                     }
//                     return null;
//                   },
//                   cursorColor: const Color(0xFF008080),
//                   decoration: InputDecoration(
//                     icon: const Icon(Icons.email),
//                       hintText: "Enter your email",
//                       contentPadding: const EdgeInsets.symmetric(
//                           vertical: 15.0, horizontal: 20.0),
//                       // filled: true,
//                       // fillColor: Colors.green.withOpacity(0.5),
//                       border: OutlineInputBorder(
//                           borderSide:
//                           const BorderSide(color: Colors.black),
//                           borderRadius: BorderRadius.circular(10)),
//                       focusedBorder: OutlineInputBorder(
//                           borderSide:
//                            BorderSide(color: Theme.of(context).cardColor,),
//                           borderRadius: BorderRadius.circular(10)),
//                       // suffixIcon:  Icon(
//                       //   Icons.email_outlined,
//                       //   // color: Theme.of(context).brightness == Brightness.light ? const Color(0xFF000000) :Colors.white,
//                       // ),
//
//                   ),
//                   // hitText: "Email",
//                   // icon: "assets/img/email.png",
//                   keyboardType: TextInputType.emailAddress,
//                 ),
//               ),
//               const SizedBox(
//                 height: 20,
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: TextFormField(
//                   controller: controller.passwordController,
//                   obscureText: controller.isShowPassword.value,
//                   validator: (value) {
//                     if (value == null || value.isEmpty) {
//                       return "Please enter Password";
//                     } else if (value.length < 6) {
//                       return "Please enter at least 6 digit";
//                     }
//                     return null;
//                   },
//                   cursorColor: const Color(0xFF008080),
//                   decoration: InputDecoration(
//                       icon: const Icon(Icons.password),
//                       hintText: "Enter Password",
//                       contentPadding: const EdgeInsets.symmetric(
//                           vertical: 15.0, horizontal: 20.0),
//                       // filled: true,
//                       // fillColor: Colors.white.withOpacity(0.5),
//                       border: OutlineInputBorder(
//                           borderSide:
//                           const BorderSide(color: Colors.white),
//                           borderRadius: BorderRadius.circular(10)),
//                       focusedBorder: OutlineInputBorder(
//                           borderSide:
//                           BorderSide(color: Theme.of(context).cardColor),
//                           borderRadius: BorderRadius.circular(10)),
//                     suffix: Obx(()=>
//                       InkWell(
//                         child: Icon(
//                             controller.isShowPassword.value ? Icons.visibility : Icons
//                                 .visibility_off),
//                         onTap: () {
//                           controller.isShowPassword.value =
//                           !controller.isShowPassword.value;
//                         },
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//               const SizedBox(
//                 height: 30,
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Row(
//                   // crossAxisAlignment: CrossAxisAlignment.,
//                   children: [
//                     // IconButton(
//                     //   onPressed: () {
//                     //     // setState(() {
//                     //       controller.isCheck = ! controller.isCheck;
//                     //     // });
//                     //   },
//                     //   icon: Icon(
//                     //     controller.isCheck
//                     //         ? Icons.check_box_outlined
//                     //         : Icons.check_box_outline_blank_outlined,
//                     //     color: Theme.of(context).cardColor,
//                     //     size: 20,
//                     //   ),
//                     // ),
//                     Obx((){
//                       // Use the value of isChecked to determine the icon
//                       IconData iconData = controller.isCheck.value
//                           ? Icons.check_box
//                           : Icons.check_box_outline_blank;
//                       return IconButton(
//                         icon: Icon(iconData),
//                         onPressed: () {
//                           // Call the toggleCheckbox method when the IconButton is pressed
//                           controller.toggleCheckbox();
//                         },
//                       );
//                     }),
//                     Padding(
//                       padding: const EdgeInsets.only(top: 8),
//                       child:  Row(
//                         children: [
//                           Padding(
//                             padding: const EdgeInsets.all(8.0),
//                             child: RichText(
//                               overflow: TextOverflow.ellipsis,
//                               text: TextSpan(
//                                   text: " By signing up, you agree to the,",
//                                   children: [
//                                     TextSpan(
//                                         text: " Terms of \n Service and Privacy Policy.",
//                                         style: TextStyle(
//                                             fontFamily: 'Roboto',
//                                             overflow: TextOverflow.ellipsis,
//                                             color: Theme.of(context).cardColor,
//                                             fontWeight: FontWeight.bold,
//                                             fontSize: 16,)),
//                                   ],
//                                   style:  TextStyle(color: Theme.of(context).primaryColor, fontSize: 16)),
//                               textAlign: TextAlign.center,
//                             ),
//                           ),
//                           // Text(
//                           //   " Terms of \nService and Privacy Policy",
//                           //   style: TextStyle(color: Theme.of(context).primaryColor, fontSize: 10),
//                           // ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               const SizedBox(
//                 height: 30,
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(16.0),
//                 child: ElevatedButton(
//                     style: ElevatedButton.styleFrom(
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(10.0),
//                       ),
//                       backgroundColor: Theme.of(context).primaryColorDark,
//                     ),
//
//                     onPressed: () async{
//                       var name = controller.nameController.text;
//                       await controller.storeName(name);
//                       // Navigator.push(context, MaterialPageRoute(builder: (context)=> Pin()));
//                    Pin();
//                     }, child: const SizedBox(
//                     height: 56,
//                     width: double.infinity,
//
//                     child: Center(child: Text('Sign Up',style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold,fontFamily: 'Roboto'),)))),
//               ),
//               const SizedBox(
//                 height: 30,
//               ),
//               const Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Text("Or with",style: TextStyle(fontFamily: 'Roboto'),),
//                 ],
//               ),
//               const SizedBox(
//                 height: 30,
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   GestureDetector(
//                     onTap: () {},
//                     child: Container(
//                       width: 50,
//                       height: 50,
//                       alignment: Alignment.center,
//                       decoration: BoxDecoration(
//                         color: Colors.white,
//                         border: Border.all(
//                           width: 1,
//                           color: Colors.grey.withOpacity(0.4),
//                         ),
//                         borderRadius: BorderRadius.circular(15),
//                       ),
//                       child: Image.asset(
//                         "assets/images/google.png",
//                         width: 20,
//                         height: 20,
//                       ),
//                     ),
//                   ),
//
//                  const SizedBox(
//                    width: 5,
//                   ),
//                    Text("Sign Up with Google",style: TextStyle(color: Theme.of(context).primaryColor,fontSize: 16,fontFamily: 'Roboto',fontWeight: FontWeight.bold)),
//
//                 ],
//               ),
//               const SizedBox(
//                 height: 30,
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   Center(
//                     child: Text(
//                       "Already have an account? ",
//                       style: TextStyle(
//                         fontFamily: 'Roboto',
//                         color: Theme.of(context).primaryColor,
//                         fontSize: 14,
//                           fontWeight: FontWeight.w700
//                       ),
//                     ),
//                   ),
//                   GestureDetector(
//                     onTap: (){
//                       login();
//                       // Navigator.push(context, MaterialPageRoute(builder: (context)=> login()));
//                     },
//                     child: Text(
//                       "Login",
//                       style: TextStyle(
//                         fontFamily: 'Roboto',
//                           color:  Theme.of(context).cardColor,
//                           fontSize: 14,
//                           fontWeight: FontWeight.w700),
//                     ),
//                   )
//                 ],
//               ),
//               const SizedBox(height: 40,),
//             ],
//           ),
//       )
//       ),
//     );
//   }
// }
// Pin() {
//   Get.toNamed(
//     Routes.PINCODE,
//   );
// }
