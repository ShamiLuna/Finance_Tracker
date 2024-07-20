// // // Define separate colors for dark and light themes
// // import 'package:flutter/material.dart';
// //
// // final darkThemeColors = {
// //   'primaryColor': Colors.blue,
// //   'accentColor': Colors.orange,
// //   'backgroundColor': Colors.grey[900],
// //   'textColor': Colors.white, // Ensure textColor is set to white for dark theme
// // };
// //
// // final lightThemeColors = {
// //   'primaryColor': Colors.blue,
// //   'accentColor': Colors.orange,
// //   'backgroundColor': Colors.white,
// //   'textColor': Colors.black,
// // };
// //
// // // Define dark theme
// // final darkTheme = ThemeData.dark().copyWith(
// //   primaryColor: darkThemeColors['primaryColor'],
// //   hintColor: darkThemeColors['accentColor'],
// //   backgroundColor: darkThemeColors['backgroundColor'],
// //   scaffoldBackgroundColor: darkThemeColors['backgroundColor'],
// //   textTheme: TextTheme(
// //     bodyLarge: TextStyle(color: darkThemeColors['textColor']), // Body text style
// //     bodyMedium: TextStyle(color: darkThemeColors['textColor']), // Another body text style
// //     titleLarge: TextStyle(color: darkThemeColors['textColor']), // Title text style
// //     // Add more text styles as needed
// //   ),
// // );
// // final lightTheme = ThemeData.light().copyWith(
// //   primaryColor: lightThemeColors['primaryColor'],
// //   hintColor: lightThemeColors['accentColor'],
// //   backgroundColor: lightThemeColors['backgroundColor'],
// //   scaffoldBackgroundColor: lightThemeColors['backgroundColor'],
// //   textTheme: TextTheme(
// //     bodyLarge: TextStyle(color: lightThemeColors['textColor']),
// //     bodyMedium: TextStyle(color: lightThemeColors['textColor']),
// //     titleLarge: TextStyle(color: lightThemeColors['textColor']),
// //
// //     // Add more text styles as needed
// //   ),
// // );
// //
// // // Define light theme (assuming it's already correctly defined)
// //
// // class ThemeSwitcher extends StatefulWidget {
// //   const ThemeSwitcher({Key? key}) : super(key: key);
// //
// //   @override
// //   _ThemeSwitcherState createState() => _ThemeSwitcherState();
// // }
// //
// // class _ThemeSwitcherState extends State<ThemeSwitcher> {
// //   bool _isDarkMode = false;
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       theme: _isDarkMode ? darkTheme : lightTheme,
// //       darkTheme: darkTheme,
// //       themeMode: _isDarkMode ? ThemeMode.dark : ThemeMode.light,
// //       home: Scaffold(
// //         appBar: AppBar(
// //           title: Text('Theme Switcher'),
// //         ),
// //         body: Center(
// //           child: Column(
// //             mainAxisAlignment: MainAxisAlignment.center,
// //             children: <Widget>[
// //               ElevatedButton(
// //                 onPressed: () {
// //                   setState(() {
// //                     _isDarkMode = !_isDarkMode;
// //                   });
// //                 },
// //                 child: Text('Toggle Theme'),
// //               ),
// //               Text(
// //                 _isDarkMode ? 'Dark Theme' : 'Light Theme hello',
// //                 style: Theme.of(context).textTheme.titleLarge, // Use headline6 text style for title
// //               ),
// //             ],
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }
// //
// // void main() {
// //   runApp(ThemeSwitcher());
// // }
// import 'package:flutter/material.dart';
//
// // Define separate colors for dark and light themes
// final darkThemeColors = {
//   'primaryColor': Colors.blue,
//   'accentColor': Colors.orange,
//   'backgroundColor': Colors.grey[900],
//   'textColor': Colors.white, // Ensure textColor is set to white for dark theme
// };
//
// final lightThemeColors = {
//   'primaryColor': Colors.blue,
//   'accentColor': Colors.orange,
//   'backgroundColor': Colors.white,
//   'textColor': Colors.black,
// };
//
// // Define dark theme
// final darkTheme = ThemeData.dark().copyWith(
//   primaryColor: darkThemeColors['primaryColor'],
//   // accentColor: darkThemeColors['accentColor'],
//   backgroundColor: darkThemeColors['backgroundColor'],
//   scaffoldBackgroundColor: darkThemeColors['backgroundColor'],
//   textTheme: TextTheme(
//     bodyLarge: TextStyle(color: darkThemeColors['textColor']), // Body text style
//     bodyMedium: TextStyle(color: darkThemeColors['textColor']), // Another body text style
//     headline6: TextStyle(color: darkThemeColors['textColor']), // Title text style
//     // Add more text styles as needed
//   ),
// );
//
// // Define light theme
// final lightTheme = ThemeData.light().copyWith(
//   primaryColor: lightThemeColors['primaryColor'],
//   // accentColor: lightThemeColors['accentColor'],
//   backgroundColor: lightThemeColors['backgroundColor'],
//   scaffoldBackgroundColor: lightThemeColors['backgroundColor'],
//   textTheme: TextTheme(
//     bodyLarge: TextStyle(color: lightThemeColors['textColor']),
//     bodyMedium: TextStyle(color: lightThemeColors['textColor']),
//     headline6: TextStyle(color: lightThemeColors['textColor']), // Title text style
//     // Add more text styles as needed
//   ),
// );
//
// class ThemeSwitcher extends StatefulWidget {
//   const ThemeSwitcher({Key? key}) : super(key: key);
//
//   @override
//   _ThemeSwitcherState createState() => _ThemeSwitcherState();
// }
//
// class _ThemeSwitcherState extends State<ThemeSwitcher> {
//   bool _isDarkMode = false;
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//
//         themeMode: ThemeMode.system, // or ThemeMode.dark or ThemeMode.light
//         theme: ThemeData(
//           brightness: Brightness.dark, // or Brightness.light
//           primaryColor: Colors.blue,
//           // accentColor: Colors.red,
//           textTheme: TextTheme(
//             bodyText2: TextStyle(color: Colors.white), // or Colors.black
//           ),
//         ),
//         darkTheme: ThemeData(
//           brightness: Brightness.light,
//           primaryColor: Colors.blue,
//           // accentColor: Colors.red,
//           textTheme: TextTheme(
//             bodyText2: TextStyle(color: Colors.black), // or Colors.white
//           ),
//         ),
//
//       // theme: _isDarkMode ? darkTheme : lightTheme,
//       // darkTheme: darkTheme,
//       // themeMode: _isDarkMode ? ThemeMode.dark : ThemeMode.light,
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Theme Switcher'),
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               ElevatedButton(
//                 onPressed: () {
//                   setState(() {
//                     _isDarkMode = !_isDarkMode;
//                   });
//                 },
//                 child: Text('Toggle Theme'),
//               ),
//               Text(
//                 _isDarkMode ? 'Dark Theme' : 'Light Theme hello',
//                 style: Theme.of(context).textTheme.headline6, // Use headline6 text style for title
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// void main() {
//   runApp(ThemeSwitcher());
// }
//
//



// import 'package:financeapp/app/routes/app_pages.dart';
// import 'package:financeapp/theme/dark_theme.dart';
// import 'package:financeapp/theme/light_theme.dart';
// import 'package:financeapp/theme/theme_provider.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';
// import 'package:get/get_navigation/src/root/get_material_app.dart';
// import 'package:provider/provider.dart';
// import 'package:responsive_framework/responsive_wrapper.dart';
//
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key});
//
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   bool _isDarkMode = false;
//
//   void _toggleTheme(bool isDarkMode) { // Update function to accept bool argument
//     setState(() {
//       _isDarkMode = isDarkMode;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Dark Theme Toggle'),
//           actions: [
//             Switch(
//               value: _isDarkMode,
//               onChanged: _toggleTheme, // Pass _toggleTheme function directly
//             ),
//           ],
//         ),
//         body: _isDarkMode ? const LightTheme() : const DarkTheme(),
//       ),
//     );
//   }
// }
//
// class LightTheme extends StatelessWidget {
//   const LightTheme({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.white,
//       child: const Center(
//         child: Text(
//           'This is light theme',
//           style: TextStyle(color: Colors.black),
//         ),
//       ),
//     );
//   }
// }
//
// class DarkTheme extends StatelessWidget {
//   const DarkTheme({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.black,
//       child: const Center(
//         child: Text(
//           'This is dark theme',
//           style: TextStyle(color: Colors.white),
//         ),
//       ),
//     );
//   }
// }
// void main() {
//   runApp(MyApp());
// }
//
//
//
// final navigatorKey = GlobalKey<NavigatorState>();





