import 'package:flutter/material.dart';
import 'package:flutter_first_app/styles/app_colors.dart';
import 'package:flutter_first_app/widgets/post_item.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  HomePage({super.key});
  List<String> users = [];

  @override
  Widget build (BuildContext context) {
    mockUsersFromServers(); // it's not a good practice to add calculation in build method
    return Scaffold(
      appBar: AppBar(
         title: const Text("Home Page",
                           style: TextStyle(color: AppColors.white,
                        ),
                     ),
         centerTitle: false,
         backgroundColor: AppColors.background,
         elevation: 0,
         actions: const [
            Icon(Icons.location_on_rounded),
            Icon(Icons.add_alert),
         ],
      ),
      body: ListView.builder(
          itemCount: users.length,
          itemBuilder: (context, index) {
             return PostItem(user: users[index],);
          },
       ),
      );
  }

    mockUsersFromServers() {
     for (var i= 0; i < 5; i++) {
          users.add("User number $i");
      }
    }
}