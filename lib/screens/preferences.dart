import 'package:flutter/material.dart';
import 'package:home_page/custom/custom_list_tile.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class Preferences extends StatefulWidget {
  const Preferences({Key? key}) : super(key: key);

  @override
  State<Preferences> createState() => _PreferencesState();
}

class _PreferencesState extends State<Preferences> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            "Informações da conta",
            style: TextStyle(fontSize: 20),
          ),
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
                  accountName: Text("Lucas Mathias da Silva",
                      style: TextStyle(color: Colors.black87, fontSize: 16)),
                  accountEmail: Text("lucas.silva@sparkag.com.br",
                      style: TextStyle(color: Colors.black87, fontSize: 15)),
                  currentAccountPicture: CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage("imagens/Music.png"),
                      backgroundColor: Colors.transparent),
                  currentAccountPictureSize: Size.square(82),
                  otherAccountsPictures: [
                    GestureDetector(
                        child: Icon(MdiIcons.facebook, color: Colors.blueAccent),
                        onTap: () => launchUrl(
                            Uri.parse("https://www.facebook.com/SparkAG"))),
                    GestureDetector(
                        child: Icon(
                          MdiIcons.instagram,
                        ),
                        onTap: () => launchUrl(Uri.parse(
                            "https://www.instagram.com/spark.ag/?hl=pt-br"))),
                    GestureDetector(
                        child: Image.asset(
                          "imagens/logo.png",
                          color: Theme.of(context).colorScheme.primary,
                        ),
                        onTap: () =>
                            launchUrl(Uri.parse("https://www.sparkag.com.br/"))),
                  ]),
              SizedBox(height: 15),
              Text("Informações gerais".toUpperCase()),
              CustomListTile(
                label: "Moeda padrão",
                onTap: () {},
              ),
              CustomListTile(
                label: "Acesso ao Album",
                onTap: () {},
              ),
              CustomListTile(
                label: "Idioma",
                onTap: () {},
              ),
              CustomListTile(
                label: "Digitalização inteligente",
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