// Future<void> main() async {
//   // _razorpay = Razorpay();
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp(
//     options: DefaultFirebaseOptions.currentPlatform,
//   ).then((value) => Get.put(AuthController()));
//   // _flutterLocalNotificationsPlugin.resolvePlatformSpecificImplementation<AndroidFlutterLocalNotificationsPlugin>()?.requestPermission();
//   await FirebaseAPi().initNotification();
//   // final fcmToken = await FirebaseMessaging.instance.getToken();
//
//   // print(fcmToken);
//   //dependency injection we need to use it
//   runApp
//     (MyApp());
// }

// class MyApp extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(
//       builder: (context, child) => ResponsiveWrapper.builder(child,
//           maxWidth: 1200,
//           minWidth: 480,
//           defaultScale: true,
//           breakpoints: [
//             ResponsiveBreakpoint.resize(410, name: MOBILE),
//             ResponsiveBreakpoint.autoScale(410, name: MOBILE),
//             ResponsiveBreakpoint.autoScale(800, name: TABLET),
//             ResponsiveBreakpoint.resize(800, name: TABLET),
//             ResponsiveBreakpoint.resize(1000, name: DESKTOP),
//             ResponsiveBreakpoint.autoScale(1000, name: DESKTOP),
//             ResponsiveBreakpoint.autoScale(1000, name: DESKTOP),
//           ],
//           background: Container(color: Color(0xFFF5F5F5))),
//       debugShowCheckedModeBanner: false,
//       // theme: Provider.of<ThemeProvider>(context).darkTheme ? dark : light,
//       // translations: AppLocalization(),
//       locale: Get.deviceLocale,
//       //for setting localization strings
//       fallbackLocale: Locale('en', 'US'),
//       title: 'faz',
//       initialRoute: AppPages.INITIAL,
//       getPages: AppPages.routes,
//       navigatorKey: navigatorKey,
//     );
//   }
// }




// @override
// void iniState(){
//   super.initState();
//   _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
//   _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
//   _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);
//
// }

// @override
// void dispose(){
// super.dispose();
// _razorpay.clear(); // Removes all listeners
// }



// var options = {
//   'key': '<YOUR_KEY_ID>',
//   'amount': 50000, //in the smallest currency sub-unit.
//   'name': 'Acme Corp.',
//   'order_id': 'order_EMBFqjDHEEn80l', // Generate order_id using Orders API
//   'description': 'Fine T-Shirt',
//   'timeout': 60, // in seconds
//   'prefill': {
//     'contact': '9000090000',
//     'email': 'gaurav.kumar@example.com'
//   }
// };


// try {
//   _razorpay.open(options);
// }catch (e){
//   debugPrint('Error : e');
// }


// void _handlePaymentSuccess(PaymentSuccessResponse response) {
//   // Do something when payment succeeds
// }
//
// void _handlePaymentError(PaymentFailureResponse response) {
//   // Do something when payment fails
// }
//
// void _handleExternalWallet(ExternalWalletResponse response) {
//   // Do something when an external wallet is selected
// }



// class MyApp extends StatelessWidget {
//   // double get h => ((this _width = 393);
//
//   // This widget is the root of your application.
//   @override
//   Widget build( context)
//   {
//     return GetMaterialApp(
//       builder: (context, child) => ResponsiveWrapper.builder(child,
//           maxWidth: 1200,
//           minWidth: 480,
//
//           defaultScale: true,
//           breakpoints: [
//             ResponsiveBreakpoint.resize(410, name: MOBILE),
//             ResponsiveBreakpoint.autoScale(410, name: MOBILE),
//             ResponsiveBreakpoint.autoScale(800, name: TABLET),
//             ResponsiveBreakpoint.resize(800, name: TABLET),
//             ResponsiveBreakpoint.resize(1000, name: DESKTOP),
//             ResponsiveBreakpoint.autoScale(1000, name: DESKTOP),
//             ResponsiveBreakpoint.autoScale(1000, name: DESKTOP),
//           ],
//           background: Container(color: Color(0xFFF5F5F5))),
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData.dark(),
//       translations: AppLocalization(),
//       locale: Get.deviceLocale,
//       //for setting localization strings
//       fallbackLocale: Locale('en', 'US'),
//       title: 'faz',
//       initialBinding: InitialBindings(),
//       initialRoute: AppRoutes.frame33712Screen,
//       getPages: AppRoutes.pages,
//     );
//   }
// }



//LAST
// import 'package:financeapp/app/modules/Splash%20screen/splashcontroller.dart';
// import 'package:financeapp/provider/theme_provider.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_secure_storage/flutter_secure_storage.dart';
// import 'package:get/get.dart';
// import 'package:get_storage/get_storage.dart';
//
// import 'package:provider/provider.dart';
// import 'package:responsive_framework/responsive_wrapper.dart';
// import 'app/modules/Budget/controllers/budget_controller.dart';
// import 'app/modules/Budget/views/budget_view.dart';
// import 'app/modules/home/controllers/home_controller.dart';
// import 'app/modules/languages/apptranslation.dart';
// import 'app/modules/languages/translation_service.dart';
// import 'app/routes/app_pages.dart';
//
// Future main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await SystemChrome.setPreferredOrientations([
//     DeviceOrientation.portraitUp,
//     DeviceOrientation.portraitDown,
//   ]);
//   // await Hive.initFlutter();
//   // Hive.registerAdapter(AdddataAdapter());
//   // await Hive.openBox<Add_data>('data');
//   // await .deleteAllData();
//   // HomeController homeController = HomeController();
//   // Get.put(SharedService());
//   Get.put(SplashController());
//   Get.put(HomeController());
//   Get.put(BudgetController());
//
//   runApp(const MyApp());
// }
//
//
//
// class MyApp extends StatelessWidget {
//   static const String title = 'Frutter Finance App';
//
//   const MyApp({Key? key});
//
//   @override
//   Widget build(BuildContext context) {
//     final storage = GetStorage();
//
//     Locale savedLocale = Locale('en', 'US'); // Default locale
//     final secureStorage = FlutterSecureStorage();
//     final savedLocaleString = await secureStorage.read(key: 'locale');
//
//     if (savedLocaleString != null) {
//       savedLocale = Locale(savedLocaleString.split('-').first, savedLocaleString.split('-').last);
//     }
//
//
//     return ChangeNotifierProvider(
//       create: (context) => ThemeProvider(),
//       builder: (context, _) {
//         final themeProvider = Provider.of<ThemeProvider>(context);
//         return GetMaterialApp(
//           debugShowMaterialGrid: false,
//           builder: (context, child) => ResponsiveWrapper.builder(
//             child,
//             maxWidth: 1200,
//             minWidth: 480,
//             defaultScale: true,
//             breakpoints: const [
//               ResponsiveBreakpoint.resize(410, name: MOBILE),
//               ResponsiveBreakpoint.autoScale(410, name: MOBILE),
//               ResponsiveBreakpoint.autoScale(800, name: TABLET),
//               ResponsiveBreakpoint.resize(800, name: TABLET),
//               ResponsiveBreakpoint.resize(1000, name: DESKTOP),
//               ResponsiveBreakpoint.autoScale(1000, name: DESKTOP),
//               ResponsiveBreakpoint.autoScale(1000, name: DESKTOP),
//             ],
//           ),
//           translations: AppTranslations(), // Initialize translations
//           locale: savedLocale, // Set default locale
//           fallbackLocale: savedLocale, // Set fallback locale
//           debugShowCheckedModeBanner: false,
//           title: title,
//           themeMode: themeProvider.themeMode,
//           theme: MyThemes.lightTheme,
//           darkTheme: MyThemes.darkTheme,
//           // home:  GroupedItemsList(),
//           initialRoute: AppPages.INITIAL,
//           getPages: AppPages.routes,
//         );
//       },
//     );
//   }
// }

import 'package:financeapp/app/modules/Splash%20screen/splashcontroller.dart';
import 'package:financeapp/app/modules/languages/lang_controller.dart';
import 'package:financeapp/app/modules/profile/controllers/profile_controller.dart';
import 'package:financeapp/provider/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:provider/provider.dart';
import 'package:responsive_framework/responsive_wrapper.dart';
import 'app/modules/Budget/controllers/budget_controller.dart';
import 'app/modules/home/controllers/home_controller.dart';
import 'app/modules/languages/apptranslation.dart';
import 'app/modules/signup/controllers/signupcontrollersecured.dart';
import 'app/routes/app_pages.dart';
// Import SignupController

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  // Initialize GetStorage and FlutterSecureStorage
  await GetStorage.init();

  final LanguageController languageController = Get.put(LanguageController());
  // Load saved locale from secure storage
  // Initialize LanguageController


  // Load saved locale
  await languageController.loadLocale();

  // Apply locale
  // MyApp app = MyApp(savedLocale: savedLocale);
  // Initialize controllers
  // Get.put(LanguageController());
  Get.put(SplashController());
  Get.put(HomeController());
  Get.put(BudgetController());
  Get.put(SignupController());
  Get.put(ProfileController());
  // Initialize SignupController
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // final Locale savedLocale;

  // const MyApp({Key? key, required this.savedLocale}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      builder: (context, _) {
        final themeProvider = Provider.of<ThemeProvider>(context);
        final LanguageController languageController = Get.find<LanguageController>();
        return GetMaterialApp(
          showPerformanceOverlay: false,// Use GetMaterialApp
          debugShowMaterialGrid: false,
          builder: (context, child) => ResponsiveWrapper.builder(
            child,
            maxWidth: 1200,
            minWidth: 480,
            defaultScale: true,
            breakpoints: const [
              ResponsiveBreakpoint.resize(410, name: MOBILE),
              ResponsiveBreakpoint.autoScale(410, name: MOBILE),
              ResponsiveBreakpoint.autoScale(800, name: TABLET),
              ResponsiveBreakpoint.resize(800, name: TABLET),
              ResponsiveBreakpoint.resize(1000, name: DESKTOP),
              ResponsiveBreakpoint.autoScale(1000, name: DESKTOP),
              ResponsiveBreakpoint.autoScale(1000, name: DESKTOP),
            ],
          ),
          translations: AppTranslations(), // Initialize translations
          locale: languageController.parseLocale(languageController.locale),
          fallbackLocale: const Locale('en', 'US'),
          debugShowCheckedModeBanner: false,
          themeMode: themeProvider.themeMode,
          theme: themeProvider.currentTheme,
          darkTheme: MyThemes.darkTheme,
          initialRoute: AppPages.INITIAL,
          getPages: AppPages.routes,
        );
      },
    );
  }
}


