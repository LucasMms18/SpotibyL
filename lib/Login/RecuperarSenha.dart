import 'package:flutter/material.dart';
import 'package:home_page/custom/custom_elevated_button.dart';
import 'package:home_page/custom/custom_text_field.dart';

class RecuperarSenha extends StatefulWidget {
  const RecuperarSenha({Key? key}) : super(key: key);

  @override
  State<RecuperarSenha> createState() => _RecuperarSenhaState();
}

class _RecuperarSenhaState extends State<RecuperarSenha> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Text(
            "Esqueceu a senha",
            style:
                TextStyle(fontSize: 25, letterSpacing: 1, color: Color(0xFFF8670E)),
          ),
          SizedBox(
            height: 25,
          ),
          CustomTextField(
            title: "Informe seu email",
            obscure: false,
          ),
          SizedBox(height: 15),
          CustomElevatedButton(
            label: "Confirmar",
            onPressed: () {
              final snackBar = SnackBar(
                backgroundColor: Colors.black,
                duration: Duration(seconds: 3),
                content: Text(
                  "Requisição para nova senha enviada com sucesso, confira sua caixa de email!",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
              Navigator.of(context).pushNamedAndRemoveUntil(
                  "/LoginPage", (Route<dynamic> route) => false);
            },
          )
        ],
      )),
    );
  }
}
