import 'package:altiplanov2/src/pages/Login.dart';
import 'package:altiplanov2/src/pages/home.dart';
import 'package:altiplanov2/src/pages/home_page.dart';
import 'package:altiplanov2/src/pages/login_pages.dart';
import 'package:altiplanov2/src/pages/user_page.dart';
import 'package:get/get.dart';

class AppRoutes {
  AppRoutes._(); //this is to prevent anyone from instantiating this object
  static final routes = [
    GetPage(name: '/', page: () => HomePage()),
    GetPage(name: '/login', page: () => LoginPage()),
    GetPage(name: '/user', page: () => UserPage()),
    GetPage(name: '/formlogin', page: () => Login()),
    GetPage(name: '/homus', page: () => EmpleadosForm()),
    //GetPage(name: '/settings', page: () => SettingsUI()),Home
    //GetPage(name: '/reset-password', page: () => ResetPasswordUI()),
    //GetPage(name: '/update-profile', page: () => UpdateProfileUI()),
  ];
}
