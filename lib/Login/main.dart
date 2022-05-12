import 'package:flutter/material.dart';
import 'package:home_page/Banco%20de%20Dados/dataBase.dart';
import 'package:home_page/Drawer%20Items/Account.dart';
import 'package:home_page/Drawer%20Items/Help.dart';
import 'package:home_page/Drawer%20Items/ListasSalvas.dart';
import 'package:home_page/Drawer%20Items/Profile.dart';
import 'package:home_page/Drawer%20Items/downs.dart';
import 'package:home_page/Home/Favoritos.dart';
import 'package:home_page/Home/search.dart';
import 'package:home_page/Login/Registrado.dart' as r;
import '../Configs/DataUsage.dart';
import '../Configs/Notifications.dart';
import '../Configs/Privacity.dart';
import '../Drawer Items/Settings.dart';
import '../Home/ButtonsPage.dart';
import 'RecuperarSenha.dart';

import 'Registrar.dart';

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
      "/Notifications": (context) => Notifications(),
      "/Privacity": (context) => Privacity(),
      "/DataUsage": (context) => DataUsage(),
      "/Settings": (context) => Settings(),
      "/Profile": (context) => Profile(),
      "/Search": (context) => Search(),
      "/HomePage": (context) => HomePage(),
      "/buttonsPage": (context) => buttonsPage(),
      "/downloads": (context) => downloads(),
      "/Account": (context) => Account(),
      "/notification": (context) => notification(),
      "/help": (context) => help(),
      "/checkBox": (context) => checkBox(),
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

String logo = "imagens/logo.png";
bool _status = true;
String urlMain =
    "https://s-media-cache-ak0.pinimg.com/564x/b6/07/41/b60741b4bbf181d15bf26b05c55ab60d.jpg";
TextEditingController _email = TextEditingController();
TextEditingController _password = TextEditingController();

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(urlMain), fit: BoxFit.cover)),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  AnimatedContainer(
                    duration: Duration(seconds: 3),
                    width: 300,
                    height: 300,
                    child: Image.asset(logo, fit: BoxFit.contain),
                    curve: Curves.bounceOut,
                  ),
                  TextField(
                    textInputAction: TextInputAction.next,
                    style: TextStyle(color: Colors.white, fontSize: 20),
                    controller: _email,
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        fillColor: Colors.black.withAlpha(50),
                        filled: true,
                        floatingLabelAlignment: FloatingLabelAlignment.center,
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        labelText: "E-mail",
                        labelStyle: TextStyle(
                          fontSize: 27,
                          color: Colors.white.withAlpha(700),
                        )),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                      textInputAction: TextInputAction.done,
                      style: TextStyle(color: Colors.white, fontSize: 20),
                      maxLength: 8,
                      controller: _password,
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          fillColor: Colors.black.withAlpha(50),
                          filled: true,
                          floatingLabelAlignment: FloatingLabelAlignment.center,
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          labelText: "Senha",
                          labelStyle: TextStyle(
                            fontSize: 27,
                            color: Colors.white.withAlpha(700),
                          )),
                      obscureText: true),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.black,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                    child: Text(
                      "Login",
                      style: TextStyle(fontSize: 18),
                    ),
                    onPressed: () {
                      _login(context);
                    },
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.black,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                    child: Text(
                      "Registrar-se",
                      style: TextStyle(fontSize: 18),
                    ),
                    onPressed: () {
                      Navigator.of(context).pushNamed("/Registrar");
                    },
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.black,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                    child: Text(
                      "Esqueci minha senha",
                      style: TextStyle(fontSize: 18),
                    ),
                    onPressed: () {
                      Navigator.of(context).pushNamed("/RecuperarSenha");
                    },
                  ),
                  SizedBox(
                    height: 30,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  _login(BuildContext context) {
    BaseData().searchAll(_email.text, _password.text).then((value) {
      print(value);
      if (value.isNotEmpty) {
        Navigator.of(context)
            .pushNamedAndRemoveUntil("/buttonsPage", (route) => false);
        _email.clear();
        _password.clear();
      } else {
        final snackBar = SnackBar(
          content: Text(
            "Por favor insira o email e senha corretos!",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
          duration: Duration(seconds: 1),
          backgroundColor: Colors.black,
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      }
    });
  }
}
