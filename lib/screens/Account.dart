import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

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
          title: Text("Informações da conta",
              style: TextStyle(
                  color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 22)),
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent),
      backgroundColor: Colors.grey.shade200,
      body: SingleChildScrollView(
        padding: EdgeInsets.all(15),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: Colors.transparent),
                  accountName: Text(

                      ///Todo usar controller para mostrar usuario
                      "Ragnar Lothbrok",
                      style: TextStyle(color: Colors.black87, fontSize: 16)),
                  accountEmail: Text("ragnar.lothbrok@sparkag.com.br",
                      style: TextStyle(color: Colors.black87, fontSize: 15)),
                  currentAccountPicture: CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(
                          "https://tm.ibxk.com.br/2021/10/20/20104736219113.jpg"),
                      backgroundColor: Colors.transparent),
                  currentAccountPictureSize: Size.square(82),
                  otherAccountsPictures: [
                    GestureDetector(
                        child: Icon(Icons.facebook, color: Colors.black),
                        onTap: () =>
                            launchUrl(Uri.parse("https://www.facebook.com"))),
                    GestureDetector(
                        child: Icon(Icons.alternate_email, color: Colors.black),
                        onTap: () => launchUrl(Uri.parse("https://gmail.com/"))),
                    GestureDetector(
                        child: Icon(Icons.apple, color: Colors.black),
                        onTap: () => launchUrl(Uri.parse("https://apple.com/")))
                  ]),
              SizedBox(height: 15),
              ListTile(
                  iconColor: Colors.black87,
                  leading: Icon(Icons.email_outlined),
                  title: Text("E-mail", style: TextStyle(fontSize: 18)),
                  onTap: () => Navigator.of(context).pushNamed("/Email")),
              Divider(),
              ListTile(
                  iconColor: Colors.black87,
                  leading: Icon(Icons.phone),
                  title: Text("Número de celular", style: TextStyle(fontSize: 18)),
                  onTap: () => Navigator.of(context).pushNamed("/PhoneNumber")),
              Divider(),
              ListTile(
                  iconColor: Colors.black,
                  leading: Icon(Icons.settings),
                  title: Text("Configurações", style: TextStyle(fontSize: 18)),
                  onTap: () => Navigator.of(context).pushNamed("/Settings")),
              Divider(),
              ListTile(
                iconColor: Colors.black,
                leading: Icon(Icons.login_rounded),
                title: Text("Sair da conta", style: TextStyle(fontSize: 18)),
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                              title: Text("Fazer logout?"),
                              content: Text("Você quer mesmo se deslogar?"),
                              actions: [
                                TextButton(
                                    onPressed: () => Navigator.pop(context),
                                    child: Text("Cancelar")),
                                TextButton(
                                    onPressed: () => Navigator.of(context)
                                        .pushNamedAndRemoveUntil(
                                            "/HomePage", (route) => false),
                                    child: Text("Confirmar"))
                              ]));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
