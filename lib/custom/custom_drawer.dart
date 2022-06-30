import 'package:flutter/material.dart';
import 'package:home_page/custom/custom_divider.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(12), bottomRight: Radius.circular(12))),
      child: Column(
        children: [
          DrawerHeader(
            child: CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage(
                'imagens/Music.png',
              ),
            ),
          ),
          ListTile(
            title: Text(
              'Lucas Mathias da Silva',
              style: TextStyle(
                  fontSize: 18, fontWeight: FontWeight.w700, letterSpacing: 0.7),
              textAlign: TextAlign.center,
            ),
            subtitle: Text(
              'Mobile Developer',
              style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                  color: Theme.of(context).colorScheme.primary),
              textAlign: TextAlign.center,
            ),
          ),
          CustomDivider(),
          ListTile(
            title: Text('Preferências'),
            trailing: Icon(Icons.settings),
            onTap: () => Navigator.of(context).pushNamed("/Settings"),
          ),
        ],
      ),
    );
  }
}
