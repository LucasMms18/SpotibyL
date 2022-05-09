import 'package:flutter/material.dart';

class ResgateSenha extends StatefulWidget {
  const ResgateSenha({Key? key}) : super(key: key);

  @override
  State<ResgateSenha> createState() => _ResgateSenhaState();
}

class _ResgateSenhaState extends State<ResgateSenha> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Recuperar senha"),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("imagens/esqueci1.png"))),
              height: 400,
            ),
            TextFormField(
              textAlignVertical: TextAlignVertical.center,
              textAlign: TextAlign.center,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  floatingLabelAlignment: FloatingLabelAlignment.center,
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  labelStyle: TextStyle(fontSize: 20, color: Colors.black)),
            ),
          ],
        ),
      ),
    );
  }
}
