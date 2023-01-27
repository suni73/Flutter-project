import 'package:flutter/material.dart';
import 'package:social_app/screens/add_user.dart';
import 'package:social_app/screens/chat_page.dart';

import 'package:social_app/screens/home_page.dart';
import 'package:social_app/screens/setting.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {

  int currentIndex =0;
  void _onItemTapped(int index){
    setState(() {
      currentIndex = index;
    });
  }
  final List<Widget> nav_screen = [
    HomePage(),
    ChatPage(),
    AddUsers(),
    Setting(),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(


      backgroundColor: Colors.white,
      bottomNavigationBar:
      BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Color.fromRGBO(21, 0, 80, 1),
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        iconSize: 30,
        currentIndex: currentIndex,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(

              icon:Icon(Icons.home),
              label: 'home',
              backgroundColor: Colors.grey),
          BottomNavigationBarItem(icon:Icon(Icons.message),
              label: 'home' ,
              backgroundColor: Colors.green),
          BottomNavigationBarItem(icon:Icon(Icons.person),
              label: 'home',
              backgroundColor: Colors.grey),
          BottomNavigationBarItem(icon:Icon(Icons.settings),
              label: 'home',
              backgroundColor: Colors.grey),

        ],
      ),

      body: Center(child: nav_screen.elementAt(currentIndex)),



    );
  }
}
