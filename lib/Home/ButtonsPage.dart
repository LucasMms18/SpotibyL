import 'package:flutter/material.dart';
import 'package:home_page/Login/main.dart';
import 'package:audioplayers/audioplayers.dart';

class buttonsPage extends StatefulWidget {
  const buttonsPage({Key? key}) : super(key: key);

  @override
  State<buttonsPage> createState() => _homebuttonsPage();
}

bool _status = true;

class _homebuttonsPage extends State<buttonsPage> {
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

  @override
  Widget build(BuildContext context) {
    String urlImage =
        'https://i.pinimg.com/originals/dc/a0/d8/dca0d81a31b5e96aac7f7aab1ed58b94.jpg';

    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.transparent,
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.transparent),
              accountName: Text(
                "Ragnar Lothbrok",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
              accountEmail: Text(
                "ragnar.lothbrok@sparkag.com.br",
                style: TextStyle(
                  fontSize: 15,
                ),
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
              leading: Icon(Icons.account_circle, color: Colors.white),
              title: Text(
                "Conta",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              onTap: () {
                setState(() {
                  Navigator.of(context).pushNamed("/Account");
                });
              },
            ),
            ListTile(
              leading: Icon(Icons.download, color: Colors.white),
              title: Text(
                "Baixados",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              onTap: () {
                setState(() {
                  Navigator.of(context).pushNamed("/downloads");
                });
              },
            ),
            ListTile(
              leading: Icon(Icons.notifications, color: Colors.white),
              title: Text("Notificações",
                  style: TextStyle(fontSize: 20, color: Colors.white)),
              onTap: () {
                setState(() {
                  Navigator.of(context).pushNamed("/notification");
                });
              },
            ),
            ListTile(
              leading: Icon(Icons.help, color: Colors.white),
              title: Text(
                "Central de ajuda",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              onTap: () {
                setState(() {
                  Navigator.of(context).pushNamed("/help");
                });
              },
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app, color: Colors.white),
              title: Text(
                "Sair",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                          title: Text("Tem certeza?"),
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
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(urlImage),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SingleChildScrollView(
            child: Container(
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 50,
                  ),
                  AnimatedContainer(
                    duration: Duration(seconds: 3),
                    width: 250,
                    height: 250,
                    curve: Curves.bounceOut,
                    child: Image.asset(logo, fit: BoxFit.contain),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        buildProgressBar(),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.all(4),
                              child: GestureDetector(
                                child: Image.asset(
                                  imagePause,
                                  width: 50,
                                  height: 50,
                                ),
                                onTap: () {
                                  _pausar();
                                },
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(4),
                              child: GestureDetector(
                                child: Image.asset(
                                  imagePlay,
                                  width: 50,
                                  height: 50,
                                ),
                                onTap: () {
                                  _executar();
                                },
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(4),
                              child: GestureDetector(
                                child: Image.asset(
                                  imageStop,
                                  width: 50,
                                  height: 50,
                                ),
                                onTap: () {
                                  _parar();
                                },
                              ),
                            ),
                          ],
                        ),
                        Slider(
                            value: volume,
                            min: 0,
                            max: 100,
                            divisions: 100,
                            label: label,
                            onChanged: (novoVolume) {
                              setState(() {
                                volume = novoVolume;
                                label =
                                    "Volume: " + novoVolume.round().toString();
                              });
                              print("Volume selecionado: " + volume.toString());
                              audioPlayer.setVolume(novoVolume);
                            }),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                        shadowColor:
                            MaterialStateProperty.all(Colors.transparent),
                        backgroundColor: MaterialStateProperty.all(
                            Colors.black.withOpacity(0.2)),
                        elevation: MaterialStateProperty.all(5),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)))),
                    child: Text(
                      "Procurar",
                      style: TextStyle(
                          fontSize: 23, fontWeight: FontWeight.normal),
                    ),
                    onPressed: () {
                      Navigator.of(context).pushNamed("/Search");
                    },
                  ),
                  ElevatedButton(
                      style: ButtonStyle(
                          shadowColor:
                              MaterialStateProperty.all(Colors.transparent),
                          backgroundColor: MaterialStateProperty.all(
                              Colors.black.withOpacity(0.2)),
                          elevation: MaterialStateProperty.all(5),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30)))),
                      onPressed: () {
                        Navigator.of(context).pushNamed("/checkBox");
                      },
                      child: Text(
                        "Favoritos",
                        style: TextStyle(
                            fontSize: 23, fontWeight: FontWeight.normal),
                      )),
                  ElevatedButton(
                      style: ButtonStyle(
                          shadowColor:
                              MaterialStateProperty.all(Colors.transparent),
                          backgroundColor: MaterialStateProperty.all(
                              Colors.black.withOpacity(0.2)),
                          elevation: MaterialStateProperty.all(5),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadiusDirectional.circular(30)))),
                      onPressed: () {
                        Navigator.of(context).pushNamed("/switchEntry");
                      },
                      child: Text(
                        "Configurações",
                        style: TextStyle(
                            fontSize: 23, fontWeight: FontWeight.normal),
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
            value: 0,
          ),
        ),
        Row(
          children: [
            Text('0:00'),
            Expanded(
              child: Container(),
            ),
            Text('3:02')
          ],
        )
      ],
    );
  }
}
