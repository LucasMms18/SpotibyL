import 'package:flutter/material.dart';

class checkBox extends StatefulWidget {
  const checkBox({Key? key}) : super(key: key);

  @override
  State<checkBox> createState() => _checkBoxState();
}

class _checkBoxState extends State<checkBox> {
  bool _select = false;
  bool _select2 = false;
  bool _select3 = false;
  bool _select4 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Marque quais você mais escuta:",
          style: TextStyle(
            fontSize: 17,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            CheckboxListTile(
                activeColor: Color(0xff142601),
                side: BorderSide(color: Colors.black),
                title: Text(
                  "Rock:",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  "Do mais pesado ao mais romantico!",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                value: _select,
                onChanged: (bool? valor) {
                  setState(() {
                    _select = valor!;
                  });
                }),
            CheckboxListTile(
                activeColor: Color(0xff142601),
                side: BorderSide(color: Colors.black),
                title: Text("Eletrônica:",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    )),
                subtitle: Text("House Music, Techno, Lounge e muito mais!",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.normal,
                    )),
                value: _select2,
                onChanged: (bool? valor) {
                  setState(() {
                    _select2 = valor!;
                  });
                }),
            CheckboxListTile(
                activeColor: Color(0xff142601),
                side: BorderSide(color: Colors.black),
                title: Text("Sertanejo:",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    )),
                subtitle: Text("Da velha guarda até os dias de hoje!",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.normal,
                    )),
                value: _select3,
                onChanged: (bool? valor) {
                  setState(() {
                    _select3 = valor!;
                  });
                }),
            CheckboxListTile(
                activeColor: Color(0xff142601),
                side: BorderSide(color: Colors.black),
                title: Text("Pagode:",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    )),
                subtitle: Text("Aquele pagodinho diferente!",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.normal,
                    )),
                value: _select4,
                onChanged: (bool? valor) {
                  setState(() {
                    _select4 = valor!;
                  });
                }),
            ElevatedButton(
              child: Text(
                "Salvar",
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onPressed: () {
                Navigator.pop(context);
                print("Rock: " +
                    _select.toString() +
                    "Eletrônica: " +
                    _select2.toString() +
                    "Sertanejo: " +
                    _select3.toString() +
                    "Pagode:" +
                    _select4.toString());
              },
            )
          ],
        ),
      ),
    );
  }
}
