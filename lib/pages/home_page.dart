import 'package:flutter/material.dart';
import 'package:flutter_first_app/widgets/post_item.dart';
import 'package:flutter_first_app/pages/toolbar_page.dart';
import 'package:flutter_svg/svg.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  HomePage({super.key});
  List<String> users = [];

  @override
  Widget build (BuildContext context) {
    mockUsersFromServers(); // it's not a good practice to add calculation in build method
    return Scaffold(
      appBar: Toolbar(
                        title: "Home",
                        actions:  [
                            IconButton(
                              onPressed: () {},
                              icon: SvgPicture.asset("assets/svg/ic_location.svg"),
                             ),
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