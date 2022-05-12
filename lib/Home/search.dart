import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

String urlSearch =
    "https://i.pinimg.com/736x/06/77/a7/0677a7a87420d91536f200d921694fb8.jpg";
TextEditingController _Search = TextEditingController();

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(urlSearch), fit: BoxFit.cover)),
          ),
          TextField(
            textInputAction: TextInputAction.done,
            style: TextStyle(color: Colors.white, fontSize: 17),
            controller: _Search,
            textAlign: TextAlign.start,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
                fillColor: Colors.transparent,
                filled: true,
                floatingLabelAlignment: FloatingLabelAlignment.start,
                labelText: "Pesquisar",
                labelStyle: TextStyle(
                    fontSize: 20, color: Colors.white.withAlpha(140))),
          )
        ],
      ),
    );
  }
}
