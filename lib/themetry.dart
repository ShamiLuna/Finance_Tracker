// // theme_provider.dart
// import 'package:flutter/material.dart';
// // import 'color_schemes.g.dart';
// class ThemeProvider with ChangeNotifier {
//   late ThemeMode _themeMode = ThemeMode.system;
//   late ColorScheme _darkScheme = ThemeMode.dark as ColorScheme;
//   late ColorScheme _lightScheme = ThemeMode.light as ColorScheme;
//   ThemeMode get themeMode => _themeMode;
//   void setThemeMode(ThemeMode value) {
//     _themeMode = value;
//     notifyListeners();
//   }
//   ColorScheme get darkScheme => _darkScheme;
//   void setDarkScheme(ColorScheme value) {
//     _darkScheme = value;
//     notifyListeners();
//   }
//   ColorScheme get lightScheme => _lightScheme;
//   void setLightScheme(ColorScheme value) {
//     _lightScheme = value;
//     notifyListeners();
//   }
// }