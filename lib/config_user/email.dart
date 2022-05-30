import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Email extends StatefulWidget {
  const Email({Key? key}) : super(key: key);

  @override
  State<Email> createState() => _EmailState();
}

class _EmailState extends State<Email> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 30, horizontal: 1),
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ListTile(
                  title: Text("Trocar endereço de E-mail",
                      style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center),
                  subtitle: Text("Insira seu E-mail:",
                      style: TextStyle(fontSize: 17), textAlign: TextAlign.center)),
              Icon(Icons.arrow_downward),
              TextField(
                textAlign: TextAlign.center,
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.done,
                style: TextStyle(color: Colors.black, fontSize: 18),
                decoration: InputDecoration(
                    floatingLabelAlignment: FloatingLabelAlignment.center,
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    labelText: "Atual E-mail"),
              ),
              TextField(
                textAlign: TextAlign.center,
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.done,
                style: TextStyle(color: Colors.black, fontSize: 18),
                decoration: InputDecoration(
                    floatingLabelAlignment: FloatingLabelAlignment.center,
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    labelText: "Novo E-mail"),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                            title: Text("Solicitação enviada com sucesso!",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center),
                            content: Text(
                                "Verifique sua caixa de e-mail para autorizar a troca."),
                          ));
                },
                child: Text("Trocar de E-mail", style: TextStyle(fontSize: 20)),
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15))),
              ),
              Divider(
                endIndent: 10,
                indent: 10,
              ),
              ListTile(
                title: Text("Redirecionar para o Gmail:"),
                trailing: Icon(Icons.email, color: Colors.black),
                onTap: () => launchUrl(Uri.parse("https://gmail.com")),
              )
            ],
          ),
        ),
      ),
    );
  }
}
