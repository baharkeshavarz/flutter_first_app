import 'package:flutter/material.dart';
import 'package:flutter_first_app/widgets/custom_bottom_navigation.dart';
import 'package:flutter_svg/svg.dart';

class ButtonNavigationItem extends StatelessWidget {
 final VoidCallback onPressed;
 final String icon;
 final Menus current;
 final Menus name;
 
 const ButtonNavigationItem({
     Key? key,
     required this.onPressed,
     required this.icon,
     required this.current,
     required this.name,
    }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return IconButton(
                  onPressed: onPressed,
                  icon: SvgPicture.asset(
                                  icon,
                                  colorFilter: ColorFilter.mode(
                                     current == name
                                     ? Colors.black
                                     : Colors.black.withOpacity(0.3),
                                     BlendMode.srcIn,
                                     ), 
                    ),
          );
   }
}