import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:home_page/Banco%20de%20Dados/data_base_projects.dart';
import 'package:home_page/Banco%20de%20Dados/register_projects.dart';
import 'package:home_page/Login/Registrar.dart';
import 'package:home_page/custom/custom_card_projects.dart';
import 'package:home_page/custom/custom_divider.dart';
import 'package:home_page/custom/custom_drawer.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController newProject = TextEditingController();
  TextEditingController projectPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          "imagens/logo.png",
          color: Color(0xFFF8670E),
          width: 120,
          height: 55,
        ),
        leading: IconButton(
          icon: Icon(MdiIcons.exitToApp),
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) => AlertDialog(
                        contentPadding: EdgeInsets.all(15),
                        title: Text(
                          "Fazer logout?",
                          style:
                              TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                          textAlign: TextAlign.center,
                        ),
                        content: Text(
                          "Você quer mesmo se deslogar?",
                          textAlign: TextAlign.center,
                          style:
                              TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                        ),
                        actions: [
                          Row(
                            children: [
                              TextButton(
                                  onPressed: () => Navigator.pop(context),
                                  child: Text("Cancelar")),
                              TextButton(
                                  onPressed: () => Navigator.of(context)
                                      .pushNamedAndRemoveUntil(
                                          "/LoginPage", (route) => false),
                                  child: Text("Confirmar"))
                            ],
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                          )
                        ]));
          },
        ),
        actions: [
          IconButton(
            onPressed: () => Navigator.of(context).pushNamed("/Preferences"),
            icon: Icon(MdiIcons.cog),
          ),
        ],
      ),
      drawer: CustomDrawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: Column(
            children: [
              Divider(
                color: Colors.grey[400],
                endIndent: 0,
                indent: 0,
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                  width: double.maxFinite,
                  child: Text(
                    'Resumo de relatórios',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                  )),
              SizedBox(
                height: 3,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      '0',
                      style: TextStyle(fontSize: 25, color: Colors.blue),
                    ),
                    Text(
                      '0',
                      style: TextStyle(fontSize: 25, color: Colors.blueAccent),
                    ),
                    Text(
                      '0',
                      style: TextStyle(fontSize: 25, color: Colors.green),
                    ),
                    Text(
                      '0',
                      style: TextStyle(fontSize: 25, color: Colors.red),
                    )
                  ],
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'Abertos',
                      style: TextStyle(fontSize: 10),
                    ),
                    Text(
                      'Aguardando aprovação',
                      style: TextStyle(fontSize: 10),
                    ),
                    Text(
                      'Aprovados',
                      style: TextStyle(fontSize: 10),
                    ),
                    Text(
                      'Rejeitados',
                      style: TextStyle(fontSize: 10),
                    )
                  ],
                ),
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 5,
                    ),
                    CustomDivider(),
                    SizedBox(
                      height: 15,
                    ),
                    ListTile(
                      title: Text(
                        "Projetos",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 1.4),
                      ),
                      subtitle: Text(
                        "Consulte seus projetos",
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                      ),
                    ),
                    TextFormField(
                      textAlign: TextAlign.right,
                      keyboardType: TextInputType.multiline,
                      decoration: InputDecoration(
                        hintText: "Pesquisar: Projeto",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide.none),
                      ),
                      maxLines: 5,
                      minLines: 1,
                    ),
                    CustomCardProjects(
                      label: "AutoPel",
                      onTap: () {},
                    ),
                    CustomCardProjects(
                      label: "AlphaQuimica",
                      onTap: () {},
                    ),
                    CustomCardProjects(
                      label: "TopShop",
                      onTap: () {},
                    ),
                    CustomCardProjects(
                      label: "Hennings",
                      onTap: () {},
                    ),
                    CustomCardProjects(
                      label: "Incerti",
                      onTap: () {},
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: SpeedDial(
        icon: Icons.add,
        spaceBetweenChildren: 10,
        animatedIconTheme: const IconThemeData(size: 22),
        backgroundColor: Theme.of(context).colorScheme.primary,
        visible: true,
        curve: Curves.bounceIn,
        children: [
          SpeedDialChild(
            label: "Nova despesa",
            child: const Icon(MdiIcons.clipboardMultipleOutline),
            backgroundColor: Colors.deepOrange[400],
            onTap: () => Navigator.of(context).popAndPushNamed("/Expenses"),
          ),
          SpeedDialChild(
            label: "Novo projeto",
            child: const Icon(MdiIcons.textBoxMultipleOutline),
            backgroundColor: Colors.deepOrange[400],
            onTap: () => showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text(
                      "Novo Projeto",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 1),
                    ),
                    actionsPadding: EdgeInsets.all(5),
                    actions: [
                      Form(
                        child: Column(
                          children: [
                            TextFormField(
                              decoration:
                                  InputDecoration(hintText: "Nome do projeto"),
                              controller: newProject,
                            ),
                            TextFormField(
                              decoration: InputDecoration(hintText: "Senha"),
                              controller: projectPassword,
                              obscureText: true,
                            ),
                          ],
                        ),
                        key: formKey,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          ElevatedButton(
                            onPressed: () => Navigator.of(context).pop(),
                            child: Text("Cancelar"),
                            style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 1)),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              if (formKey.currentState!.validate()) {
                                DataBaseMyControl()
                                    .saveProjects(
                                      RegisterProjects(
                                        projectName: newProject.text,
                                        projectPassword: projectPassword.text,
                                      ),
                                    )
                                    .then((value) =>
                                        Navigator.of(context).pop("/Projects"));
                                newProject.clear();
                                projectPassword.clear();
                              }
                            },
                            child: Text("Iniciar"),
                            style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 1)),
                          )
                        ],
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                      )
                    ],
                  );
                }),
          )
        ],
      ),
    );
  }
}
