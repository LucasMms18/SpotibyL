import 'package:flutter/material.dart';
import 'package:home_page/custom/custom_card_projects.dart';

class Reports extends StatefulWidget {
  const Reports({Key? key}) : super(key: key);

  @override
  State<Reports> createState() => _ReportsState();
}

class _ReportsState extends State<Reports> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Relatórios"), centerTitle: true),
      body: Container(
        child: Column(
          children: [
            CustomCardProjects(),
            CustomCardProjects(),
            CustomCardProjects(),
            CustomCardProjects()
          ],
        ),
      ),
    );
  }
}
