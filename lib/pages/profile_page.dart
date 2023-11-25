import 'package:flutter/material.dart';
import 'package:flutter_first_app/pages/toolbar_page.dart';
import 'package:flutter_first_app/styles/app_text.dart';

class ProfilePage extends StatelessWidget {
const ProfilePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
       appBar: Toolbar(
          title: "Profile",
          actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_vert_outlined),
            ),
          ],
       ),
       body: Column(
         children: [
           Image.asset("assets/temp/user1.png", width: 90, height: 90,),
           const SizedBox(height: 24,),
           const Text("Bahar Keshavarz", style: AppText.header2,),
           const SizedBox(height: 8,),
           const Text("Canada", style: AppText.subtitle3,),
           const SizedBox(height: 24,),
           const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                      Text("456", style: AppText.header2,),
                      Text("Followers"),
                  ],
                ),
                Column(
                  children: [
                      Text("112", style: AppText.header2,),
                      Text("Posts"),
                  ],
                ),
                  Column(
                     children: [
                         Text("967", style: AppText.header2,),
                         Text("Following"),
                      ],
                )
              ],
           ),
           const Divider(thickness: 1, height: 24,), // height: add space
        ],
       ),
    );
  }
}