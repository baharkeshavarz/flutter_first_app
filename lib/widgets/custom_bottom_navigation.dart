import 'package:flutter/material.dart';
import 'package:flutter_first_app/widgets/button_navigation_item.dart';
import 'package:flutter_svg/svg.dart';

enum Menus {
  home,
  favorite,
  add,
  messages,
  user,
}

class CusstomBottomNavigation extends StatelessWidget {
 final Menus currentIndex;
 final ValueChanged<Menus> onTap; 
  
 const CusstomBottomNavigation({
     Key? key,
     required this.currentIndex,
     required this.onTap
     }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 87,
      margin: const EdgeInsets.all(25),
      child: Stack(
            children: [
                Positioned(
                  top: 17,
                  left: 0,
                  right: 0,
                  height: 70,
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(24)),
                    ),
                   child: Row(
                      children: [
                         Expanded(
                            child: ButtonNavigationItem(
                              current: currentIndex,
                              name: Menus.home,
                              icon: "assets/svg/ic_home.svg",
                              onPressed: () => onTap(Menus.home),
                            ),
                          ),
                          Expanded(
                            child: ButtonNavigationItem(
                              current: currentIndex,
                              name: Menus.favorite,
                              icon: "assets/svg/ic_favorite.svg",
                              onPressed: () => onTap(Menus.favorite),
                            ),
                          ),
                          const Spacer(),
                          Expanded(
                            child: ButtonNavigationItem(
                              current: currentIndex,
                              name: Menus.messages,
                              icon: "assets/svg/ic_messages.svg",
                              onPressed: () => onTap(Menus.messages),
                            ),
                          ),
                          Expanded(
                            child: ButtonNavigationItem(
                              current: currentIndex,
                              name: Menus.user,
                              icon: "assets/svg/ic_user.svg",
                              onPressed: () => onTap(Menus.user),
                            ),
                          ),
                      ],
                  ),
                   ),
                ),
                Positioned(
                   left: 0,
                   right: 0,
                   top:0,
                  child: GestureDetector(
                    onTap: () => onTap(Menus.add),
                    child: Container(
                        padding: const EdgeInsets.all(16),
                        width: 64,
                        height: 64,
                        decoration: const BoxDecoration(
                          color: Colors.amber,
                          shape: BoxShape.circle,
                        ),
                        child: SvgPicture.asset("assets/svg/ic_add.svg"),
                    ),
                  ),
                 ),
             ],
        ),
    );
  }
}