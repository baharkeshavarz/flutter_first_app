import 'package:flutter/material.dart';
import 'package:flutter_first_app/config/app_routes.dart';
import 'package:flutter_first_app/pages/toolbar_page.dart';
import 'package:flutter_first_app/styles/app_text.dart';
import 'package:flutter_first_app/widgets/user_avatar.dart';

class ProfilePage extends StatelessWidget {
const ProfilePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
       appBar: Toolbar(
          title: "Profile",
          actions: [
             PopupMenuButton<int>(
              onSelected: (value) {
                switch (value) {
                  case 1:
                   Navigator.of(context).pushNamed(AppRoutes.editProfile);
                   debugPrint("edit profile");
                  break;
                  case 2:
                    debugPrint("logout profile");
                  break;
                  default:
                    debugPrint("default profile");
                }
              },
              itemBuilder: (context) {
               return [
                 const PopupMenuItem(
                    value: 1,
                    child: Row(
                      children: [
                            Icon(Icons.mode_edit_outline),
                            Text("Edit"),
                        ],
                      ),
                  ),
                  const PopupMenuItem(
                    value: 2,
                    child: Row(
                      children: [
                        Icon(Icons.logout_outlined),
                        Text("Logout"),
                      ],
                  ),)
               ];
             })
          ],
       ),
       body: const Column(
         children : [
            UserAvatar(),
            SizedBox(height: 24,),
            Text("Bahar Keshavarz", style: AppText.header2,),
            SizedBox(height: 8,),
            Text("Canada", style: AppText.subtitle3,),
            SizedBox(height: 24,),
            Row(
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
            Divider(thickness: 1, height: 24,), // height: add space
        ],
       ),
    );
  }
}