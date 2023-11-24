import 'package:flutter/material.dart';
import 'package:flutter_first_app/pages/home_page.dart';
import 'package:flutter_svg/svg.dart';

class MainPage extends StatefulWidget {
  @override
  MainPageState createState() => MainPageState();
  const MainPage({ Key? key }) : super(key: key);
}

class MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  final pages = [
    const HomePage(),
    const Center(
      child: Text("Favorite", style: TextStyle(color: Colors.white),),
    ),
     const Center(
      child: Text("User", style: TextStyle(color: Colors.white),),
    ),
     const Center(
      child: Text("Messages", style: TextStyle(color: Colors.white),),
    ),
     const Center(
      child: Text("Add Post", style: TextStyle(color: Colors.white),),
    ),
  ];

  @override
  Widget build(BuildContext context){
    return Scaffold(
        body: pages[_selectedIndex],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.blueGrey,
            items: [
                 BottomNavigationBarItem(
                   icon: SvgPicture.asset("assets/svg/ic_home.svg"),
                   label: "Home",
                  ),
                  BottomNavigationBarItem(
                    icon: SvgPicture.asset("assets/svg/ic_favorite.svg"),
                    label: "Favorite",
                  ),
                  BottomNavigationBarItem(
                    icon: SvgPicture.asset("assets/svg/ic_user.svg"),
                    label: "User",
                  ),
                   BottomNavigationBarItem(
                    icon: SvgPicture.asset("assets/svg/ic_messages.svg"),
                    label: "Messages",
                  ),
                  BottomNavigationBarItem(
                    icon: SvgPicture.asset("assets/svg/ic_add.svg"),
                    label: "Add Post",
                  ),
              ],
            //showSelectedLabels: false,
            //showUnselectedLabels: false,
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.white,
            onTap: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
          ),
    );
  }
}