import 'package:flutter/material.dart';
import 'package:flutter_first_app/styles/app_colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build (BuildContext context) {
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
      body: ListView(
             children: mockUsersFromServers(),
         ),
      );
  }


 Widget _userItem() {
     return Row(
      children: [
        Image.asset(
            "assets/images/google.png",
             width: 40,
             height: 40,
          ),
          const SizedBox(width: 40,),
          const Text("Sara Keshavarz ", style: TextStyle(color: Colors.amber),),
      ],
     );
  }

  List<Widget> mockUsersFromServers() {
     List<Widget> users = [];
     for (var i= 0; i < 50; i++) {
        users.add(_userItem());
     }

     return users;
  }
}