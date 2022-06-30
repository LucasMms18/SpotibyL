import 'package:flutter/material.dart';
import 'package:home_page/custom/custom_drawer.dart';
import 'package:home_page/screens/expenses.dart';
import 'package:home_page/screens/home.dart';
import 'package:home_page/screens/reports.dart';
import 'package:home_page/screens/routes.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _HomeButtonsPage();
}

class _HomeButtonsPage extends State<BottomNavigation> {
  int _selectedScreen = 0;
  static const List<Widget> _widgetOptions = [
    Home(),
    Expenses(),
    Reports(),
    Routes()
  ];

  void _onScreenTapped(int index) {
    setState(() {
      _selectedScreen = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      body: Center(child: _widgetOptions.elementAt(_selectedScreen)),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Theme.of(context).colorScheme.primary,
        unselectedItemColor: Colors.grey[700],
        iconSize: 22,
        enableFeedback: true,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Início",
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: Icon(Icons.monetization_on),
              label: "Despesas",
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: Icon(Icons.history),
              label: "Relatórios",
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: Icon(Icons.alt_route),
              label: "Rotas",
              backgroundColor: Colors.white)
        ],
        elevation: 10,
        currentIndex: _selectedScreen,
        onTap: _onScreenTapped,
        showUnselectedLabels: true,
      ),
    );
  }
}
