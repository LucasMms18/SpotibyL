import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class SpeedFloat extends StatelessWidget {
  const SpeedFloat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SpeedDial(
      spaceBetweenChildren: 10,
      animatedIcon: AnimatedIcons.menu_close,
      animatedIconTheme: const IconThemeData(size: 22),
      backgroundColor: Colors.blue,
      visible: true,
      curve: Curves.bounceIn,
      children: [
        SpeedDialChild(
          label: "QR Code",
          child: const Icon(Icons.qr_code),
          backgroundColor: Colors.blue,
          onTap: () {},
        ),
        SpeedDialChild(
          label: "Código de barras",
          child: const Icon(Icons.photo_camera),
          backgroundColor: Colors.blue,
          onTap: () {},
        )
      ],
    );
  }
}
