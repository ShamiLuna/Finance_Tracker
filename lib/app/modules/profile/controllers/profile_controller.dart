import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import '../../../ssstorage/customsecuredstorage.dart';
import '../../signup/controllers/signupcontrollersecured.dart';

class ProfileController extends GetxController {
  final SignupController signupController = Get.find<SignupController>();
  final Rx<XFile?> pickedImage = Rx<XFile?>(null);
  final CustomSecureStorageService customSecureStorageService = CustomSecureStorageService();

  @override
  void onInit() {
    super.onInit();
    _loadProfileImage(); // Load profile image when the controller initializes
  }

  Future<void> pickImage(ImageSource source) async {
    final ImagePicker picker = ImagePicker();
    final XFile? image = await picker.pickImage(source: source);
    if (image != null) {
      pickedImage.value = image;
      await customSecureStorageService.writeData('profile_image_path', image.path);
    }
  }

  Future<void> _loadProfileImage() async {
    final imagePath = await customSecureStorageService.readData('profile_image_path');
    if (imagePath != null) {
      pickedImage.value = XFile(imagePath);
    }
  }

  // void showImagePicker(BuildContext context) {
  //   showModalBottomSheet(
  //     context: context,
  //     builder: (context) => SafeArea(
  //       child: Wrap(
  //         children: [
  //           ListTile(
  //             leading: const Icon(Icons.camera_alt),
  //             title: Text('Camera'.tr, style: TextStyle(fontFamily: 'Roboto'),),
  //             onTap: () {
  //               pickImage(ImageSource.camera);
  //               Navigator.of(context).pop();
  //             },
  //           ),
  //           ListTile(
  //             leading: const Icon(Icons.photo_library),
  //             title: Text('Gallery'.tr, style: TextStyle(fontFamily: 'Roboto'),),
  //             onTap: () {
  //               pickImage(ImageSource.gallery);
  //               Navigator.of(context).pop();
  //             },
  //           ),
  //         ],
  //       ),
  //     ),
  //   );
  // }

  Future<void> logout() async {
    await customSecureStorageService.logout();
  }
}



// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:flutter_secure_storage/flutter_secure_storage.dart';
//
// import 'controllers/auth_controller.dart';
// import 'routes/app_pages.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   final AuthController authController = Get.put(AuthController());
//   final storage = FlutterSecureStorage();
//
//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(
//       title: 'Your App',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       initialRoute: '/',
//       getPages: AppPages.routes,
//       home: FutureBuilder(
//         future: authController.checkLoggedIn(),
//         builder: (context, AsyncSnapshot<bool> snapshot) {
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return CircularProgressIndicator();
//           } else {
//             if (snapshot.data == true) {
//               return HomePage(); // Navigate to HomePage if user is already logged in
//             } else {
//               return LoginPage(); // Otherwise, navigate to LoginPage
//             }
//           }
//         },
//       ),
//     );
//   }
// }
//
// class LoginPage extends StatelessWidget {
//   final AuthController authController = Get.find<AuthController>();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Login'),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () {
//             authController.login();
//           },
//           child: Text('Login'),
//         ),
//       ),
//     );
//   }
// }
//
// class HomePage extends StatelessWidget {
//   final AuthController authController = Get.find<AuthController>();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Home'),
//         actions: [
//           IconButton(
//             icon: Icon(Icons.logout),
//             onPressed: () {
//               authController.logout();
//             },
//           ),
//         ],
//       ),
//       body: Center(
//         child: Text('Welcome to the Home Page'),
//       ),
//     );
//   }
// }
