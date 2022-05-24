import 'package:flutter/material.dart';

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
        title: Text(
          "Esqueci minha senha",
          style: TextStyle(fontSize: 24),
        ),
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
          child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          TextFormField(
            style: TextStyle(color: Colors.white, fontSize: 21),
            textAlign: TextAlign.center,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
                fillColor: Colors.transparent,
                filled: true,
                floatingLabelAlignment: FloatingLabelAlignment.center,
                floatingLabelBehavior: FloatingLabelBehavior.always,
                label: Text("Informe seu Email",
                    style: TextStyle(fontSize: 18, color: Colors.white))),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            child: Text(
              "Confirmar:",
              style: TextStyle(fontSize: 23, color: Colors.black),
            ),
            style: ElevatedButton.styleFrom(
                primary: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20))),
            onPressed: () {
              final snackBar = SnackBar(
                  backgroundColor: Colors.white,
                  duration: Duration(seconds: 3),
                  content: Text(
                    "Requisição para nova senha enviada com sucesso, confira sua caixa de email!",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ));
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
              Navigator.of(context).pushNamedAndRemoveUntil(
                  "/HomePage", (Route<dynamic> route) => false);
            },
          )
        ],
      )),
    );
  }
}
