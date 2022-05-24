import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import '../Login/logar.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
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
                      color: Colors.black,
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
                                      color: Colors.black,
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
                                    color: Colors.black,
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
                                    color: Colors.black,
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
                          shadowColor: MaterialStateProperty.all(Colors.black),
                          backgroundColor:
                              MaterialStateProperty.all(Colors.black),
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
                            color: Colors.white),
                      )),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

buildProgressBar() {
  return Column(
    children: [
      Container(
        padding: EdgeInsets.only(left: 10, right: 10, top: 35),
        child: LinearProgressIndicator(
          color: Colors.black,
          value: 0,
        ),
      ),
      Row(
        children: [
          Text(
            '0:00',
            style: TextStyle(color: Colors.black),
          ),
          Expanded(
            child: Container(),
          ),
          Text(
            '3:00',
            style: TextStyle(color: Colors.black),
          )
        ],
      )
    ],
  );
}
