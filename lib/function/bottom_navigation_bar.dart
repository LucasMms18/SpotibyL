import 'package:flutter/material.dart';
import 'package:home_page/screens/Account.dart';
import 'package:home_page/screens/home.dart';
import 'package:home_page/screens/playlist.dart';
import 'package:home_page/screens/search.dart';

class ButtonsPage extends StatefulWidget {
  const ButtonsPage({Key? key}) : super(key: key);

  @override
  State<ButtonsPage> createState() => _HomeButtonsPage();
}

class _HomeButtonsPage extends State<ButtonsPage> {
  int _selectedScreen = 0;
  static const List<Widget> _widgetOptions = [
    Home(),
    Search(),
    Playlist(),
    Account()
  ];

  void _onScreenTapped(int index) {
    setState(() {
      _selectedScreen = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _widgetOptions.elementAt(_selectedScreen)),
      bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home, color: Colors.white),
                label: "Home",
                backgroundColor: Colors.black),
            BottomNavigationBarItem(
                icon: Icon(Icons.search, color: Colors.white),
                label: "Pesquisar",
                backgroundColor: Colors.black),
            BottomNavigationBarItem(
                icon: Icon(Icons.library_music, color: Colors.white),
                label: "Biblioteca",
                backgroundColor: Colors.black),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle, color: Colors.white),
                label: "Conta",
                backgroundColor: Colors.black)
          ],
          elevation: 50,
          currentIndex: _selectedScreen,
          selectedItemColor: Colors.white,
          onTap: _onScreenTapped,
          showUnselectedLabels: true),
    );
  }
}
