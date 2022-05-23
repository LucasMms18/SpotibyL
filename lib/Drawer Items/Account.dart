import 'package:flutter/material.dart';

class Account extends StatefulWidget {
  const Account({Key? key}) : super(key: key);

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black87),
        title: Text(
          "Informações da conta",
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
            children: [
              UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.transparent),
                accountName: Text(
                  "Ragnar Lothbrok",
                  style: TextStyle(color: Colors.black87, fontSize: 16),
                ),
                accountEmail: Text(
                  "ragnar.lothbrok@sparkag.com.br",
                  style: TextStyle(color: Colors.black87, fontSize: 15),
                ),
                currentAccountPicture: CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(
                      "https://tm.ibxk.com.br/2021/10/20/20104736219113.jpg"),
                  backgroundColor: Colors.transparent,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              ListTile(
                iconColor: Colors.black87,
                leading: Icon(Icons.email_outlined),
                title: Text(
                  "E-mail",
                  style: TextStyle(fontSize: 18),
                ),
                onTap: () => Navigator.of(context).pushNamed("/BottomNavigationBae"),
              ),
              ListTile(
                iconColor: Colors.black87,
                leading: Icon(Icons.phone),
                title: Text(
                  "Número de celular",
                  style: TextStyle(fontSize: 18),
                ),
                onTap: () => Navigator.of(context).pushNamed("/PhoneNumber"),
              ),
              ListTile(
                iconColor: Colors.black87,
                leading: Icon(Icons.date_range),
                title: Text(
                  "Data de nascimento",
                  style: TextStyle(fontSize: 18),
                ),
                onTap: () => Navigator.of(context).pushNamed("/Email"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
