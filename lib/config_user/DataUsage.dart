import 'package:flutter/material.dart';

class DataUsage extends StatefulWidget {
  const DataUsage({Key? key}) : super(key: key);

  @override
  State<DataUsage> createState() => _DataUsageState();
}

class _DataUsageState extends State<DataUsage> {
  bool _userEntry = false;
  bool _userEntry2 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black87),
        title: Text(
          "Uso de dados",
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
                  "Download apenas com Wi-fi",
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
          ],
        ),
      ),
    );
  }
}
