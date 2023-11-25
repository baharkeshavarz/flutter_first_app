
import 'package:flutter/material.dart';
import 'package:flutter_first_app/config/app_routes.dart';
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
      initialRoute: AppRoutes.login,
      routes: AppRoutes.pages,
    );
  }
}
