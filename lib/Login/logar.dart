// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import '../Banco de Dados/dataBase.dart';

String logo = "imagens/logo.png";

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  String urlMain =
      "https://s-media-cache-ak0.pinimg.com/564x/b6/07/41/b60741b4bbf181d15bf26b05c55ab60d.jpg";
  TextEditingController _email = TextEditingController(text: "teste@gmail.com");
  TextEditingController _password = TextEditingController(text: "teste123");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.bottomCenter,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  AnimatedContainer(
                      duration: Duration(seconds: 3),
                      width: 300,
                      height: 300,
                      child: Image.asset(logo,
                          color: Colors.black, fit: BoxFit.contain),
                      curve: Curves.bounceOut),
                  TextField(
                      textInputAction: TextInputAction.next,
                      style: TextStyle(color: Colors.black, fontSize: 20),
                      controller: _email,
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          fillColor: Colors.black.withAlpha(50),
                          filled: false,
                          floatingLabelAlignment: FloatingLabelAlignment.center,
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          labelText: "E-mail",
                          labelStyle: TextStyle(
                              fontSize: 27, color: Colors.black.withAlpha(700)))),
                  SizedBox(height: 10),
                  TextField(
                      textInputAction: TextInputAction.done,
                      style: TextStyle(color: Colors.black, fontSize: 20),
                      controller: _password,
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          fillColor: Colors.black.withAlpha(50),
                          filled: false,
                          floatingLabelAlignment: FloatingLabelAlignment.center,
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          labelText: "Senha",
                          labelStyle: TextStyle(
                              fontSize: 27, color: Colors.black.withAlpha(700))),
                      obscureText: true),
                  ListTile(
                      title: Text("Esqueceu sua senha?",
                          textAlign: TextAlign.end,
                          style:
                              TextStyle(fontSize: 14, fontWeight: FontWeight.w700)),
                      onTap: () {
                        Navigator.of(context).pushNamed("/RecuperarSenha");
                      }),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15))),
                      child: Text("Login", style: TextStyle(fontSize: 20)),
                      onPressed: () {
                        _login(context);
                      }),
                  ListTile(
                      title: Text("Não possui conta?",
                          textAlign: TextAlign.center,
                          style:
                              TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
                      subtitle: Text("Cadastre-se",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.red)),
                      onTap: () {
                        Navigator.of(context).pushNamed("/Registrar");
                      }),
                  SizedBox(height: 30)
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
            .pushNamedAndRemoveUntil("/ButtonsPage", (route) => false);
        _email.clear();
        _password.clear();
      } else {
        final snackBar = SnackBar(
            content: Text("Por favor insira o email e senha corretos!",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 16)),
            duration: Duration(seconds: 1),
            backgroundColor: Colors.black);
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      }
    });
  }
}
