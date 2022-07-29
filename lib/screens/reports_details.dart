import 'package:flutter/material.dart';
import 'package:home_page/api/shipment.dart';

class ReportsDetails extends StatefulWidget {
  final Shipment? shipment;
  const ReportsDetails({Key? key, this.shipment}) : super(key: key);

  @override
  State<ReportsDetails> createState() => _ReportsDetailsState();
}

class _ReportsDetailsState extends State<ReportsDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detalhes do relatório"),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [],
          ),
        ),
      ),
    );
  }
}
