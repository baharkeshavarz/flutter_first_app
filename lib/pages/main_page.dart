import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  @override
  MainPageState createState() => MainPageState();
  const MainPage({ Key? key }) : super(key: key);
}

class MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context){
    return  Scaffold(
        appBar: AppBar(
             title: const Text("Bottom Navigation Container"),
          ),
        body: const Center(
             child: Text("Center Text"),
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.amber,
            items: const [
                 BottomNavigationBarItem(
                   icon: Icon(Icons.home),
                   label: "Home",
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.favorite),
                    label: "Favorite",
                  ),
                   BottomNavigationBarItem(
                    icon: Icon(Icons.add_a_photo),
                    label: "Photo",
                  )
              ],
            //showSelectedLabels: false,
            //showUnselectedLabels: false,
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