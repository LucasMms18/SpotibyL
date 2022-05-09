import 'package:flutter/material.dart';

class switchEntry extends StatefulWidget {
  const switchEntry({Key? key}) : super(key: key);

  @override
  State<switchEntry> createState() => _switchEntryState();
}

class _switchEntryState extends State<switchEntry> {
  bool _userEntry = false;
  bool _userEntry2 = false;
  bool _userEntry3 = false;
  bool _userEntry4 = false;
  bool _userEntry5 = false;
  double value = 50;
  String label = "Volume das Notificações: ";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Configurações avançadas",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
          child: Column(
        children: <Widget>[
          SwitchListTile(
              activeColor: Color(0xff142601),
              title: Text(
                "Economia de dados",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              value: _userEntry,
              onChanged: (bool? valor) {
                setState(() {
                  _userEntry = valor!;
                });
              }),
          SwitchListTile(
              activeColor: Color(0xff142601),
              title: Text(
                "Habilitar notificações",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              value: _userEntry2,
              onChanged: (bool? valor) {
                setState(() {
                  _userEntry2 = valor!;
                });
              }),
          SwitchListTile(
              activeColor: Color(0xff142601),
              title: Text(
                "Assinatura premium",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              value: _userEntry3,
              onChanged: (bool? valor) {
                setState(() {
                  _userEntry3 = valor!;
                });
              }),
          SwitchListTile(
              activeColor: Color(0xff142601),
              title: Text(
                "Modo Privado",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              value: _userEntry4,
              onChanged: (bool? valor) {
                setState(() {
                  _userEntry4 = valor!;
                });
              }),
          SwitchListTile(
              activeColor: Color(0xff142601),
              title: Text(
                "Download apenas com Wi-fi",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              value: _userEntry5,
              onChanged: (bool? valor) {
                setState(() {
                  _userEntry5 = valor!;
                });
              }),
          Padding(padding: EdgeInsets.all(25.0)),
          Slider(
            activeColor: Color(0xff142601),
            label: label,
            divisions: 100,
            value: value,
            min: 0,
            max: 100,
            onChanged: (double newValue) {
              setState(() {
                value = newValue;
                label =
                    "Volume das Notificações: " + newValue.round().toString();
              });
              print("Valor Selecionado: " + value.toString());
            },
          ),
          Padding(padding: EdgeInsets.all(35.0)),
          ElevatedButton(
              style: ButtonStyle(
                  elevation: MaterialStateProperty.all(5),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40.0)),
                  )),
              child: (Text(
                "Salvar",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              )),
              onPressed: () {
                Navigator.pop(context);
                print("Confirmação de duas etapas: " +
                    _userEntry.toString() +
                    " "
                        "Habilitar notificações: " +
                    _userEntry2.toString() +
                    " "
                        "Modo público: " +
                    _userEntry3.toString() +
                    " "
                        "Modo Privado: " +
                    _userEntry4.toString() +
                    " "
                        "Permitir mensagem de pessoas não conhecidas: " +
                    _userEntry5.toString());
              })
        ],
      )),
    );
  }
}
