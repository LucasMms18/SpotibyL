import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:home_page/api/shipment.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

Future<List<Shipment>> getTransporter() async {
  SharedPreferences preferences = await SharedPreferences.getInstance();
  var header = {
    "x-api-key": "${preferences.getString("apiKey")}",
    "Authorization": "Bearer ${preferences.getString("token")}"
  };
  final url = "https://api.tracebox.com.br/dev/rest/shipments/transporter";
  final response = await http.get(Uri.parse(url), headers: header);
  debugPrint('Response getTaskList - ${response.body}');
  final list =
      (json.decode(utf8.decode(response.bodyBytes))['content']['shipments'] as List)
          .map((e) => Shipment.fromJson(e))
          .toList();
  return list;
}