//
//
//
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:get/get.dart';
// import 'package:provider/provider.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:financeapp/provider/theme_provider.dart';
// import 'package:responsive_framework/responsive_framework.dart';
// import 'app/modules/languages/apptranslation.dart';
// import 'app/routes/app_pages.dart';
//
// Future<void> main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await SystemChrome.setPreferredOrientations([
//     DeviceOrientation.portraitUp,
//     DeviceOrientation.portraitDown,
//   ]);
//
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return ChangeNotifierProvider(
//       create: (context) => ThemeProvider(),
//       builder: (context, _) {
//         final themeProvider = Provider.of<ThemeProvider>(context);
//         return GetMaterialApp(
//           debugShowMaterialGrid: false,
//           builder: (context, child) => ResponsiveWrapper.builder(
//             child,
//             maxWidth: 1200,
//             minWidth: 480,
//             defaultScale: true,
//             breakpoints: const [
//               ResponsiveBreakpoint.resize(410, name: MOBILE),
//               ResponsiveBreakpoint.autoScale(410, name: MOBILE),
//               ResponsiveBreakpoint.autoScale(800, name: TABLET),
//               ResponsiveBreakpoint.resize(800, name: TABLET),
//               ResponsiveBreakpoint.resize(1000, name: DESKTOP),
//               ResponsiveBreakpoint.autoScale(1000, name: DESKTOP),
//               ResponsiveBreakpoint.autoScale(1000, name: DESKTOP),
//             ],
//           ),
//           translations: AppTranslations(),
//           locale: Locale('en', 'US'),
//           fallbackLocale: Locale('en', 'US'),
//           debugShowCheckedModeBanner: false,
//           themeMode: themeProvider.themeMode,
//           theme: themeProvider.currentTheme,
//           darkTheme: MyThemes.darkTheme,
//           initialRoute: AppPages.INITIAL,
//           getPages: AppPages.routes,
//         );
//       },
//     );
//   }
// }
//
