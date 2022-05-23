import 'package:flutter/material.dart';
import 'package:home_page/Drawer%20Items/Account.dart';
import 'package:home_page/Home/Favoritos.dart';
import 'package:home_page/Login/main.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:url_launcher/url_launcher.dart';

import 'search.dart';

class ButtonsPage extends StatefulWidget {
  const ButtonsPage({Key? key}) : super(key: key);

  @override
  State<ButtonsPage> createState() => _homeButtonsPage();
}

class _homeButtonsPage extends State<ButtonsPage> {
  AudioPlayer audioPlayer = AudioPlayer();
  bool primeriaExecucao = true;

  double volume = 50;

  _executar() async {
    audioPlayer.setVolume(volume);

    String url =
        "https://www.soundhelix.com/examples/mp3/SoundHelix-Song-8.mp3";

    int resultado = await audioPlayer.play(url);
    if (resultado == 1) {}
  }

  _pausar() async {
    int resultado = await audioPlayer.pause();
    if (resultado == 1) {}
  }

  _parar() async {
    int resultado = await audioPlayer.stop();
    if (resultado == 1) {}
  }

  String imagePlay = 'imagens/Play.png';
  String imagePause = 'imagens/Pause.png';
  String imageStop = 'imagens/Stop.png';
  String label = "Volume";
  String urlPlay = "imagens/imageplay.png";

  int _screenSelect = 0;
static const List<Widget> _screensOptions =[
  ButtonsPage(),
  Search(),
  checkBox(),
  Account()
];
  void _onScreenTapped(int index) {
    setState(() {
      _screenSelect = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Color(0xff2196f3),
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.black),
              accountName: Text(
                "Ragnar Lothbrok",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff2196f3)),
              ),
              accountEmail: null,
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://tm.ibxk.com.br/2021/10/20/20104736219113.jpg"),
                backgroundColor: Colors.transparent,
              ),
              currentAccountPictureSize: const Size.square(100),
              otherAccountsPicturesSize: const Size.square(25),
              otherAccountsPictures: [
                GestureDetector(
                    child: Icon(Icons.facebook, color: Color(0xff2196f3)),
                    onTap: () => launchUrl(Uri.parse("https://facebook.com/"))),
                GestureDetector(
                    child:
                        Icon(Icons.alternate_email, color: Color(0xff2196f3)),
                    onTap: () => launchUrl(Uri.parse("https://gmail.com/"))),
                GestureDetector(
                    child: Icon(Icons.apple, color: Color(0xff2196f3)),
                    onTap: () => launchUrl(Uri.parse("https://apple.com/")))
              ],
            ),
            SizedBox(
              height: 15,
            ),
            ListTile(
              leading: Icon(Icons.account_circle, color: Colors.black87),
              title: Text(
                "Conta",
                style: TextStyle(fontSize: 19, color: Colors.black87),
              ),
              onTap: () {
                setState(() {
                  Navigator.of(context).pushNamed("/Account");
                });
              },
            ),
            ListTile(
              leading: Icon(Icons.playlist_play, color: Colors.black87),
              title: Text(
                "Playlists Salvas",
                style: TextStyle(fontSize: 19, color: Colors.black87),
              ),
              onTap: () {
                setState(() {
                  Navigator.of(context).pushNamed("/downloads");
                });
              },
            ),
            ListTile(
              leading: Icon(Icons.favorite, color: Colors.black87),
              title: Text("Gêneros favoritos",
                  style: TextStyle(fontSize: 19, color: Colors.black87)),
              onTap: () {
                setState(() {
                  Navigator.of(context).pushNamed("/notification");
                });
              },
            ),
            ListTile(
              leading: Icon(Icons.settings, color: Colors.black87),
              title: Text(
                "Configurações",
                style: TextStyle(fontSize: 19, color: Colors.black87),
              ),
              onTap: () {
                setState(() {
                  Navigator.of(context).pushNamed("/Settings");
                });
              },
            ),
            ListTile(
              leading: Icon(Icons.help, color: Colors.black87),
              title: Text(
                "Suporte",
                style: TextStyle(fontSize: 19, color: Colors.black87),
              ),
              onTap: () {
                setState(() {
                  Navigator.of(context).pushNamed("/help");
                });
              },
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app, color: Colors.black87),
              title: Text(
                "Sair",
                style: TextStyle(fontSize: 19, color: Colors.black87),
              ),
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
                          ],
                        ));
              },
            ),
          ],
        ),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            color: Colors.black,
          ),
          SingleChildScrollView(
            child: Container(
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 30,
                  ),

                  ///TODO Animar a logo
                  AnimatedContainer(
                    duration: Duration(seconds: 3),
                    width: 250,
                    height: 250,
                    curve: Curves.bounceOut,
                    child: Image.asset(
                      logo,
                      fit: BoxFit.contain,
                      color: Color(0xff2196f3),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                child: Padding(
                                  padding: EdgeInsets.all(4),
                                  child: GestureDetector(
                                    child: Icon(
                                      Icons.skip_previous,
                                      size: 50,
                                      color: Colors.white,
                                    ),
                                    onTap: () {
                                      _pausar();
                                    },
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(4),
                                child: GestureDetector(
                                  child: Icon(
                                    Icons.play_arrow,
                                    size: 50,
                                    color: Colors.white,
                                  ),
                                  onTap: () {
                                    _executar();
                                  },
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(4),
                                child: GestureDetector(
                                  child: Icon(
                                    Icons.skip_next,
                                    size: 50,
                                    color: Colors.white,
                                  ),
                                  onTap: () {
                                    _parar();
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                        buildProgressBar(),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  ElevatedButton(
                      style: ButtonStyle(
                          shadowColor:
                              MaterialStateProperty.all(Color(0xff2196f3)),
                          backgroundColor:
                              MaterialStateProperty.all(Color(0xff2196f3)),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30)))),
                      onPressed: () {
                        Navigator.of(context).pushNamed("/checkBox");
                      },
                      child: Text(
                        "Favoritos",
                        style: TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.normal,
                            color: Colors.black87),
                      )),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  buildProgressBar() {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(left: 10, right: 10, top: 35),
          child: LinearProgressIndicator(
            color: Colors.white,
            value: 0,
          ),
        ),
        Row(
          children: [
            Text(
              '0:00',
              style: TextStyle(color: Colors.white),
            ),
            Expanded(
              child: Container(),
            ),
            Text(
              '3:00',
              style: TextStyle(color: Colors.white),
            )
          ],
        )
      ],
    );
  }
}
