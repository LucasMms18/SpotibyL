import 'package:flutter/material.dart';
import 'package:home_page/screens/Account.dart';
import 'package:home_page/screens/playlist.dart';
import 'package:home_page/screens/Favoritos.dart';
import 'package:home_page/screens/search.dart';
import 'package:home_page/Login/Registrado.dart' as r;
import 'package:home_page/config_user/email.dart';
import 'package:home_page/config_user/phoneNumber.dart';
import 'config_user/DataUsage.dart';
import 'config_user/Notifications.dart';
import 'config_user/Privacity.dart';
import 'config_user/Profile.dart';
import 'function/bottom_navigation_bar.dart';
import 'Login/RecuperarSenha.dart';
import 'Login/Registrar.dart';
import 'Login/logar.dart';

void main() {
  MaterialColor buildMaterialColor(Color color) {
    List strengths = <double>[.05];
    Map<int, Color> swatch = {};
    final int r = color.red, g = color.green, b = color.blue;

    for (int i = 1; i < 10; i++) {
      strengths.add(0.1 * i);
    }
    strengths.forEach((strength) {
      final double ds = 0.5 - strength;
      swatch[(strength * 1000).round()] = Color.fromRGBO(
        r + ((ds < 0 ? r : (255 - r)) * ds).round(),
        g + ((ds < 0 ? g : (255 - g)) * ds).round(),
        b + ((ds < 0 ? b : (255 - b)) * ds).round(),
        1,
      );
    });
    return MaterialColor(color.value, swatch);
  }

  runApp(MaterialApp(
    initialRoute: "/HomePage",
    routes: {
      "/PhoneNumber": (context) => PhoneNumber(),
      "/Email": (context) => Email(),
      "/Notifications": (context) => Notifications(),
      "/Privacity": (context) => Privacity(),
      "/DataUsage": (context) => DataUsage(),
      "/Profile": (context) => Profile(),
      "/Search": (context) => Search(),
      "/HomePage": (context) => HomePage(),
      "/ButtonsPage": (context) => ButtonsPage(),
      "/downloads": (context) => Playlist(),
      "/Account": (context) => Account(),
      "/checkBox": (context) => Favorites(),
      "/RecuperarSenha": (context) => RecuperarSenha(),
      "/Registrar": (context) => Registrar(),
      "/Registrado": (context) => r.Registrado(),
    },
    theme: ThemeData(
      colorScheme: ColorScheme.fromSwatch(
        primarySwatch: buildMaterialColor(Color(0xff242526)),
        accentColor: Colors.grey.shade500,
      ),
    ),
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}