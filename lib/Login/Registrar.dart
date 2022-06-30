import 'package:flutter/material.dart';
import 'package:home_page/Banco%20de%20Dados/data_base_projects.dart';
import 'package:home_page/Banco%20de%20Dados/registrerUsers.dart';
import 'package:home_page/custom/custom_elevated_button.dart';
import 'package:home_page/custom/custom_text_field.dart';

import 'Registrado.dart';

TextEditingController _emailRegister = TextEditingController();
final GlobalKey<FormState> formKey = GlobalKey<FormState>();

class Registrar extends StatefulWidget {
  const Registrar({Key? key}) : super(key: key);
  @override
  State<Registrar> createState() => _RegistrarState();
}

class _RegistrarState extends State<Registrar> {
  TextEditingController password = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();
  TextEditingController confirmEmail = TextEditingController();
  TextEditingController nameController = TextEditingController();

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  Text(
                    "Cadastre-se".toUpperCase(),
                    style: TextStyle(
                      fontSize: 27,
                      color: Color(0xFFF8670E),
                      letterSpacing: 2,
                    ),
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Informe seu nome completo, email e senha",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  CustomTextField(
                    obscure: false,
                    title: "Nome completo",
                    message: "Por favor insira um nome!",
                    controller: nameController,
                    onSaved: (String? name) {
                      name = name;
                    },
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  CustomTextField(
                    obscure: false,
                    title: "Email",
                    message: "Por favor insira um email!",
                    controller: _emailRegister,
                    onSaved: (String? email) {
                      email = email;
                    },
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  CustomTextField(
                    maxLength: 8,
                    obscure: true,
                    title: "Senha",
                    message: "Por favor insira sua Senha!",
                    controller: password,
                    onSaved: (String? senha) {
                      senha = senha;
                    },
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  CustomElevatedButton(
                    label: "Registre-se",
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        DataBaseMyControl()
                            .save(RegisterUsers(
                          name: nameController.text,
                          email: _emailRegister.text,
                          password: password.text,
                        ))
                            .then((value) {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Registrado()));
                          nameController.clear();
                          _emailRegister.clear();
                          password.clear();
                        });
                      } else {
                        final snackBar = SnackBar(
                          content: Text(
                            "Por favor preencha corretamente as especificações!",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                          duration: Duration(seconds: 2),
                          backgroundColor: Colors.black,
                        );
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
