import 'package:flutter/material.dart';
import 'package:home_page/custom/custom_list_tile.dart';

class TypeOfCoin extends StatefulWidget {
  const TypeOfCoin({Key? key}) : super(key: key);

  @override
  State<TypeOfCoin> createState() => _TypeOfCoinState();
}

class _TypeOfCoinState extends State<TypeOfCoin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Moeda"),
      ),
      body: Container(
        child: Column(
          children: [
            CustomListTile(
              label: "Real",
              onTap: () {
                Navigator.of(context)
                    .pushNamedAndRemoveUntil("/Expenses", (route) => false);
              },
            ),
            CustomListTile(
              label: "Dólar",
              onTap: () {
                Navigator.of(context)
                    .pushNamedAndRemoveUntil("/Expenses", (route) => false);
              },
            ),
            CustomListTile(
              label: "Euro",
              onTap: () {
                Navigator.of(context)
                    .pushNamedAndRemoveUntil("/Expenses", (route) => false);
              },
            ),
            CustomListTile(
              label: "Peso",
              onTap: () {
                Navigator.of(context)
                    .pushNamedAndRemoveUntil("/Expenses", (route) => false);
              },
            ),
          ],
        ),
      ),
    );
  }
}
