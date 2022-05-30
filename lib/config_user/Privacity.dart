import 'package:flutter/material.dart';

class Privacity extends StatefulWidget {
  const Privacity({Key? key}) : super(key: key);

  @override
  State<Privacity> createState() => _PrivacityState();
}

class _PrivacityState extends State<Privacity> {
  bool _userEntry4 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Privacidade",
              style: TextStyle(
                  color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 22)),
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent),
      backgroundColor: Colors.grey.shade200,
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(children: [
          SwitchListTile(
              activeColor: Color(0xff142601),
              title: Text("Modo Privado",
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                      fontWeight: FontWeight.bold)),
              value: _userEntry4,
              onChanged: (bool? valor) {
                setState(() {
                  _userEntry4 = valor!;
                });
              }),
        ]),
      ),
    );
  }
}
