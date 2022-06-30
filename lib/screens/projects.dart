import 'package:flutter/material.dart';
import 'package:home_page/custom/custom_list_tile.dart';

class Projects extends StatelessWidget {
  const Projects({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Projetos"),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              CustomListTile(
                label: "AutoPel",
                onTap: () {
                  Navigator.of(context)
                      .pushNamedAndRemoveUntil("/Expenses", (route) => false);
                },
              ),
              CustomListTile(
                label: "AutoPel",
                onTap: () {
                  Navigator.of(context)
                      .pushNamedAndRemoveUntil("/Expenses", (route) => false);
                },
              ),
              CustomListTile(
                label: "AutoPel",
                onTap: () {
                  Navigator.of(context)
                      .pushNamedAndRemoveUntil("/Expenses", (route) => false);
                },
              ),
              CustomListTile(
                label: "AutoPel",
                onTap: () {
                  Navigator.of(context)
                      .pushNamedAndRemoveUntil("/Expenses", (route) => false);
                },
              ),
              CustomListTile(
                label: "AutoPel",
                onTap: () {
                  Navigator.of(context)
                      .pushNamedAndRemoveUntil("/Expenses", (route) => false);
                },
              ),
              CustomListTile(
                label: "AutoPel",
                onTap: () {
                  Navigator.of(context)
                      .pushNamedAndRemoveUntil("/Expenses", (route) => false);
                },
              ),
              CustomListTile(
                label: "AutoPel",
                onTap: () {
                  Navigator.of(context)
                      .pushNamedAndRemoveUntil("/Expenses", (route) => false);
                },
              ),
              CustomListTile(
                label: "AutoPel",
                onTap: () {
                  Navigator.of(context)
                      .pushNamedAndRemoveUntil("/Expenses", (route) => false);
                },
              ),
              CustomListTile(
                label: "AutoPel",
                onTap: () {
                  Navigator.of(context)
                      .pushNamedAndRemoveUntil("/Expenses", (route) => false);
                },
              ),
              CustomListTile(
                label: "AutoPel",
                onTap: () {
                  Navigator.of(context)
                      .pushNamedAndRemoveUntil("/Expenses", (route) => false);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
