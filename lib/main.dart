
import 'package:flutter/material.dart';
import 'package:flutter_first_app/pages/home_page.dart';
import 'package:flutter_first_app/pages/main_page.dart';
import 'package:flutter_first_app/pages/test_page.dart';
import 'package:flutter_first_app/styles/app_colors.dart';
 
void main() {
  runApp(const MyApp());
}
 
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My First Application",
      theme: ThemeData(
                        fontFamily: 'Urbanist', 
                        scaffoldBackgroundColor: AppColors.background,
                        brightness: Brightness.dark,
                      ),
      // home: const LoginPage(),
      initialRoute: "/",
      routes: {
        "/": (context) => const MainPage(),
        "/home": (context) => HomePage(),
        "/main": (context) => const MainPage(),
        "/test": (context) => const TestPage(),
      },
    );
  }
}
