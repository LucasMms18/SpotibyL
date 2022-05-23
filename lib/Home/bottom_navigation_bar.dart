import 'package:flutter/material.dart';
import 'package:home_page/Drawer%20Items/downs.dart';
import 'package:home_page/Home/ButtonsPage.dart';
import 'package:home_page/Home/search.dart';
import 'package:home_page/Login/main.dart';

import '../Drawer Items/Account.dart';

class BottomNavigationBae extends StatefulWidget {
  const BottomNavigationBae({Key? key}) : super(key: key);
  @override
  State<BottomNavigationBae> createState() => _BottomNavigationBaeState();
}
class _BottomNavigationBaeState extends State<BottomNavigationBae> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle=
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = [
    ButtonsPage(),
    Search(),
    Account(),
    downloads()
  ];
  void _onItemTapped(int index) {
    setState((){
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Colors.black,),
          label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.gif, color: Colors.black),
              label: "sadas"),
          BottomNavigationBarItem(
              icon: Icon(Icons.dangerous, color: Colors.black),
              label: "Homadadae"),
          BottomNavigationBarItem(icon: Icon(Icons.facebook, color: Colors.black), label: "Face")
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }
}
