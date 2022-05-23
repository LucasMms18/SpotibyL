import 'package:flutter/material.dart';
import 'package:home_page/Banco%20de%20Dados/dataBase.dart';
import 'package:home_page/Banco%20de%20Dados/registrerUsers.dart';
import 'Registrado.dart';

class Registrar extends StatefulWidget {
  const Registrar({Key? key}) : super(key: key);

  @override
  State<Registrar> createState() => _RegistrarState();
}

class _RegistrarState extends State<Registrar> {
  bool whateever = false;

  TextEditingController _password = TextEditingController();
  TextEditingController _confirmpassword = TextEditingController();
  TextEditingController _confirmEmail = TextEditingController();
  TextEditingController _emailRegister = TextEditingController();
  TextEditingController _nameController = TextEditingController();
  TextEditingController _birthdayController = TextEditingController();
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  String urlRegistrar =
      "https://4.bp.blogspot.com/-wTSRb4D_YN0/WfnUE54KTxI/AAAAAAAAMxA/hKTWOAce9IIjDWBy41IDiPV9sIuSv3AcACLcBGAs/s1600/papel%2Bde%2Bparede%2Bcelular.jpg";
  String? _name, _email, _birthday;

  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(urlRegistrar), fit: BoxFit.cover)),
          ),
          SingleChildScrollView(
            child: Form(
              key: _formkey,
              child: Column(children: [
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Criar conta:",
                  style: TextStyle(
                      fontSize: 27, color: Colors.white, letterSpacing: 2),
                ),
                SizedBox(
                  height: 25,
                ),
                TextFormField(
                  style: TextStyle(color: Colors.white, fontSize: 18),
                  textInputAction: TextInputAction.next,
                  controller: _nameController,
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      fillColor: Colors.black.withAlpha(100),
                      filled: true,
                      floatingLabelAlignment: FloatingLabelAlignment.center,
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      labelText: "Nome:",
                      labelStyle: TextStyle(
                          letterSpacing: 2,
                          fontSize: 24,
                          color: Colors.white.withAlpha(210))),
                  validator: (String? value) {
                    if (value!.isEmpty) {
                      return ("Por favor insira um nome!");
                    }
                    return null;
                  },
                  onSaved: (String? name) {
                    _name = name;
                  },
                ),
                TextFormField(
                  style: TextStyle(color: Colors.white, fontSize: 18),
                  textInputAction: TextInputAction.next,
                  controller: _emailRegister,
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      fillColor: Colors.black.withAlpha(100),
                      filled: true,
                      floatingLabelAlignment: FloatingLabelAlignment.center,
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      labelText: "Email:",
                      labelStyle: TextStyle(
                          letterSpacing: 2,
                          fontSize: 24,
                          color: Colors.white.withAlpha(210))),
                  validator: (String? value) {
                    if (value!.isEmpty) {
                      return ("Por favor insira um Email!");
                    }
                    return null;
                  },
                  onSaved: (String? email) {
                    _email = email;
                  },
                ),
                TextFormField(
                  style: TextStyle(color: Colors.white, fontSize: 18),
                  textInputAction: TextInputAction.next,
                  controller: _confirmEmail,
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      fillColor: Colors.black.withAlpha(100),
                      filled: true,
                      floatingLabelAlignment: FloatingLabelAlignment.center,
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      labelText: "Confirme seu Email:",
                      labelStyle: TextStyle(
                          letterSpacing: 2,
                          fontSize: 24,
                          color: Colors.white.withAlpha(210))),
                  validator: (String? value) {
                    if (value!.isEmpty) {
                      return ("Por favor insira o mesmo Email!");
                    }
                    if (_emailRegister.text != _confirmEmail.text) {
                      return ("Os Emails não são iguais!");
                    }
                    return null;
                  },
                  onSaved: (String? email) {
                    _email = email;
                  },
                ),
                TextFormField(
                  style: TextStyle(color: Colors.white, fontSize: 18),
                  textInputAction: TextInputAction.next,
                  controller: _birthdayController,
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.datetime,
                  decoration: InputDecoration(
                      fillColor: Colors.black.withAlpha(100),
                      filled: true,
                      floatingLabelAlignment: FloatingLabelAlignment.center,
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      labelText: "Data de nascimento:",
                      labelStyle: TextStyle(
                          letterSpacing: 2,
                          fontSize: 24,
                          color: Colors.white.withAlpha(210))),
                  validator: (String? value) {
                    if (value!.isEmpty) {
                      return ("Por favor insira sua data de nascimento!");
                    }
                    if (value.length < 10 || value.length >= 11) {
                      return ("Por favor insira uma data válida!");
                    }
                    return null;
                  },
                  onSaved: (String? birthday) {
                    _birthday = birthday;
                  },
                ),
                TextFormField(
                  style: TextStyle(color: Colors.white, fontSize: 18),
                  textInputAction: TextInputAction.next,
                  controller: _password,
                  textAlign: TextAlign.center,
                  maxLength: 8,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      fillColor: Colors.black.withAlpha(100),
                      filled: true,
                      floatingLabelAlignment: FloatingLabelAlignment.center,
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      labelText: "Senha:",
                      labelStyle: TextStyle(
                          letterSpacing: 2,
                          fontSize: 24,
                          color: Colors.white.withAlpha(210))),
                  obscureText: true,
                  validator: (String? value) {
                    if (value!.isEmpty) {
                      return ("Por favor crie uma Senha!");
                    }
                    return null;
                  },
                ),
                TextFormField(
                  style: TextStyle(color: Colors.white, fontSize: 18),
                  textInputAction: TextInputAction.done,
                  controller: _confirmpassword,
                  textAlign: TextAlign.center,
                  maxLength: 8,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      fillColor: Colors.black.withAlpha(100),
                      filled: true,
                      floatingLabelAlignment: FloatingLabelAlignment.center,
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      labelText: "Confirme a senha:",
                      labelStyle: TextStyle(
                          letterSpacing: 2,
                          fontSize: 24,
                          color: Colors.white.withAlpha(210))),
                  obscureText: true,
                  validator: (String? value) {
                    if (value!.isEmpty) {
                      return ("Por favor confirme a Senha!");
                    }
                    if (_password.text != _confirmpassword.text) {
                      return ("Por favor insira uma Senha válida!");
                    }
                    return null;
                  },
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.black,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                  child: Text(
                    "Registre-se",
                    style: TextStyle(fontSize: 19),
                  ),
                  onPressed: () {
                    if (_formkey.currentState!.validate()) {
                      BaseData()
                          .save(Register(
                              name: _nameController.text,
                              email: _confirmEmail.text,
                              password: _confirmpassword.text,
                              birthday: int.parse(_birthdayController.text)))
                          .then((value) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Registrado()));
                      });
                    } else {
                      final snackBar = SnackBar(
                        content: Text(
                          "Por favor preencha corretamente as especificações!",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        duration: Duration(seconds: 2),
                        backgroundColor: Colors.black,
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    }
                  },
                ),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
