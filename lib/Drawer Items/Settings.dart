import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _AccountState();
}

class _AccountState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black87),
        title: Text(
          "Configurações",
          style: TextStyle(
              color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 22),
        ),
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
      ),
      backgroundColor: Colors.grey.shade200,
      body: SingleChildScrollView(
        padding: EdgeInsets.all(15),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    minimumSize: const Size.fromHeight(40)),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Uso de dados",
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                onPressed: () => Navigator.of(context).pushNamed("/DataUsage"),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    minimumSize: const Size.fromHeight(40)),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Privacidade",
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                onPressed: () => Navigator.of(context).pushNamed("/Privacity"),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    minimumSize: const Size.fromHeight(40)),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Notificações",
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                onPressed: () => Navigator.of(context).pushNamed("/Notifications"),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    minimumSize: const Size.fromHeight(40)),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Download e armazenamento",
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                onPressed: () => Navigator.of(context).pushNamed("/Profile"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
