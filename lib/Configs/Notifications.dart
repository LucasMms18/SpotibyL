import 'package:flutter/material.dart';

class Notifications extends StatefulWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  bool _userEntry2 = false;
  double value = 50;
  String label = "Volume das notificações";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black87),
        title: Text(
          "Notificações",
          style: TextStyle(
              color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 22),
        ),
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
      ),
      backgroundColor: Colors.grey.shade200,
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
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
                  print("Habilitar notificações: " + _userEntry2.toString());
                })
          ],
        ),
      ),
    );
  }
}
