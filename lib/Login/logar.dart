// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:home_page/Banco%20de%20Dados/data_base_projects.dart';
import 'package:home_page/custom/custom_elevated_button.dart';
import 'package:home_page/custom/custom_text_field.dart';

String logo = "imagens/logo.png";

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _email = TextEditingController(text: "teste@gmail.com");
  TextEditingController _password = TextEditingController(text: "teste123");

  bool hidePassword = true;
  String? passwordVisibility;
  bool isChecked = true;

  void _toggle() {
    setState(() => hidePassword = !hidePassword);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  child: Image.asset(
                    logo,
                    color: Color(0xFFF8670E),
                    width: 250,
                    height: 150,
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                CustomTextField(
                    title: "E-mail",
                    controller: _email,
                    obscure: false,
                    icon: (Icons.email)),
                SizedBox(
                  height: 15,
                ),
                CustomTextField(
                  title: "Senha",
                  controller: _password,
                  icon: (Icons.lock),
                  onSaved: (value) => passwordVisibility = value,
                  obscure: hidePassword,
                  suffixIcon: IconButton(
                    onPressed: _toggle,
                    icon: Icon(
                      hidePassword ? Icons.visibility_off : Icons.visibility,
                      color: hidePassword ? Color(0xFFF8670E) : Colors.grey,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Checkbox(
                      splashRadius: 0,
                      visualDensity: VisualDensity.comfortable,
                      value: isChecked,
                      onChanged: (value) {},
                    ),
                    GestureDetector(
                      child: Text(
                        "Salvar a senha?",
                        style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                      ),
                    ),
                    Flexible(
                      child: ListTile(
                        title: Text(
                          "Esqueceu sua senha?",
                          textAlign: TextAlign.end,
                          style:
                              TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                        ),
                        onTap: () {
                          Navigator.of(context).pushNamed("/RecuperarSenha");
                        },
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                CustomElevatedButton(
                  label: "Entrar",
                  onPressed: () {
                    _login(context);
                  },
                ),
                ListTile(
                  title: Text(
                    "Não possui conta?",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                  subtitle: Text(
                    "Cadastre-se",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w900,
                      color: Color(0xFFF8670E),
                    ),
                  ),
                  onTap: () {
                    Navigator.of(context).pushNamed("/Registrar");
                  },
                ),
                SizedBox(
                  height: 30,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  _login(BuildContext context) {
    DataBaseMyControl().searchAll(_email.text, _password.text).then((value) {
      print(value);
      if (value.isNotEmpty) {
        Navigator.of(context)
            .pushNamedAndRemoveUntil("/BottomNavigation", (route) => false);
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
