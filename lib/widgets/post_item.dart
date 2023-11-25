import 'package:flutter/material.dart';
import 'package:flutter_first_app/styles/app_text.dart';

class PostItem extends StatelessWidget {
  final String user;  
  const PostItem({ Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
      child: Column(
        children: [
          Row(
             children: [
              Image.asset(
                    "assets/images/google.png",
                     width: 40,
                     height: 40,
                  ),
                  const  SizedBox(width: 10,),
                  Text(user,
                             style: AppText.subtitle3,
                             ),
                ],
            ),
           const SizedBox(height: 10,),
           Image.asset("assets/temp/post1.jpg"),
           const SizedBox(height: 10,),
           const Text("In Flutter, you can use the List class to work with arrays.Dart, the language used by Flutter, provides a powerful and flexible list implementation. Here are some basic operations you can perform with lists in Flutter:", 
                     style: AppText.body1,
                     ),
          ],
       ),
      );
  }
}