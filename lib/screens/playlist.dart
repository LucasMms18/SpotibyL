import 'package:flutter/material.dart';

class Playlist extends StatefulWidget {
  const Playlist({Key? key}) : super(key: key);

  @override
  State<Playlist> createState() => _PlaylistState();
}

class _PlaylistState extends State<Playlist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        foregroundColor: Colors.black,
        title: Text(
          "Playlists",
          style: TextStyle(fontSize: 24, color: Colors.black),
        ),
      ),
      body: ListView.builder(
          itemCount: 100,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text("Californication"),
              subtitle: Text(
                "Red Hot Chilli Peppers",
                style: TextStyle(color: Colors.black),
              ),
              leading: Image.network(
                  "https://upload.wikimedia.org/wikipedia/pt/7/78/Red_Hot_Chili_Peppers_-_Californication.jpg"),
              trailing: Icon(Icons.play_circle, color: Colors.black),
            );
          }),
    );
  }
}
