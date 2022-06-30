import 'package:flutter/material.dart';

class radioButton extends StatefulWidget {
  const radioButton({Key? key}) : super(key: key);

  @override
  State<radioButton> createState() => _radioButtonState();
}

class _radioButtonState extends State<radioButton> {
  String? _choseUser;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("RadioButton"),
      ),
      body: Container(
        child: Row(
          children: <Widget>[
            Text("Masculino"),
            Radio(
                value: "M",
                groupValue: _choseUser,
                onChanged: (String? chose) {
                  setState(() {
                    _choseUser = chose;
                  });
                  print("Result: " + chose!);
                }),
            Text("Feminino"),
            Radio(
                value: "F",
                groupValue: _choseUser,
                onChanged: (String? chose) {
                  setState(() {
                    _choseUser = chose;
                  });
                  print("Result: " + chose!);
                }),
          ],
        ),
      ),
    );
  }
}

buildProgressBar() {
  return Column(
    children: [
      Container(
          padding: EdgeInsets.only(left: 10, right: 10, top: 35),
          child: LinearProgressIndicator(color: Colors.black, value: 0)),
      Row(
        children: [
          Text('0:00', style: TextStyle(color: Colors.black)),
          Expanded(child: Container()),
          Text('3:00', style: TextStyle(color: Colors.black))
        ],
      )
    ],
  );
}
