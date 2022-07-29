import 'package:flutter/material.dart';
import 'package:home_page/Login/Registrado.dart' as r;
import 'package:home_page/screens/category_expense.dart';
import 'package:home_page/screens/expenses.dart';
import 'package:home_page/screens/home.dart';
import 'package:home_page/screens/preferences.dart';
import 'package:home_page/screens/projects.dart';
import 'package:home_page/screens/reports.dart';
import 'package:home_page/screens/reports_details.dart';
import 'package:home_page/screens/routes.dart';
import 'package:home_page/screens/type_of_coin.dart';
import 'package:home_page/themes/theme_default.dart';

import 'Login/RecuperarSenha.dart';
import 'Login/Registrar.dart';
import 'Login/logar.dart';
import 'function/bottom_navigation_bar.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MaterialApp(
    routes: {
      "/ReportsDetails": (context) => ReportsDetails(),
      "/Projects": (context) => Projects(),
      "/TypeOfCoin": (context) => TypeOfCoin(),
      "/CategoryExpense": (context) => CategoryExpense(),
      "/Home": (context) => Home(),
      "/Expenses": (context) => Expenses(),
      "/LoginPage": (context) => LoginPage(),
      "/BottomNavigation": (context) => BottomNavigation(),
      "/Routes": (context) => Routes(),
      "/Preferences": (context) => Preferences(),
      "/Reports": (context) => Reports(),
      "/RecuperarSenha": (context) => RecuperarSenha(),
      "/Registrar": (context) => Registrar(),
      "/Registrado": (context) => r.Registrado(),
    },
    debugShowCheckedModeBanner: false,
    home: LoginPage(),
    theme: defaultThemeData(),
  ));
}
