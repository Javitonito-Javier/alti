//import 'package:altiplanov2/src/pages/login_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:altiplanov2/src/contants/app_routes.dart';
//import 'package:altiplanov2/src/pages/home_page.dart';
//import 'package:altiplanov2/src/pages/login_pages.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appThemeData = ThemeData(
      primaryColor: Colors.deepPurple,
      visualDensity: VisualDensity.adaptivePlatformDensity,
    );

    return GetMaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      theme: appThemeData,
      defaultTransition: Transition.fade,
      initialRoute: '/login',
      getPages: AppRoutes.routes,
    );
  }
}
//void main() {
//  var appThemeData = ThemeData(primaryColor: Colors.black87);
//  runApp(GetMaterialApp(
//    debugShowCheckedModeBanner: false,
//    initialRoute: '/login',
//    theme: appThemeData,
//    defaultTransition: Transition.fade,
//   getPages: AppRoutes.routes,
//    home: HomePage(),
//  ));
//}
