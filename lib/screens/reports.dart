import 'package:flutter/material.dart';
import 'package:home_page/api/get_api.dart';
import 'package:home_page/api/shipment.dart';

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
      body: FutureBuilder<List<Shipment>>(
        future: getTransporter(),
        builder: (context, snapshot) {
          print(snapshot.connectionState);
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
                child: CircularProgressIndicator(
                    color: Colors.deepOrange, backgroundColor: Colors.black));
          } else if (snapshot.connectionState == ConnectionState.done) {
            print("print lista ${snapshot.data}");
            if (snapshot.hasError) {
              print("error " + snapshot.error.toString());
              return Text('error - ${snapshot.error}');
            } else {}
          }
          return Container(
            padding: EdgeInsets.symmetric(vertical: 2),
            margin: EdgeInsets.symmetric(vertical: 2, horizontal: 10),
            child: ListView.separated(
                separatorBuilder: (BuildContext context, int index) =>
                    Divider(color: Colors.grey[500], height: 5, indent: 95),
                itemBuilder: (BuildContext, index) {
                  Shipment listShipments = snapshot.data![index];
                  return ListTile(
                    title: Text(
                      "${listShipments.destinator?.address?.fulAddress()}",
                      style: TextStyle(
                          fontSize: 13,
                          color: Colors.black,
                          fontWeight: FontWeight.w500),
                    ),
                    subtitle: Text(
                      "Cliente: ${listShipments.destinator?.fullName!}",
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.deepOrange,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    trailing: Icon(Icons.arrow_forward_ios),
                    leading: Container(
                      child: CircleAvatar(
                        backgroundColor: Colors.deepOrange,
                        radius: 30,
                        backgroundImage:
                            NetworkImage("${listShipments.destinator!.image}"),
                      ),
                    ),
                    onTap: () => Navigator.of(context).pushNamed("/ReportsDetails"),
                  );
                },
                itemCount: snapshot.data!.length),
          );
        },
      ),
    );
  }
}
