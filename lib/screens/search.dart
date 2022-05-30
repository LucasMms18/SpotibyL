import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

String urlSearch =
    "https://i.pinimg.com/736x/06/77/a7/0677a7a87420d91536f200d921694fb8.jpg";
TextEditingController _search = TextEditingController();

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          title: Text("Buscar",
              style: TextStyle(
                  color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold)),
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent),
      body: Stack(
        children: [
          TextField(
            textInputAction: TextInputAction.done,
            style: TextStyle(color: Colors.black, fontSize: 17),
            controller: _search,
            textAlign: TextAlign.start,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
                fillColor: Colors.transparent,
                filled: true,
                floatingLabelAlignment: FloatingLabelAlignment.start,
                labelText: "Músicas, artistas ou albúms",
                labelStyle:
                    TextStyle(fontSize: 20, color: Colors.black.withAlpha(200))),
          )
        ],
      ),
    );
  }
}
