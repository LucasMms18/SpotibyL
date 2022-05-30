import 'package:flutter/material.dart';

class Registrado extends StatefulWidget {
  const Registrado({Key? key}) : super(key: key);

  @override
  State<Registrado> createState() => _RegistradoState();
}

String image = "https://abirochas.com.br/wp-content/uploads/2020/07/img-ab.png";

class _RegistradoState extends State<Registrado> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Bem Vindo",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
          centerTitle: true),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(children: <Widget>[
          Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(image), fit: BoxFit.contain)),
              height: 450),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed("/HomePage");
              },
              child: Text("Voltar para Login!"))
        ]),
      ),
    );
  }
}
