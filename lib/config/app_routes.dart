import 'package:flutter_first_app/pages/edit_profile_page.dart';
import 'package:flutter_first_app/pages/home_page.dart';
import 'package:flutter_first_app/pages/list_page.dart';
import 'package:flutter_first_app/pages/load_data_page.dart';
import 'package:flutter_first_app/pages/main_page.dart';
import 'package:flutter_first_app/pages/nearby_page.dart';
import 'package:flutter_first_app/pages/test_page.dart';

class AppRoutes {
 static final pages = {
        "/": (context) => const FutureBuilderExampleApp(),
        "/home": (context) => HomePage(),
        "/main": (context) => const MainPage(),
        "/test": (context) => const TestPage(),
        "/edit_profile": (context) => const EditProfilePage(),
        "/nearby": (context) => const NearbyPage(),
        "/list": (context) => const MyListView(),
      };

  static const login = '/';
  static const home = '/home';
  static const main = '/main';
  static const editProfile = '/edit_profile';
  static const nearby = '/nearby';
  static const user = '/user';
  static const lists = '/list';
  static const fetchData = "/fetch";
}