import 'package:flutter/material.dart';

class UserAvatar extends StatelessWidget {
final double size;
const UserAvatar({ Key? key, this.size = 90 }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(16.0)),
                child: 
                Image.asset("assets/temp/user1.png",
                             width: size,
                             height: size,
                       ),
             );
  }
}